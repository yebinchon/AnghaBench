
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_sched_rq {int lock; int entities; } ;
struct drm_sched_entity {int list; } ;


 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void drm_sched_rq_add_entity(struct drm_sched_rq *rq,
        struct drm_sched_entity *entity)
{
 if (!list_empty(&entity->list))
  return;
 spin_lock(&rq->lock);
 list_add_tail(&entity->list, &rq->entities);
 spin_unlock(&rq->lock);
}
