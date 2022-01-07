
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_desc {size_t es; unsigned int sglen; TYPE_1__* sg; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_2__ {scalar_t__ addr; } ;


 size_t* es_bytes ;
 size_t omap_dma_sg_size (TYPE_1__*) ;

__attribute__((used)) static size_t omap_dma_desc_size_pos(struct omap_desc *d, dma_addr_t addr)
{
 unsigned i;
 size_t size, es_size = es_bytes[d->es];

 for (size = i = 0; i < d->sglen; i++) {
  size_t this_size = omap_dma_sg_size(&d->sg[i]) * es_size;

  if (size)
   size += this_size;
  else if (addr >= d->sg[i].addr &&
    addr < d->sg[i].addr + this_size)
   size += d->sg[i].addr + this_size - addr;
 }
 return size;
}
