
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_fence {int dummy; } ;


 int kfree_rcu (struct dma_fence*,int ) ;
 int rcu ;

void dma_fence_free(struct dma_fence *fence)
{
 kfree_rcu(fence, rcu);
}
