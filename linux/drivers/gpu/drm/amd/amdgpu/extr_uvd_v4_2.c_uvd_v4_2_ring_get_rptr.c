
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct amdgpu_ring {struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;


 int RREG32 (int ) ;
 int mmUVD_RBC_RB_RPTR ;

__attribute__((used)) static uint64_t uvd_v4_2_ring_get_rptr(struct amdgpu_ring *ring)
{
 struct amdgpu_device *adev = ring->adev;

 return RREG32(mmUVD_RBC_RB_RPTR);
}
