
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_ring {scalar_t__ me; int wptr; struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;


 int WREG32 (int ,int ) ;
 int lower_32_bits (int ) ;
 int mmVCE_RB_WPTR ;
 int mmVCE_RB_WPTR2 ;

__attribute__((used)) static void vce_v2_0_ring_set_wptr(struct amdgpu_ring *ring)
{
 struct amdgpu_device *adev = ring->adev;

 if (ring->me == 0)
  WREG32(mmVCE_RB_WPTR, lower_32_bits(ring->wptr));
 else
  WREG32(mmVCE_RB_WPTR2, lower_32_bits(ring->wptr));
}
