
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rcu; } ;
struct lima_fence {TYPE_1__ base; } ;
struct dma_fence {int dummy; } ;


 int call_rcu (int *,int ) ;
 int lima_fence_release_rcu ;
 struct lima_fence* to_lima_fence (struct dma_fence*) ;

__attribute__((used)) static void lima_fence_release(struct dma_fence *fence)
{
 struct lima_fence *f = to_lima_fence(fence);

 call_rcu(&f->base.rcu, lima_fence_release_rcu);
}
