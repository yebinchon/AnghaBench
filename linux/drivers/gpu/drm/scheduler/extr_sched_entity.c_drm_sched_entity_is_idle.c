
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_sched_entity {int job_queue; int list; } ;


 scalar_t__ list_empty (int *) ;
 int rmb () ;
 scalar_t__ spsc_queue_count (int *) ;

__attribute__((used)) static bool drm_sched_entity_is_idle(struct drm_sched_entity *entity)
{
 rmb();

 if (list_empty(&entity->list) ||
     spsc_queue_count(&entity->job_queue) == 0)
  return 1;

 return 0;
}
