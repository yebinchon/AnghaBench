
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_sched_entity {int dependency; int job_queue; } ;


 scalar_t__ READ_ONCE (int ) ;
 int * spsc_queue_peek (int *) ;

bool drm_sched_entity_is_ready(struct drm_sched_entity *entity)
{
 if (spsc_queue_peek(&entity->job_queue) == ((void*)0))
  return 0;

 if (READ_ONCE(entity->dependency))
  return 0;

 return 1;
}
