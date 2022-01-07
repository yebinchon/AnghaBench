
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_2__ {int dev; } ;
struct mxs_dma_engine {TYPE_1__ dma_device; } ;
struct dma_async_tx_descriptor {int dummy; } ;
struct mxs_dma_chan {scalar_t__ status; size_t desc_count; struct dma_async_tx_descriptor desc; scalar_t__ ccw_phys; struct mxs_dma_ccw* ccw; int flags; struct mxs_dma_engine* mxs_dma; } ;
struct mxs_dma_ccw {size_t bufaddr; size_t xfer_bytes; int bits; scalar_t__ next; } ;
struct dma_chan {int dummy; } ;
typedef enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
typedef size_t dma_addr_t ;


 int BF_CCW (int ,int ) ;
 int CCW_CHAIN ;
 int CCW_DEC_SEM ;
 int CCW_HALT_ON_TERM ;
 int CCW_IRQ ;
 int CCW_TERM_FLUSH ;
 int COMMAND ;
 int DMA_DEV_TO_MEM ;
 scalar_t__ DMA_ERROR ;
 scalar_t__ DMA_IN_PROGRESS ;
 size_t MAX_XFER_BYTES ;
 int MXS_DMA_CMD_READ ;
 int MXS_DMA_CMD_WRITE ;
 int MXS_DMA_SG_LOOP ;
 int MXS_DMA_USE_SEMAPHORE ;
 size_t NUM_CCW ;
 int dev_err (int ,char*,size_t,size_t) ;
 struct mxs_dma_chan* to_mxs_dma_chan (struct dma_chan*) ;

__attribute__((used)) static struct dma_async_tx_descriptor *mxs_dma_prep_dma_cyclic(
  struct dma_chan *chan, dma_addr_t dma_addr, size_t buf_len,
  size_t period_len, enum dma_transfer_direction direction,
  unsigned long flags)
{
 struct mxs_dma_chan *mxs_chan = to_mxs_dma_chan(chan);
 struct mxs_dma_engine *mxs_dma = mxs_chan->mxs_dma;
 u32 num_periods = buf_len / period_len;
 u32 i = 0, buf = 0;

 if (mxs_chan->status == DMA_IN_PROGRESS)
  return ((void*)0);

 mxs_chan->status = DMA_IN_PROGRESS;
 mxs_chan->flags |= MXS_DMA_SG_LOOP;
 mxs_chan->flags |= MXS_DMA_USE_SEMAPHORE;

 if (num_periods > NUM_CCW) {
  dev_err(mxs_dma->dma_device.dev,
    "maximum number of sg exceeded: %d > %d\n",
    num_periods, NUM_CCW);
  goto err_out;
 }

 if (period_len > MAX_XFER_BYTES) {
  dev_err(mxs_dma->dma_device.dev,
    "maximum period size exceeded: %zu > %d\n",
    period_len, MAX_XFER_BYTES);
  goto err_out;
 }

 while (buf < buf_len) {
  struct mxs_dma_ccw *ccw = &mxs_chan->ccw[i];

  if (i + 1 == num_periods)
   ccw->next = mxs_chan->ccw_phys;
  else
   ccw->next = mxs_chan->ccw_phys + sizeof(*ccw) * (i + 1);

  ccw->bufaddr = dma_addr;
  ccw->xfer_bytes = period_len;

  ccw->bits = 0;
  ccw->bits |= CCW_CHAIN;
  ccw->bits |= CCW_IRQ;
  ccw->bits |= CCW_HALT_ON_TERM;
  ccw->bits |= CCW_TERM_FLUSH;
  ccw->bits |= CCW_DEC_SEM;
  ccw->bits |= BF_CCW(direction == DMA_DEV_TO_MEM ?
    MXS_DMA_CMD_WRITE : MXS_DMA_CMD_READ, COMMAND);

  dma_addr += period_len;
  buf += period_len;

  i++;
 }
 mxs_chan->desc_count = i;

 return &mxs_chan->desc;

err_out:
 mxs_chan->status = DMA_ERROR;
 return ((void*)0);
}
