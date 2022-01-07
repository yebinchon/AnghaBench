
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_ring {int wptr; struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;


 int RREG32 (int ) ;
 int WREG32 (int ,int ) ;
 int lower_32_bits (int ) ;
 int mmCP_RB0_WPTR ;

__attribute__((used)) static void gfx_v7_0_ring_set_wptr_gfx(struct amdgpu_ring *ring)
{
 struct amdgpu_device *adev = ring->adev;

 WREG32(mmCP_RB0_WPTR, lower_32_bits(ring->wptr));
 (void)RREG32(mmCP_RB0_WPTR);
}
