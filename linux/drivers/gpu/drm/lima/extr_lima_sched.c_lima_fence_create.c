
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lima_sched_pipe {int fence_seqno; int fence_context; int fence_lock; } ;
struct lima_fence {int base; struct lima_sched_pipe* pipe; } ;


 int GFP_KERNEL ;
 int dma_fence_init (int *,int *,int *,int ,int ) ;
 struct lima_fence* kmem_cache_zalloc (int ,int ) ;
 int lima_fence_ops ;
 int lima_fence_slab ;

__attribute__((used)) static struct lima_fence *lima_fence_create(struct lima_sched_pipe *pipe)
{
 struct lima_fence *fence;

 fence = kmem_cache_zalloc(lima_fence_slab, GFP_KERNEL);
 if (!fence)
  return ((void*)0);

 fence->pipe = pipe;
 dma_fence_init(&fence->base, &lima_fence_ops, &pipe->fence_lock,
         pipe->fence_context, ++pipe->fence_seqno);

 return fence;
}
