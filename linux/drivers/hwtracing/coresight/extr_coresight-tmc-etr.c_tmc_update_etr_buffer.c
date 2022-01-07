
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u32 ;
struct tmc_drvdata {int spinlock; int base; struct etr_buf* perf_buf; } ;
struct perf_output_handle {unsigned long size; unsigned long head; } ;
struct etr_perf_buffer {scalar_t__ snapshot; struct etr_buf* etr_buf; } ;
struct etr_buf {int full; unsigned long offset; unsigned long len; unsigned long size; } ;
struct TYPE_2__ {int parent; } ;
struct coresight_device {int refcnt; TYPE_1__ dev; } ;


 int CS_LOCK (int ) ;
 int CS_UNLOCK (int ) ;
 int PERF_AUX_FLAG_TRUNCATED ;
 scalar_t__ WARN_ON (int) ;
 int atomic_read (int ) ;
 struct tmc_drvdata* dev_get_drvdata (int ) ;
 int perf_aux_output_flag (struct perf_output_handle*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tmc_etr_buf_insert_barrier_packet (struct etr_buf*,unsigned long) ;
 int tmc_etr_sync_perf_buffer (struct etr_perf_buffer*,unsigned long,unsigned long) ;
 int tmc_flush_and_stop (struct tmc_drvdata*) ;
 unsigned long tmc_get_memwidth_mask (struct tmc_drvdata*) ;
 int tmc_sync_etr_buf (struct tmc_drvdata*) ;

__attribute__((used)) static unsigned long
tmc_update_etr_buffer(struct coresight_device *csdev,
        struct perf_output_handle *handle,
        void *config)
{
 bool lost = 0;
 unsigned long flags, offset, size = 0;
 struct tmc_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);
 struct etr_perf_buffer *etr_perf = config;
 struct etr_buf *etr_buf = etr_perf->etr_buf;

 spin_lock_irqsave(&drvdata->spinlock, flags);


 if (atomic_read(csdev->refcnt) != 1) {
  spin_unlock_irqrestore(&drvdata->spinlock, flags);
  goto out;
 }

 if (WARN_ON(drvdata->perf_buf != etr_buf)) {
  lost = 1;
  spin_unlock_irqrestore(&drvdata->spinlock, flags);
  goto out;
 }

 CS_UNLOCK(drvdata->base);

 tmc_flush_and_stop(drvdata);
 tmc_sync_etr_buf(drvdata);

 CS_LOCK(drvdata->base);
 spin_unlock_irqrestore(&drvdata->spinlock, flags);

 lost = etr_buf->full;
 offset = etr_buf->offset;
 size = etr_buf->len;
 if (!etr_perf->snapshot && size > handle->size) {
  u32 mask = tmc_get_memwidth_mask(drvdata);





  size = handle->size & mask;
  offset = etr_buf->offset + etr_buf->len - size;

  if (offset >= etr_buf->size)
   offset -= etr_buf->size;
  lost = 1;
 }


 if (lost)
  tmc_etr_buf_insert_barrier_packet(etr_buf, etr_buf->offset);
 tmc_etr_sync_perf_buffer(etr_perf, offset, size);







 if (etr_perf->snapshot)
  handle->head += size;
out:






 if (!etr_perf->snapshot && lost)
  perf_aux_output_flag(handle, PERF_AUX_FLAG_TRUNCATED);
 return size;
}
