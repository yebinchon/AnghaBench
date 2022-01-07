
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct amdgpu_ring {struct amdgpu_device* adev; } ;
struct TYPE_4__ {TYPE_1__* inst; } ;
struct amdgpu_device {TYPE_2__ vcn; } ;
struct TYPE_3__ {struct amdgpu_ring* ring_enc; } ;


 int RREG32_SOC15 (int ,int ,int ) ;
 int UVD ;
 int mmUVD_RB_WPTR ;
 int mmUVD_RB_WPTR2 ;

__attribute__((used)) static uint64_t vcn_v1_0_enc_ring_get_wptr(struct amdgpu_ring *ring)
{
 struct amdgpu_device *adev = ring->adev;

 if (ring == &adev->vcn.inst->ring_enc[0])
  return RREG32_SOC15(UVD, 0, mmUVD_RB_WPTR);
 else
  return RREG32_SOC15(UVD, 0, mmUVD_RB_WPTR2);
}
