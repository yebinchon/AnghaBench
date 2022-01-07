
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct amdgpu_ring {struct amdgpu_device* adev; } ;
struct TYPE_4__ {scalar_t__ dpm_enabled; } ;
struct TYPE_3__ {int idle_work; } ;
struct amdgpu_device {TYPE_2__ pm; TYPE_1__ uvd; } ;


 int AMD_CG_STATE_UNGATE ;
 int AMD_IP_BLOCK_TYPE_UVD ;
 int AMD_PG_STATE_UNGATE ;
 int amdgpu_asic_set_uvd_clocks (struct amdgpu_device*,int,int) ;
 int amdgpu_device_ip_set_clockgating_state (struct amdgpu_device*,int ,int ) ;
 int amdgpu_device_ip_set_powergating_state (struct amdgpu_device*,int ,int ) ;
 int amdgpu_dpm_enable_uvd (struct amdgpu_device*,int) ;
 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;
 int cancel_delayed_work_sync (int *) ;

void amdgpu_uvd_ring_begin_use(struct amdgpu_ring *ring)
{
 struct amdgpu_device *adev = ring->adev;
 bool set_clocks;

 if (amdgpu_sriov_vf(adev))
  return;

 set_clocks = !cancel_delayed_work_sync(&adev->uvd.idle_work);
 if (set_clocks) {
  if (adev->pm.dpm_enabled) {
   amdgpu_dpm_enable_uvd(adev, 1);
  } else {
   amdgpu_asic_set_uvd_clocks(adev, 53300, 40000);
   amdgpu_device_ip_set_clockgating_state(adev, AMD_IP_BLOCK_TYPE_UVD,
              AMD_CG_STATE_UNGATE);
   amdgpu_device_ip_set_powergating_state(adev, AMD_IP_BLOCK_TYPE_UVD,
              AMD_PG_STATE_UNGATE);
  }
 }
}
