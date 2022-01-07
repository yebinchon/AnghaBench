
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct tmc_drvdata {scalar_t__ mode; unsigned long size; int spinlock; scalar_t__ base; } ;
struct perf_output_handle {unsigned long size; unsigned long head; } ;
struct cs_buffers {int cur; unsigned long offset; int** data_pages; int nr_pages; scalar_t__ snapshot; } ;
struct TYPE_2__ {int parent; } ;
struct coresight_device {int refcnt; TYPE_1__ dev; } ;


 unsigned long CIRC_CNT (int,int,unsigned long) ;
 int CS_LOCK (scalar_t__) ;
 scalar_t__ CS_MODE_PERF ;
 int CS_UNLOCK (scalar_t__) ;
 unsigned long PAGE_SIZE ;
 int PERF_AUX_FLAG_TRUNCATED ;
 scalar_t__ TMC_RRD ;
 scalar_t__ TMC_STS ;
 int TMC_STS_FULL ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int atomic_read (int ) ;
 int* barrier_pkt ;
 struct tmc_drvdata* dev_get_drvdata (int ) ;
 int perf_aux_output_flag (struct perf_output_handle*,int ) ;
 int readl_relaxed (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tmc_flush_and_stop (struct tmc_drvdata*) ;
 int tmc_get_memwidth_mask (struct tmc_drvdata*) ;
 int tmc_read_rrp (struct tmc_drvdata*) ;
 int tmc_read_rwp (struct tmc_drvdata*) ;
 int tmc_write_rrp (struct tmc_drvdata*,int) ;

__attribute__((used)) static unsigned long tmc_update_etf_buffer(struct coresight_device *csdev,
      struct perf_output_handle *handle,
      void *sink_config)
{
 bool lost = 0;
 int i, cur;
 const u32 *barrier;
 u32 *buf_ptr;
 u64 read_ptr, write_ptr;
 u32 status;
 unsigned long offset, to_read = 0, flags;
 struct cs_buffers *buf = sink_config;
 struct tmc_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);

 if (!buf)
  return 0;


 if (WARN_ON_ONCE(drvdata->mode != CS_MODE_PERF))
  return 0;

 spin_lock_irqsave(&drvdata->spinlock, flags);


 if (atomic_read(csdev->refcnt) != 1)
  goto out;

 CS_UNLOCK(drvdata->base);

 tmc_flush_and_stop(drvdata);

 read_ptr = tmc_read_rrp(drvdata);
 write_ptr = tmc_read_rwp(drvdata);





 status = readl_relaxed(drvdata->base + TMC_STS);
 if (status & TMC_STS_FULL) {
  lost = 1;
  to_read = drvdata->size;
 } else {
  to_read = CIRC_CNT(write_ptr, read_ptr, drvdata->size);
 }
 if (!buf->snapshot && to_read > handle->size) {
  u32 mask = tmc_get_memwidth_mask(drvdata);





  to_read = handle->size & mask;

  read_ptr = (write_ptr + drvdata->size) - to_read;

  if (read_ptr > (drvdata->size - 1))
   read_ptr -= drvdata->size;

  tmc_write_rrp(drvdata, read_ptr);
  lost = 1;
 }







 if (!buf->snapshot && lost)
  perf_aux_output_flag(handle, PERF_AUX_FLAG_TRUNCATED);

 cur = buf->cur;
 offset = buf->offset;
 barrier = barrier_pkt;


 for (i = 0; i < to_read; i += 4) {
  buf_ptr = buf->data_pages[cur] + offset;
  *buf_ptr = readl_relaxed(drvdata->base + TMC_RRD);

  if (lost && *barrier) {
   *buf_ptr = *barrier;
   barrier++;
  }

  offset += 4;
  if (offset >= PAGE_SIZE) {
   offset = 0;
   cur++;

   cur &= buf->nr_pages - 1;
  }
 }







 if (buf->snapshot)
  handle->head += to_read;

 CS_LOCK(drvdata->base);
out:
 spin_unlock_irqrestore(&drvdata->spinlock, flags);

 return to_read;
}
