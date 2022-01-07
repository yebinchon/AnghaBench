
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_sched_entity {int rq_list; int * last_scheduled; int * dependency; int cb; int job_queue; TYPE_1__* rq; } ;
struct drm_gpu_scheduler {int thread; } ;
struct TYPE_2__ {struct drm_gpu_scheduler* sched; } ;


 int dma_fence_put (int *) ;
 int dma_fence_remove_callback (int *,int *) ;
 int drm_sched_entity_kill_jobs (struct drm_sched_entity*) ;
 int drm_sched_rq_remove_entity (TYPE_1__*,struct drm_sched_entity*) ;
 int kfree (int ) ;
 int kthread_park (int ) ;
 int kthread_unpark (int ) ;
 scalar_t__ spsc_queue_count (int *) ;

void drm_sched_entity_fini(struct drm_sched_entity *entity)
{
 struct drm_gpu_scheduler *sched = ((void*)0);

 if (entity->rq) {
  sched = entity->rq->sched;
  drm_sched_rq_remove_entity(entity->rq, entity);
 }




 if (spsc_queue_count(&entity->job_queue)) {
  if (sched) {



   kthread_park(sched->thread);
   kthread_unpark(sched->thread);
  }
  if (entity->dependency) {
   dma_fence_remove_callback(entity->dependency,
        &entity->cb);
   dma_fence_put(entity->dependency);
   entity->dependency = ((void*)0);
  }

  drm_sched_entity_kill_jobs(entity);
 }

 dma_fence_put(entity->last_scheduled);
 entity->last_scheduled = ((void*)0);
 kfree(entity->rq_list);
}
