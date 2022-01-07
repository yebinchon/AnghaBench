
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct amdgpu_ring {struct amdgpu_device* adev; } ;
struct TYPE_2__ {struct amdgpu_ring* compute_ring; struct amdgpu_ring* gfx_ring; } ;
struct amdgpu_device {TYPE_1__ gfx; } ;


 int BUG () ;
 int RREG32 (int ) ;
 int mmCP_RB0_WPTR ;
 int mmCP_RB1_WPTR ;
 int mmCP_RB2_WPTR ;

__attribute__((used)) static u64 gfx_v6_0_ring_get_wptr(struct amdgpu_ring *ring)
{
 struct amdgpu_device *adev = ring->adev;

 if (ring == &adev->gfx.gfx_ring[0])
  return RREG32(mmCP_RB0_WPTR);
 else if (ring == &adev->gfx.compute_ring[0])
  return RREG32(mmCP_RB1_WPTR);
 else if (ring == &adev->gfx.compute_ring[1])
  return RREG32(mmCP_RB2_WPTR);
 else
  BUG();
}
