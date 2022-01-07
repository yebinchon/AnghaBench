
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int * dst; int * src; } ;
struct TYPE_6__ {int * dst; int * src; } ;
struct TYPE_8__ {scalar_t__ size; int * base; scalar_t__ dma_addr; } ;
struct d40_desc {TYPE_3__ lli_phy; TYPE_2__ lli_log; TYPE_4__ lli_pool; } ;
struct d40_chan {TYPE_1__* base; } ;
struct TYPE_5__ {int dev; } ;


 int DMA_TO_DEVICE ;
 int dma_unmap_single (int ,scalar_t__,scalar_t__,int ) ;
 int kfree (int *) ;

__attribute__((used)) static void d40_pool_lli_free(struct d40_chan *d40c, struct d40_desc *d40d)
{
 if (d40d->lli_pool.dma_addr)
  dma_unmap_single(d40c->base->dev, d40d->lli_pool.dma_addr,
     d40d->lli_pool.size, DMA_TO_DEVICE);

 kfree(d40d->lli_pool.base);
 d40d->lli_pool.base = ((void*)0);
 d40d->lli_pool.size = 0;
 d40d->lli_log.src = ((void*)0);
 d40d->lli_log.dst = ((void*)0);
 d40d->lli_phy.src = ((void*)0);
 d40d->lli_phy.dst = ((void*)0);
}
