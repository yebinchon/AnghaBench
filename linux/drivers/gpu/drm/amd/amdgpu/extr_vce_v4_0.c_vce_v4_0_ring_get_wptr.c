
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct amdgpu_ring {size_t wptr_offs; int me; scalar_t__ use_doorbell; struct amdgpu_device* adev; } ;
struct TYPE_2__ {int * wb; } ;
struct amdgpu_device {TYPE_1__ wb; } ;


 int RREG32 (int ) ;
 int SOC15_REG_OFFSET (int ,int ,int ) ;
 int VCE ;
 int mmVCE_RB_WPTR ;
 int mmVCE_RB_WPTR2 ;
 int mmVCE_RB_WPTR3 ;

__attribute__((used)) static uint64_t vce_v4_0_ring_get_wptr(struct amdgpu_ring *ring)
{
 struct amdgpu_device *adev = ring->adev;

 if (ring->use_doorbell)
  return adev->wb.wb[ring->wptr_offs];

 if (ring->me == 0)
  return RREG32(SOC15_REG_OFFSET(VCE, 0, mmVCE_RB_WPTR));
 else if (ring->me == 1)
  return RREG32(SOC15_REG_OFFSET(VCE, 0, mmVCE_RB_WPTR2));
 else
  return RREG32(SOC15_REG_OFFSET(VCE, 0, mmVCE_RB_WPTR3));
}
