
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_desc {unsigned int sglen; size_t es; int * sg; } ;


 size_t* es_bytes ;
 scalar_t__ omap_dma_sg_size (int *) ;

__attribute__((used)) static size_t omap_dma_desc_size(struct omap_desc *d)
{
 unsigned i;
 size_t size;

 for (size = i = 0; i < d->sglen; i++)
  size += omap_dma_sg_size(&d->sg[i]);

 return size * es_bytes[d->es];
}
