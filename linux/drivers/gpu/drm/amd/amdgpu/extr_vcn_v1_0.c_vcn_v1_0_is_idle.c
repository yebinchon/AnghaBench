
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 scalar_t__ RREG32_SOC15 (int ,int ,int ) ;
 scalar_t__ UVD_STATUS__IDLE ;
 int VCN ;
 int mmUVD_STATUS ;

__attribute__((used)) static bool vcn_v1_0_is_idle(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 return (RREG32_SOC15(VCN, 0, mmUVD_STATUS) == UVD_STATUS__IDLE);
}
