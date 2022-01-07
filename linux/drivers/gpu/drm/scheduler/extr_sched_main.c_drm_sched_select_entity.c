
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_sched_entity {int dummy; } ;
struct drm_gpu_scheduler {int * sched_rq; } ;


 int DRM_SCHED_PRIORITY_MAX ;
 int DRM_SCHED_PRIORITY_MIN ;
 int drm_sched_ready (struct drm_gpu_scheduler*) ;
 struct drm_sched_entity* drm_sched_rq_select_entity (int *) ;

__attribute__((used)) static struct drm_sched_entity *
drm_sched_select_entity(struct drm_gpu_scheduler *sched)
{
 struct drm_sched_entity *entity;
 int i;

 if (!drm_sched_ready(sched))
  return ((void*)0);


 for (i = DRM_SCHED_PRIORITY_MAX - 1; i >= DRM_SCHED_PRIORITY_MIN; i--) {
  entity = drm_sched_rq_select_entity(&sched->sched_rq[i]);
  if (entity)
   break;
 }

 return entity;
}
