
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct moxart_desc {unsigned int sglen; TYPE_1__* sg; } ;
struct TYPE_2__ {scalar_t__ len; } ;



__attribute__((used)) static size_t moxart_dma_desc_size(struct moxart_desc *d,
       unsigned int completed_sgs)
{
 unsigned int i;
 size_t size;

 for (size = i = completed_sgs; i < d->sglen; i++)
  size += d->sg[i].len;

 return size;
}
