SELECT
   round(buffers_checkpoint/buffers_clean,2) AS checkpoint_spike,
   ROUND(100.0*buffers_checkpoint/(buffers_checkpoint + buffers_clean + buffers_backend),2) AS checkpoint_pct,
   ROUND(100.0*buffers_clean/(buffers_checkpoint + buffers_clean + buffers_backend),2) AS bgwriter_pct,
   ROUND(100.0*buffers_backend/(buffers_checkpoint + buffers_clean + buffers_backend),2) AS backend_pct
FROM
   pg_stat_bgwriter
;
