
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_sched_entity {unsigned int num_rq_list; int rq_lock; scalar_t__ rq; scalar_t__* rq_list; } ;
typedef enum drm_sched_priority { ____Placeholder_drm_sched_priority } drm_sched_priority ;


 int drm_sched_entity_set_rq_priority (scalar_t__*,int) ;
 int drm_sched_rq_add_entity (scalar_t__,struct drm_sched_entity*) ;
 int drm_sched_rq_remove_entity (scalar_t__,struct drm_sched_entity*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void drm_sched_entity_set_priority(struct drm_sched_entity *entity,
       enum drm_sched_priority priority)
{
 unsigned int i;

 spin_lock(&entity->rq_lock);

 for (i = 0; i < entity->num_rq_list; ++i)
  drm_sched_entity_set_rq_priority(&entity->rq_list[i], priority);

 if (entity->rq) {
  drm_sched_rq_remove_entity(entity->rq, entity);
  drm_sched_entity_set_rq_priority(&entity->rq, priority);
  drm_sched_rq_add_entity(entity->rq, entity);
 }

 spin_unlock(&entity->rq_lock);
}
