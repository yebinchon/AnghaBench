
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_ring {int wptr; struct amdgpu_device* adev; } ;
struct TYPE_2__ {struct amdgpu_ring* compute_ring; } ;
struct amdgpu_device {TYPE_1__ gfx; } ;


 int BUG () ;
 int RREG32 (int ) ;
 int WREG32 (int ,int ) ;
 int lower_32_bits (int ) ;
 int mmCP_RB1_WPTR ;
 int mmCP_RB2_WPTR ;

__attribute__((used)) static void gfx_v6_0_ring_set_wptr_compute(struct amdgpu_ring *ring)
{
 struct amdgpu_device *adev = ring->adev;

 if (ring == &adev->gfx.compute_ring[0]) {
  WREG32(mmCP_RB1_WPTR, lower_32_bits(ring->wptr));
  (void)RREG32(mmCP_RB1_WPTR);
 } else if (ring == &adev->gfx.compute_ring[1]) {
  WREG32(mmCP_RB2_WPTR, lower_32_bits(ring->wptr));
  (void)RREG32(mmCP_RB2_WPTR);
 } else {
  BUG();
 }

}
