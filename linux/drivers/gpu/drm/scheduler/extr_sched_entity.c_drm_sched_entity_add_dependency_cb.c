
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_sched_fence {int scheduled; struct drm_gpu_scheduler* sched; } ;
struct drm_sched_entity {scalar_t__ fence_context; struct dma_fence* dependency; int cb; TYPE_1__* rq; } ;
struct drm_gpu_scheduler {int dummy; } ;
struct dma_fence {scalar_t__ context; } ;
struct TYPE_2__ {struct drm_gpu_scheduler* sched; } ;


 int dma_fence_add_callback (struct dma_fence*,int *,int ) ;
 struct dma_fence* dma_fence_get (int *) ;
 int dma_fence_put (struct dma_fence*) ;
 int drm_sched_entity_clear_dep ;
 int drm_sched_entity_wakeup ;
 struct drm_sched_fence* to_drm_sched_fence (struct dma_fence*) ;

__attribute__((used)) static bool drm_sched_entity_add_dependency_cb(struct drm_sched_entity *entity)
{
 struct drm_gpu_scheduler *sched = entity->rq->sched;
 struct dma_fence *fence = entity->dependency;
 struct drm_sched_fence *s_fence;

 if (fence->context == entity->fence_context ||
     fence->context == entity->fence_context + 1) {





  dma_fence_put(entity->dependency);
  return 0;
 }

 s_fence = to_drm_sched_fence(fence);
 if (s_fence && s_fence->sched == sched) {





  fence = dma_fence_get(&s_fence->scheduled);
  dma_fence_put(entity->dependency);
  entity->dependency = fence;
  if (!dma_fence_add_callback(fence, &entity->cb,
         drm_sched_entity_clear_dep))
   return 1;


  dma_fence_put(fence);
  return 0;
 }

 if (!dma_fence_add_callback(entity->dependency, &entity->cb,
        drm_sched_entity_wakeup))
  return 1;

 dma_fence_put(entity->dependency);
 return 0;
}
