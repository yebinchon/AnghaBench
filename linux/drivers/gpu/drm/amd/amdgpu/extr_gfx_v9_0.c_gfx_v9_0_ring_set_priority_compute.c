
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_ring {TYPE_1__* funcs; struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;
typedef enum drm_sched_priority { ____Placeholder_drm_sched_priority } drm_sched_priority ;
struct TYPE_2__ {scalar_t__ type; } ;


 scalar_t__ AMDGPU_RING_TYPE_COMPUTE ;
 int DRM_SCHED_PRIORITY_HIGH_HW ;
 int gfx_v9_0_hqd_set_priority (struct amdgpu_device*,struct amdgpu_ring*,int) ;
 int gfx_v9_0_pipe_reserve_resources (struct amdgpu_device*,struct amdgpu_ring*,int) ;

__attribute__((used)) static void gfx_v9_0_ring_set_priority_compute(struct amdgpu_ring *ring,
            enum drm_sched_priority priority)
{
 struct amdgpu_device *adev = ring->adev;
 bool acquire = priority == DRM_SCHED_PRIORITY_HIGH_HW;

 if (ring->funcs->type != AMDGPU_RING_TYPE_COMPUTE)
  return;

 gfx_v9_0_hqd_set_priority(adev, ring, acquire);
 gfx_v9_0_pipe_reserve_resources(adev, ring, acquire);
}
