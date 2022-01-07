
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_sched_rq {int lock; struct drm_sched_entity* current_entity; } ;
struct drm_sched_entity {int list; } ;


 int list_del_init (int *) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void drm_sched_rq_remove_entity(struct drm_sched_rq *rq,
    struct drm_sched_entity *entity)
{
 if (list_empty(&entity->list))
  return;
 spin_lock(&rq->lock);
 list_del_init(&entity->list);
 if (rq->current_entity == entity)
  rq->current_entity = ((void*)0);
 spin_unlock(&rq->lock);
}
