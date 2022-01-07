
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct drm_sched_entity {int dummy; } ;
struct amdgpu_ctx {TYPE_1__** entities; } ;
struct TYPE_2__ {struct drm_sched_entity entity; } ;


 scalar_t__ AMDGPU_HW_IP_NUM ;
 int DRM_DEBUG (char*,scalar_t__,...) ;
 int DRM_ERROR (char*,scalar_t__) ;
 int EINVAL ;
 scalar_t__* amdgpu_ctx_num_entities ;

int amdgpu_ctx_get_entity(struct amdgpu_ctx *ctx, u32 hw_ip, u32 instance,
     u32 ring, struct drm_sched_entity **entity)
{
 if (hw_ip >= AMDGPU_HW_IP_NUM) {
  DRM_ERROR("unknown HW IP type: %d\n", hw_ip);
  return -EINVAL;
 }


 if (instance != 0) {
  DRM_DEBUG("invalid ip instance: %d\n", instance);
  return -EINVAL;
 }

 if (ring >= amdgpu_ctx_num_entities[hw_ip]) {
  DRM_DEBUG("invalid ring: %d %d\n", hw_ip, ring);
  return -EINVAL;
 }

 *entity = &ctx->entities[hw_ip][ring].entity;
 return 0;
}
