
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_ring {size_t wptr_offs; int wptr; int doorbell_index; scalar_t__ use_doorbell; struct amdgpu_device* adev; } ;
struct TYPE_2__ {int * wb; } ;
struct amdgpu_device {TYPE_1__ wb; } ;


 int RREG32 (int ) ;
 int WDOORBELL32 (int ,int ) ;
 int WREG32 (int ,int ) ;
 int lower_32_bits (int ) ;
 int mmCP_RB0_WPTR ;

__attribute__((used)) static void gfx_v8_0_ring_set_wptr_gfx(struct amdgpu_ring *ring)
{
 struct amdgpu_device *adev = ring->adev;

 if (ring->use_doorbell) {

  adev->wb.wb[ring->wptr_offs] = lower_32_bits(ring->wptr);
  WDOORBELL32(ring->doorbell_index, lower_32_bits(ring->wptr));
 } else {
  WREG32(mmCP_RB0_WPTR, lower_32_bits(ring->wptr));
  (void)RREG32(mmCP_RB0_WPTR);
 }
}
