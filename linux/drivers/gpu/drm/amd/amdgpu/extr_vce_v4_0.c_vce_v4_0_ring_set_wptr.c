
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_ring {size_t wptr_offs; int me; int wptr; int doorbell_index; scalar_t__ use_doorbell; struct amdgpu_device* adev; } ;
struct TYPE_2__ {int * wb; } ;
struct amdgpu_device {TYPE_1__ wb; } ;


 int SOC15_REG_OFFSET (int ,int ,int ) ;
 int VCE ;
 int WDOORBELL32 (int ,int ) ;
 int WREG32 (int ,int ) ;
 int lower_32_bits (int ) ;
 int mmVCE_RB_WPTR ;
 int mmVCE_RB_WPTR2 ;
 int mmVCE_RB_WPTR3 ;

__attribute__((used)) static void vce_v4_0_ring_set_wptr(struct amdgpu_ring *ring)
{
 struct amdgpu_device *adev = ring->adev;

 if (ring->use_doorbell) {

  adev->wb.wb[ring->wptr_offs] = lower_32_bits(ring->wptr);
  WDOORBELL32(ring->doorbell_index, lower_32_bits(ring->wptr));
  return;
 }

 if (ring->me == 0)
  WREG32(SOC15_REG_OFFSET(VCE, 0, mmVCE_RB_WPTR),
   lower_32_bits(ring->wptr));
 else if (ring->me == 1)
  WREG32(SOC15_REG_OFFSET(VCE, 0, mmVCE_RB_WPTR2),
   lower_32_bits(ring->wptr));
 else
  WREG32(SOC15_REG_OFFSET(VCE, 0, mmVCE_RB_WPTR3),
   lower_32_bits(ring->wptr));
}
