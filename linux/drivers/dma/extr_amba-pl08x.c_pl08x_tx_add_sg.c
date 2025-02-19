
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pl08x_txd {int dsg_list; } ;
struct pl08x_sg {unsigned int len; void* dst_addr; void* src_addr; int node; } ;
typedef enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
typedef void* dma_addr_t ;


 int DMA_MEM_TO_DEV ;
 int ENOMEM ;
 int GFP_NOWAIT ;
 struct pl08x_sg* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static int pl08x_tx_add_sg(struct pl08x_txd *txd,
      enum dma_transfer_direction direction,
      dma_addr_t slave_addr,
      dma_addr_t buf_addr,
      unsigned int len)
{
 struct pl08x_sg *dsg;

 dsg = kzalloc(sizeof(struct pl08x_sg), GFP_NOWAIT);
 if (!dsg)
  return -ENOMEM;

 list_add_tail(&dsg->node, &txd->dsg_list);

 dsg->len = len;
 if (direction == DMA_MEM_TO_DEV) {
  dsg->src_addr = buf_addr;
  dsg->dst_addr = slave_addr;
 } else {
  dsg->src_addr = slave_addr;
  dsg->dst_addr = buf_addr;
 }

 return 0;
}
