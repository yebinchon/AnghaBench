
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct d40_phy_lli {int dummy; } ;
struct d40_log_lli {int dummy; } ;
struct TYPE_8__ {int size; scalar_t__ dma_addr; int * base; void* pre_alloc_lli; } ;
struct TYPE_6__ {void* src; scalar_t__ dst; } ;
struct TYPE_5__ {void* src; scalar_t__ dst; } ;
struct d40_desc {TYPE_4__ lli_pool; TYPE_2__ lli_phy; TYPE_1__ lli_log; } ;
struct d40_chan {TYPE_3__* base; } ;
struct TYPE_7__ {int dev; } ;


 int DMA_TO_DEVICE ;
 int ENOMEM ;
 int GFP_NOWAIT ;
 void* PTR_ALIGN (void*,int) ;
 int chan_is_logical (struct d40_chan*) ;
 scalar_t__ dma_map_single (int ,void*,int,int ) ;
 scalar_t__ dma_mapping_error (int ,scalar_t__) ;
 int kfree (int *) ;
 void* kmalloc (int,int ) ;

__attribute__((used)) static int d40_pool_lli_alloc(struct d40_chan *d40c, struct d40_desc *d40d,
         int lli_len)
{
 bool is_log = chan_is_logical(d40c);
 u32 align;
 void *base;

 if (is_log)
  align = sizeof(struct d40_log_lli);
 else
  align = sizeof(struct d40_phy_lli);

 if (lli_len == 1) {
  base = d40d->lli_pool.pre_alloc_lli;
  d40d->lli_pool.size = sizeof(d40d->lli_pool.pre_alloc_lli);
  d40d->lli_pool.base = ((void*)0);
 } else {
  d40d->lli_pool.size = lli_len * 2 * align;

  base = kmalloc(d40d->lli_pool.size + align, GFP_NOWAIT);
  d40d->lli_pool.base = base;

  if (d40d->lli_pool.base == ((void*)0))
   return -ENOMEM;
 }

 if (is_log) {
  d40d->lli_log.src = PTR_ALIGN(base, align);
  d40d->lli_log.dst = d40d->lli_log.src + lli_len;

  d40d->lli_pool.dma_addr = 0;
 } else {
  d40d->lli_phy.src = PTR_ALIGN(base, align);
  d40d->lli_phy.dst = d40d->lli_phy.src + lli_len;

  d40d->lli_pool.dma_addr = dma_map_single(d40c->base->dev,
        d40d->lli_phy.src,
        d40d->lli_pool.size,
        DMA_TO_DEVICE);

  if (dma_mapping_error(d40c->base->dev,
          d40d->lli_pool.dma_addr)) {
   kfree(d40d->lli_pool.base);
   d40d->lli_pool.base = ((void*)0);
   d40d->lli_pool.dma_addr = 0;
   return -ENOMEM;
  }
 }

 return 0;
}
