
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct etnaviv_fence {int dummy; } ;
struct dma_fence {int dummy; } ;
struct TYPE_2__ {int rcu; } ;


 TYPE_1__ base ;
 int kfree_rcu (struct etnaviv_fence*,int ) ;
 struct etnaviv_fence* to_etnaviv_fence (struct dma_fence*) ;

__attribute__((used)) static void etnaviv_fence_release(struct dma_fence *fence)
{
 struct etnaviv_fence *f = to_etnaviv_fence(fence);

 kfree_rcu(f, base.rcu);
}
