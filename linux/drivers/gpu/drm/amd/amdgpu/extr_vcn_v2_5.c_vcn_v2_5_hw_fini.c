
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int ready; } ;
struct amdgpu_ring {TYPE_3__ sched; } ;
struct TYPE_5__ {int num_vcn_inst; int harvest_config; int num_enc_rings; TYPE_1__* inst; } ;
struct amdgpu_device {TYPE_2__ vcn; } ;
struct TYPE_4__ {struct amdgpu_ring ring_jpeg; struct amdgpu_ring* ring_enc; struct amdgpu_ring ring_dec; } ;


 int AMD_PG_STATE_GATE ;
 scalar_t__ RREG32_SOC15 (int ,int,int ) ;
 int VCN ;
 int mmUVD_STATUS ;
 int vcn_v2_5_set_powergating_state (struct amdgpu_device*,int ) ;

__attribute__((used)) static int vcn_v2_5_hw_fini(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 struct amdgpu_ring *ring;
 int i;

 for (i = 0; i < adev->vcn.num_vcn_inst; ++i) {
  if (adev->vcn.harvest_config & (1 << i))
   continue;
  ring = &adev->vcn.inst[i].ring_dec;

  if (RREG32_SOC15(VCN, i, mmUVD_STATUS))
   vcn_v2_5_set_powergating_state(adev, AMD_PG_STATE_GATE);

  ring->sched.ready = 0;

  for (i = 0; i < adev->vcn.num_enc_rings; ++i) {
   ring = &adev->vcn.inst[i].ring_enc[i];
   ring->sched.ready = 0;
  }

  ring = &adev->vcn.inst[i].ring_jpeg;
  ring->sched.ready = 0;
 }

 return 0;
}
