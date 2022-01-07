
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct amdgpu_ring {scalar_t__ me; struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;


 int RREG32 (int ) ;
 int mmVCE_RB_RPTR ;
 int mmVCE_RB_RPTR2 ;

__attribute__((used)) static uint64_t vce_v2_0_ring_get_rptr(struct amdgpu_ring *ring)
{
 struct amdgpu_device *adev = ring->adev;

 if (ring->me == 0)
  return RREG32(mmVCE_RB_RPTR);
 else
  return RREG32(mmVCE_RB_RPTR2);
}
