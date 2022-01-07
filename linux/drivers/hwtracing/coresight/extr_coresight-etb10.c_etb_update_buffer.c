
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct perf_output_handle {unsigned long size; unsigned long head; } ;
struct etb_drvdata {int buffer_depth; int spinlock; scalar_t__ base; } ;
struct cs_buffers {int cur; unsigned long offset; int nr_pages; scalar_t__ snapshot; int ** data_pages; } ;
struct TYPE_2__ {int parent; } ;
struct coresight_device {TYPE_1__ dev; int refcnt; } ;


 unsigned long CIRC_CNT (int,int,int) ;
 int CORESIGHT_BARRIER_PKT_SIZE ;
 int CS_LOCK (scalar_t__) ;
 int CS_UNLOCK (scalar_t__) ;
 int ETB_FRAME_SIZE_WORDS ;
 scalar_t__ ETB_RAM_READ_DATA_REG ;
 scalar_t__ ETB_RAM_READ_POINTER ;
 scalar_t__ ETB_RAM_WRITE_POINTER ;
 int ETB_STATUS_RAM_FULL ;
 scalar_t__ ETB_STATUS_REG ;
 unsigned long PAGE_SIZE ;
 int PERF_AUX_FLAG_TRUNCATED ;
 int __etb_disable_hw (struct etb_drvdata*) ;
 int __etb_enable_hw (struct etb_drvdata*) ;
 int atomic_read (int ) ;
 int* barrier_pkt ;
 int dev_err (TYPE_1__*,char*,unsigned long) ;
 struct etb_drvdata* dev_get_drvdata (int ) ;
 int perf_aux_output_flag (struct perf_output_handle*,int ) ;
 int readl_relaxed (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static unsigned long etb_update_buffer(struct coresight_device *csdev,
         struct perf_output_handle *handle,
         void *sink_config)
{
 bool lost = 0;
 int i, cur;
 u8 *buf_ptr;
 const u32 *barrier;
 u32 read_ptr, write_ptr, capacity;
 u32 status, read_data;
 unsigned long offset, to_read = 0, flags;
 struct cs_buffers *buf = sink_config;
 struct etb_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);

 if (!buf)
  return 0;

 capacity = drvdata->buffer_depth * ETB_FRAME_SIZE_WORDS;

 spin_lock_irqsave(&drvdata->spinlock, flags);


 if (atomic_read(csdev->refcnt) != 1)
  goto out;

 __etb_disable_hw(drvdata);
 CS_UNLOCK(drvdata->base);


 read_ptr = readl_relaxed(drvdata->base + ETB_RAM_READ_POINTER);
 write_ptr = readl_relaxed(drvdata->base + ETB_RAM_WRITE_POINTER);






 if (write_ptr % ETB_FRAME_SIZE_WORDS) {
  dev_err(&csdev->dev,
   "write_ptr: %lu not aligned to formatter frame size\n",
   (unsigned long)write_ptr);

  write_ptr &= ~(ETB_FRAME_SIZE_WORDS - 1);
  lost = 1;
 }







 status = readl_relaxed(drvdata->base + ETB_STATUS_REG);
 if (status & ETB_STATUS_RAM_FULL) {
  lost = 1;
  to_read = capacity;
  read_ptr = write_ptr;
 } else {
  to_read = CIRC_CNT(write_ptr, read_ptr, drvdata->buffer_depth);
  to_read *= ETB_FRAME_SIZE_WORDS;
 }
 if (!buf->snapshot && to_read > handle->size) {
  u32 mask = ~(ETB_FRAME_SIZE_WORDS - 1);


  to_read = handle->size & mask;




  read_ptr = (write_ptr + drvdata->buffer_depth) -
     to_read / ETB_FRAME_SIZE_WORDS;

  if (read_ptr > (drvdata->buffer_depth - 1))
   read_ptr -= drvdata->buffer_depth;

  lost = 1;
 }







 if (!buf->snapshot && lost)
  perf_aux_output_flag(handle, PERF_AUX_FLAG_TRUNCATED);


 writel_relaxed(read_ptr, drvdata->base + ETB_RAM_READ_POINTER);

 cur = buf->cur;
 offset = buf->offset;
 barrier = barrier_pkt;

 for (i = 0; i < to_read; i += 4) {
  buf_ptr = buf->data_pages[cur] + offset;
  read_data = readl_relaxed(drvdata->base +
       ETB_RAM_READ_DATA_REG);
  if (lost && i < CORESIGHT_BARRIER_PKT_SIZE) {
   read_data = *barrier;
   barrier++;
  }

  *(u32 *)buf_ptr = read_data;
  buf_ptr += 4;

  offset += 4;
  if (offset >= PAGE_SIZE) {
   offset = 0;
   cur++;

   cur &= buf->nr_pages - 1;
  }
 }


 writel_relaxed(0x0, drvdata->base + ETB_RAM_READ_POINTER);
 writel_relaxed(0x0, drvdata->base + ETB_RAM_WRITE_POINTER);







 if (buf->snapshot)
  handle->head += to_read;

 __etb_enable_hw(drvdata);
 CS_LOCK(drvdata->base);
out:
 spin_unlock_irqrestore(&drvdata->spinlock, flags);

 return to_read;
}
