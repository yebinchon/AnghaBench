
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_sched_fence {struct drm_gpu_scheduler* sched; } ;
struct drm_sched_entity {scalar_t__ fence_context; TYPE_1__* rq; } ;
struct drm_gpu_scheduler {int dummy; } ;
struct dma_fence {scalar_t__ context; } ;
struct TYPE_2__ {struct drm_gpu_scheduler* sched; } ;


 scalar_t__ dma_fence_is_signaled (struct dma_fence*) ;
 struct drm_sched_fence* to_drm_sched_fence (struct dma_fence*) ;

bool drm_sched_dependency_optimized(struct dma_fence* fence,
        struct drm_sched_entity *entity)
{
 struct drm_gpu_scheduler *sched = entity->rq->sched;
 struct drm_sched_fence *s_fence;

 if (!fence || dma_fence_is_signaled(fence))
  return 0;
 if (fence->context == entity->fence_context)
  return 1;
 s_fence = to_drm_sched_fence(fence);
 if (s_fence && s_fence->sched == sched)
  return 1;

 return 0;
}
