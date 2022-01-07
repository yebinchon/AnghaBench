
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct amdgpu_ring {struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;


 int RREG32 (int ) ;
 int mmCP_RB0_WPTR ;

__attribute__((used)) static u64 gfx_v7_0_ring_get_wptr_gfx(struct amdgpu_ring *ring)
{
 struct amdgpu_device *adev = ring->adev;

 return RREG32(mmCP_RB0_WPTR);
}
