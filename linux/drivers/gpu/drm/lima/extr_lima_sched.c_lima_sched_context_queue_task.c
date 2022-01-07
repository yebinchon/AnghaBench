
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* s_fence; } ;
struct lima_sched_task {TYPE_2__ base; } ;
struct lima_sched_context {int base; } ;
struct dma_fence {int dummy; } ;
struct TYPE_3__ {int finished; } ;


 struct dma_fence* dma_fence_get (int *) ;
 int drm_sched_entity_push_job (TYPE_2__*,int *) ;

struct dma_fence *lima_sched_context_queue_task(struct lima_sched_context *context,
      struct lima_sched_task *task)
{
 struct dma_fence *fence = dma_fence_get(&task->base.s_fence->finished);

 drm_sched_entity_push_job(&task->base, &context->base);
 return fence;
}
