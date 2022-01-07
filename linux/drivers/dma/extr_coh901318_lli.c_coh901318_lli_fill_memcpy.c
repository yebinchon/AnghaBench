
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct coh901318_pool {int dummy; } ;
struct coh901318_lli {int src_addr; int dst_addr; int control; scalar_t__ link_addr; } ;
typedef int dma_addr_t ;


 int MAX_DMA_PACKET_SIZE ;
 struct coh901318_lli* coh901318_lli_next (struct coh901318_lli*) ;

int
coh901318_lli_fill_memcpy(struct coh901318_pool *pool,
     struct coh901318_lli *lli,
     dma_addr_t source, unsigned int size,
     dma_addr_t destination, u32 ctrl_chained,
     u32 ctrl_eom)
{
 int s = size;
 dma_addr_t src = source;
 dma_addr_t dst = destination;

 lli->src_addr = src;
 lli->dst_addr = dst;

 while (lli->link_addr) {
  lli->control = ctrl_chained | MAX_DMA_PACKET_SIZE;
  lli->src_addr = src;
  lli->dst_addr = dst;

  s -= MAX_DMA_PACKET_SIZE;
  lli = coh901318_lli_next(lli);

  src += MAX_DMA_PACKET_SIZE;
  dst += MAX_DMA_PACKET_SIZE;
 }

 lli->control = ctrl_eom | s;
 lli->src_addr = src;
 lli->dst_addr = dst;

 return 0;
}
