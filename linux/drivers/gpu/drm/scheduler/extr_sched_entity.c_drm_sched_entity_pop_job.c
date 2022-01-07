
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_sched_job {TYPE_3__* s_fence; } ;
struct drm_sched_entity {int job_queue; int last_scheduled; scalar_t__ guilty; int dependency; TYPE_1__* rq; } ;
struct drm_gpu_scheduler {TYPE_2__* ops; } ;
struct TYPE_6__ {int finished; } ;
struct TYPE_5__ {int (* dependency ) (struct drm_sched_job*,struct drm_sched_entity*) ;} ;
struct TYPE_4__ {struct drm_gpu_scheduler* sched; } ;


 int ECANCELED ;
 scalar_t__ atomic_read (scalar_t__) ;
 int dma_fence_get (int *) ;
 int dma_fence_put (int ) ;
 int dma_fence_set_error (int *,int ) ;
 scalar_t__ drm_sched_entity_add_dependency_cb (struct drm_sched_entity*) ;
 int spsc_queue_peek (int *) ;
 int spsc_queue_pop (int *) ;
 int stub1 (struct drm_sched_job*,struct drm_sched_entity*) ;
 struct drm_sched_job* to_drm_sched_job (int ) ;
 int trace_drm_sched_job_wait_dep (struct drm_sched_job*,int ) ;

struct drm_sched_job *drm_sched_entity_pop_job(struct drm_sched_entity *entity)
{
 struct drm_gpu_scheduler *sched = entity->rq->sched;
 struct drm_sched_job *sched_job;

 sched_job = to_drm_sched_job(spsc_queue_peek(&entity->job_queue));
 if (!sched_job)
  return ((void*)0);

 while ((entity->dependency =
   sched->ops->dependency(sched_job, entity))) {
  trace_drm_sched_job_wait_dep(sched_job, entity->dependency);

  if (drm_sched_entity_add_dependency_cb(entity))
   return ((void*)0);
 }


 if (entity->guilty && atomic_read(entity->guilty))
  dma_fence_set_error(&sched_job->s_fence->finished, -ECANCELED);

 dma_fence_put(entity->last_scheduled);
 entity->last_scheduled = dma_fence_get(&sched_job->s_fence->finished);

 spsc_queue_pop(&entity->job_queue);
 return sched_job;
}
