
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_sg {size_t en; size_t fn; } ;



__attribute__((used)) static size_t omap_dma_sg_size(struct omap_sg *sg)
{
 return sg->en * sg->fn;
}
