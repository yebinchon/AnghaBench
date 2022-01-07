
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_sched_job {int node; int id; int s_fence; TYPE_1__* s_priority; struct drm_sched_entity* entity; struct drm_gpu_scheduler* sched; } ;
struct drm_sched_entity {TYPE_1__* rq; } ;
struct drm_gpu_scheduler {int sched_rq; int job_id_count; } ;
struct TYPE_2__ {struct drm_gpu_scheduler* sched; } ;


 int ENOENT ;
 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 int atomic64_inc_return (int *) ;
 int drm_sched_entity_select_rq (struct drm_sched_entity*) ;
 int drm_sched_fence_create (struct drm_sched_entity*,void*) ;

int drm_sched_job_init(struct drm_sched_job *job,
         struct drm_sched_entity *entity,
         void *owner)
{
 struct drm_gpu_scheduler *sched;

 drm_sched_entity_select_rq(entity);
 if (!entity->rq)
  return -ENOENT;

 sched = entity->rq->sched;

 job->sched = sched;
 job->entity = entity;
 job->s_priority = entity->rq - sched->sched_rq;
 job->s_fence = drm_sched_fence_create(entity, owner);
 if (!job->s_fence)
  return -ENOMEM;
 job->id = atomic64_inc_return(&sched->job_id_count);

 INIT_LIST_HEAD(&job->node);

 return 0;
}
