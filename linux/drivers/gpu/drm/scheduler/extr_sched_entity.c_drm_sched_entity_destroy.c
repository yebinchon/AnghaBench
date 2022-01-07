
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_sched_entity {int dummy; } ;


 int MAX_WAIT_SCHED_ENTITY_Q_EMPTY ;
 int drm_sched_entity_fini (struct drm_sched_entity*) ;
 int drm_sched_entity_flush (struct drm_sched_entity*,int ) ;

void drm_sched_entity_destroy(struct drm_sched_entity *entity)
{
 drm_sched_entity_flush(entity, MAX_WAIT_SCHED_ENTITY_Q_EMPTY);
 drm_sched_entity_fini(entity);
}
