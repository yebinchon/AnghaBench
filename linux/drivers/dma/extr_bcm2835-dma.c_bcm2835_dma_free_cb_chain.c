
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bcm2835_desc {size_t frames; TYPE_2__* cb_list; TYPE_1__* c; } ;
struct TYPE_4__ {int paddr; int cb; } ;
struct TYPE_3__ {int cb_pool; } ;


 int dma_pool_free (int ,int ,int ) ;
 int kfree (struct bcm2835_desc*) ;

__attribute__((used)) static void bcm2835_dma_free_cb_chain(struct bcm2835_desc *desc)
{
 size_t i;

 for (i = 0; i < desc->frames; i++)
  dma_pool_free(desc->c->cb_pool, desc->cb_list[i].cb,
         desc->cb_list[i].paddr);

 kfree(desc);
}
