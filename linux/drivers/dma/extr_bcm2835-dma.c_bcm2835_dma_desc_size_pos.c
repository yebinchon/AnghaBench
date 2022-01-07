
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bcm2835_dma_cb {size_t length; scalar_t__ dst; scalar_t__ src; } ;
struct bcm2835_desc {unsigned int frames; scalar_t__ dir; TYPE_1__* cb_list; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_2__ {struct bcm2835_dma_cb* cb; } ;


 scalar_t__ DMA_DEV_TO_MEM ;

__attribute__((used)) static size_t bcm2835_dma_desc_size_pos(struct bcm2835_desc *d, dma_addr_t addr)
{
 unsigned int i;
 size_t size;

 for (size = i = 0; i < d->frames; i++) {
  struct bcm2835_dma_cb *control_block = d->cb_list[i].cb;
  size_t this_size = control_block->length;
  dma_addr_t dma;

  if (d->dir == DMA_DEV_TO_MEM)
   dma = control_block->dst;
  else
   dma = control_block->src;

  if (size)
   size += this_size;
  else if (addr >= dma && addr < dma + this_size)
   size += dma + this_size - addr;
 }

 return size;
}
