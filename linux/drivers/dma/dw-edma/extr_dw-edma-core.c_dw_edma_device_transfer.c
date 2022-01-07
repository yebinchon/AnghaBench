
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct scatterlist {int dummy; } ;
struct TYPE_9__ {int cnt; void* paddr; scalar_t__ len; } ;
struct TYPE_7__ {int len; struct scatterlist* sgl; } ;
struct TYPE_10__ {TYPE_4__ cyclic; TYPE_2__ sg; } ;
struct dw_edma_transfer {int direction; int flags; scalar_t__ cyclic; TYPE_5__ xfer; int dchan; } ;
struct dw_edma_desc {int vd; int alloc_sz; } ;
struct TYPE_8__ {int sz; } ;
struct dw_edma_chunk {scalar_t__ bursts_alloc; TYPE_3__ ll_region; } ;
struct TYPE_6__ {void* dst_addr; void* src_addr; } ;
struct dw_edma_chan {scalar_t__ dir; scalar_t__ ll_max; int vc; TYPE_1__ config; int configured; } ;
struct dw_edma_burst {void* sar; void* dar; scalar_t__ sz; } ;
struct dma_async_tx_descriptor {int dummy; } ;
typedef void* phys_addr_t ;
typedef enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;


 int DMA_DEV_TO_MEM ;
 int DMA_MEM_TO_DEV ;
 scalar_t__ EDMA_DIR_READ ;
 scalar_t__ EDMA_DIR_WRITE ;
 struct dw_edma_chan* dchan2dw_edma_chan (int ) ;
 struct dw_edma_burst* dw_edma_alloc_burst (struct dw_edma_chunk*) ;
 struct dw_edma_chunk* dw_edma_alloc_chunk (struct dw_edma_desc*) ;
 struct dw_edma_desc* dw_edma_alloc_desc (struct dw_edma_chan*) ;
 int dw_edma_free_desc (struct dw_edma_desc*) ;
 void* sg_dma_address (struct scatterlist*) ;
 scalar_t__ sg_dma_len (struct scatterlist*) ;
 struct scatterlist* sg_next (struct scatterlist*) ;
 scalar_t__ unlikely (int) ;
 struct dma_async_tx_descriptor* vchan_tx_prep (int *,int *,int ) ;

__attribute__((used)) static struct dma_async_tx_descriptor *
dw_edma_device_transfer(struct dw_edma_transfer *xfer)
{
 struct dw_edma_chan *chan = dchan2dw_edma_chan(xfer->dchan);
 enum dma_transfer_direction direction = xfer->direction;
 phys_addr_t src_addr, dst_addr;
 struct scatterlist *sg = ((void*)0);
 struct dw_edma_chunk *chunk;
 struct dw_edma_burst *burst;
 struct dw_edma_desc *desc;
 u32 cnt;
 int i;

 if ((direction == DMA_MEM_TO_DEV && chan->dir == EDMA_DIR_WRITE) ||
     (direction == DMA_DEV_TO_MEM && chan->dir == EDMA_DIR_READ))
  return ((void*)0);

 if (xfer->cyclic) {
  if (!xfer->xfer.cyclic.len || !xfer->xfer.cyclic.cnt)
   return ((void*)0);
 } else {
  if (xfer->xfer.sg.len < 1)
   return ((void*)0);
 }

 if (!chan->configured)
  return ((void*)0);

 desc = dw_edma_alloc_desc(chan);
 if (unlikely(!desc))
  goto err_alloc;

 chunk = dw_edma_alloc_chunk(desc);
 if (unlikely(!chunk))
  goto err_alloc;

 src_addr = chan->config.src_addr;
 dst_addr = chan->config.dst_addr;

 if (xfer->cyclic) {
  cnt = xfer->xfer.cyclic.cnt;
 } else {
  cnt = xfer->xfer.sg.len;
  sg = xfer->xfer.sg.sgl;
 }

 for (i = 0; i < cnt; i++) {
  if (!xfer->cyclic && !sg)
   break;

  if (chunk->bursts_alloc == chan->ll_max) {
   chunk = dw_edma_alloc_chunk(desc);
   if (unlikely(!chunk))
    goto err_alloc;
  }

  burst = dw_edma_alloc_burst(chunk);
  if (unlikely(!burst))
   goto err_alloc;

  if (xfer->cyclic)
   burst->sz = xfer->xfer.cyclic.len;
  else
   burst->sz = sg_dma_len(sg);

  chunk->ll_region.sz += burst->sz;
  desc->alloc_sz += burst->sz;

  if (direction == DMA_DEV_TO_MEM) {
   burst->sar = src_addr;
   if (xfer->cyclic) {
    burst->dar = xfer->xfer.cyclic.paddr;
   } else {
    burst->dar = sg_dma_address(sg);







    src_addr += sg_dma_len(sg);
   }
  } else {
   burst->dar = dst_addr;
   if (xfer->cyclic) {
    burst->sar = xfer->xfer.cyclic.paddr;
   } else {
    burst->sar = sg_dma_address(sg);







    dst_addr += sg_dma_len(sg);
   }
  }

  if (!xfer->cyclic)
   sg = sg_next(sg);
 }

 return vchan_tx_prep(&chan->vc, &desc->vd, xfer->flags);

err_alloc:
 if (desc)
  dw_edma_free_desc(desc);

 return ((void*)0);
}
