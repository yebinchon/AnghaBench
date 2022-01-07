
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct drm_sched_entity {int stopped; int rq_lock; TYPE_1__* rq; int last_user; } ;
struct drm_gpu_scheduler {int job_scheduled; } ;
struct TYPE_4__ {int flags; scalar_t__ exit_code; struct task_struct* group_leader; } ;
struct TYPE_3__ {struct drm_gpu_scheduler* sched; } ;


 int PF_EXITING ;
 scalar_t__ SIGKILL ;
 struct task_struct* cmpxchg (int *,struct task_struct*,int *) ;
 TYPE_2__* current ;
 int drm_sched_entity_is_idle (struct drm_sched_entity*) ;
 int drm_sched_rq_remove_entity (TYPE_1__*,struct drm_sched_entity*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait_event_killable (int ,int ) ;
 long wait_event_timeout (int ,int ,long) ;

long drm_sched_entity_flush(struct drm_sched_entity *entity, long timeout)
{
 struct drm_gpu_scheduler *sched;
 struct task_struct *last_user;
 long ret = timeout;

 if (!entity->rq)
  return 0;

 sched = entity->rq->sched;




 if (current->flags & PF_EXITING) {
  if (timeout)
   ret = wait_event_timeout(
     sched->job_scheduled,
     drm_sched_entity_is_idle(entity),
     timeout);
 } else {
  wait_event_killable(sched->job_scheduled,
        drm_sched_entity_is_idle(entity));
 }


 last_user = cmpxchg(&entity->last_user, current->group_leader, ((void*)0));
 if ((!last_user || last_user == current->group_leader) &&
     (current->flags & PF_EXITING) && (current->exit_code == SIGKILL)) {
  spin_lock(&entity->rq_lock);
  entity->stopped = 1;
  drm_sched_rq_remove_entity(entity->rq, entity);
  spin_unlock(&entity->rq_lock);
 }

 return ret;
}
