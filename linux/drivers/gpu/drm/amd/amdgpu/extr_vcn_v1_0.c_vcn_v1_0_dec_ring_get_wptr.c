
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct amdgpu_ring {struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;


 int RREG32_SOC15 (int ,int ,int ) ;
 int UVD ;
 int mmUVD_RBC_RB_WPTR ;

__attribute__((used)) static uint64_t vcn_v1_0_dec_ring_get_wptr(struct amdgpu_ring *ring)
{
 struct amdgpu_device *adev = ring->adev;

 return RREG32_SOC15(UVD, 0, mmUVD_RBC_RB_WPTR);
}
