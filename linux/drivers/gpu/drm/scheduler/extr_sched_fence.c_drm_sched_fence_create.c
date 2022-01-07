
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_sched_fence {int lock; int finished; int scheduled; int sched; void* owner; } ;
struct drm_sched_entity {scalar_t__ fence_context; int fence_seq; TYPE_1__* rq; } ;
struct TYPE_2__ {int sched; } ;


 int GFP_KERNEL ;
 unsigned int atomic_inc_return (int *) ;
 int dma_fence_init (int *,int *,int *,scalar_t__,unsigned int) ;
 int drm_sched_fence_ops_finished ;
 int drm_sched_fence_ops_scheduled ;
 struct drm_sched_fence* kmem_cache_zalloc (int ,int ) ;
 int sched_fence_slab ;
 int spin_lock_init (int *) ;

struct drm_sched_fence *drm_sched_fence_create(struct drm_sched_entity *entity,
            void *owner)
{
 struct drm_sched_fence *fence = ((void*)0);
 unsigned seq;

 fence = kmem_cache_zalloc(sched_fence_slab, GFP_KERNEL);
 if (fence == ((void*)0))
  return ((void*)0);

 fence->owner = owner;
 fence->sched = entity->rq->sched;
 spin_lock_init(&fence->lock);

 seq = atomic_inc_return(&entity->fence_seq);
 dma_fence_init(&fence->scheduled, &drm_sched_fence_ops_scheduled,
         &fence->lock, entity->fence_context, seq);
 dma_fence_init(&fence->finished, &drm_sched_fence_ops_finished,
         &fence->lock, entity->fence_context + 1, seq);

 return fence;
}
