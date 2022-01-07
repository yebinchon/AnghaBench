
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_sched_job {int queue_node; } ;
struct drm_sched_entity {TYPE_2__* rq; int rq_lock; scalar_t__ stopped; int job_queue; int last_user; } ;
struct TYPE_6__ {int group_leader; } ;
struct TYPE_5__ {TYPE_1__* sched; } ;
struct TYPE_4__ {int num_jobs; } ;


 int DRM_ERROR (char*) ;
 int WRITE_ONCE (int ,int ) ;
 int atomic_inc (int *) ;
 TYPE_3__* current ;
 int drm_sched_rq_add_entity (TYPE_2__*,struct drm_sched_entity*) ;
 int drm_sched_wakeup (TYPE_1__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int spsc_queue_push (int *,int *) ;
 int trace_drm_sched_job (struct drm_sched_job*,struct drm_sched_entity*) ;

void drm_sched_entity_push_job(struct drm_sched_job *sched_job,
          struct drm_sched_entity *entity)
{
 bool first;

 trace_drm_sched_job(sched_job, entity);
 atomic_inc(&entity->rq->sched->num_jobs);
 WRITE_ONCE(entity->last_user, current->group_leader);
 first = spsc_queue_push(&entity->job_queue, &sched_job->queue_node);


 if (first) {

  spin_lock(&entity->rq_lock);
  if (entity->stopped) {
   spin_unlock(&entity->rq_lock);

   DRM_ERROR("Trying to push to a killed entity\n");
   return;
  }
  drm_sched_rq_add_entity(entity->rq, entity);
  spin_unlock(&entity->rq_lock);
  drm_sched_wakeup(entity->rq->sched);
 }
}
