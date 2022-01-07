
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm2835_desc {size_t size; } ;



__attribute__((used)) static size_t bcm2835_dma_desc_size(struct bcm2835_desc *d)
{
 return d->size;
}
