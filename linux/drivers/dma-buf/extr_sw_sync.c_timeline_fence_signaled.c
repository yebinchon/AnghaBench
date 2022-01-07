
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sync_timeline {int value; } ;
struct dma_fence {int ops; int seqno; } ;


 int __dma_fence_is_later (int ,int ,int ) ;
 struct sync_timeline* dma_fence_parent (struct dma_fence*) ;

__attribute__((used)) static bool timeline_fence_signaled(struct dma_fence *fence)
{
 struct sync_timeline *parent = dma_fence_parent(fence);

 return !__dma_fence_is_later(fence->seqno, parent->value, fence->ops);
}
