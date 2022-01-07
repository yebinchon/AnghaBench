
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_sched_entity {int dummy; } ;
struct amdgpu_ctx {int override_priority; int init_priority; TYPE_1__** entities; } ;
typedef enum drm_sched_priority { ____Placeholder_drm_sched_priority } drm_sched_priority ;
struct TYPE_2__ {struct drm_sched_entity entity; } ;


 scalar_t__ DRM_SCHED_PRIORITY_UNSET ;
 unsigned int amdgpu_ctx_total_num_entities () ;
 int drm_sched_entity_set_priority (struct drm_sched_entity*,int) ;

void amdgpu_ctx_priority_override(struct amdgpu_ctx *ctx,
      enum drm_sched_priority priority)
{
 unsigned num_entities = amdgpu_ctx_total_num_entities();
 enum drm_sched_priority ctx_prio;
 unsigned i;

 ctx->override_priority = priority;

 ctx_prio = (ctx->override_priority == DRM_SCHED_PRIORITY_UNSET) ?
   ctx->init_priority : ctx->override_priority;

 for (i = 0; i < num_entities; i++) {
  struct drm_sched_entity *entity = &ctx->entities[0][i].entity;

  drm_sched_entity_set_priority(entity, ctx_prio);
 }
}
