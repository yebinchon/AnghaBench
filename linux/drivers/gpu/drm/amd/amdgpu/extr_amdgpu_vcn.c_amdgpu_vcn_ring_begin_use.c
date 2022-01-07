
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct dpg_pause_state {void* jpeg; void* fw_based; } ;
struct amdgpu_ring {size_t me; TYPE_3__* funcs; struct amdgpu_device* adev; } ;
struct TYPE_8__ {unsigned int num_enc_rings; int (* pause_dpg_mode ) (struct amdgpu_device*,struct dpg_pause_state*) ;TYPE_2__* inst; int idle_work; } ;
struct TYPE_5__ {scalar_t__ dpm_enabled; } ;
struct amdgpu_device {scalar_t__ asic_type; int pg_flags; TYPE_4__ vcn; TYPE_1__ pm; } ;
struct TYPE_7__ {scalar_t__ type; } ;
struct TYPE_6__ {int ring_jpeg; int * ring_enc; } ;


 scalar_t__ AMDGPU_RING_TYPE_VCN_ENC ;
 scalar_t__ AMDGPU_RING_TYPE_VCN_JPEG ;
 int AMD_IP_BLOCK_TYPE_VCN ;
 int AMD_PG_STATE_UNGATE ;
 int AMD_PG_SUPPORT_VCN_DPG ;
 scalar_t__ CHIP_ARCTURUS ;
 void* VCN_DPG_STATE__PAUSE ;
 void* VCN_DPG_STATE__UNPAUSE ;
 int amdgpu_device_ip_set_powergating_state (struct amdgpu_device*,int ,int ) ;
 int amdgpu_dpm_enable_uvd (struct amdgpu_device*,int) ;
 scalar_t__ amdgpu_fence_count_emitted (int *) ;
 int amdgpu_gfx_off_ctrl (struct amdgpu_device*,int) ;
 int cancel_delayed_work_sync (int *) ;
 int stub1 (struct amdgpu_device*,struct dpg_pause_state*) ;

void amdgpu_vcn_ring_begin_use(struct amdgpu_ring *ring)
{
 struct amdgpu_device *adev = ring->adev;
 bool set_clocks = !cancel_delayed_work_sync(&adev->vcn.idle_work);

 if (set_clocks) {
  amdgpu_gfx_off_ctrl(adev, 0);
  if (adev->asic_type < CHIP_ARCTURUS && adev->pm.dpm_enabled)
   amdgpu_dpm_enable_uvd(adev, 1);
  else
   amdgpu_device_ip_set_powergating_state(adev, AMD_IP_BLOCK_TYPE_VCN,
              AMD_PG_STATE_UNGATE);
 }

 if (adev->pg_flags & AMD_PG_SUPPORT_VCN_DPG) {
  struct dpg_pause_state new_state;
  unsigned int fences = 0;
  unsigned int i;

  for (i = 0; i < adev->vcn.num_enc_rings; ++i) {
   fences += amdgpu_fence_count_emitted(&adev->vcn.inst[ring->me].ring_enc[i]);
  }
  if (fences)
   new_state.fw_based = VCN_DPG_STATE__PAUSE;
  else
   new_state.fw_based = VCN_DPG_STATE__UNPAUSE;

  if (amdgpu_fence_count_emitted(&adev->vcn.inst[ring->me].ring_jpeg))
   new_state.jpeg = VCN_DPG_STATE__PAUSE;
  else
   new_state.jpeg = VCN_DPG_STATE__UNPAUSE;

  if (ring->funcs->type == AMDGPU_RING_TYPE_VCN_ENC)
   new_state.fw_based = VCN_DPG_STATE__PAUSE;
  else if (ring->funcs->type == AMDGPU_RING_TYPE_VCN_JPEG)
   new_state.jpeg = VCN_DPG_STATE__PAUSE;

  adev->vcn.pause_dpg_mode(adev, &new_state);
 }
}
