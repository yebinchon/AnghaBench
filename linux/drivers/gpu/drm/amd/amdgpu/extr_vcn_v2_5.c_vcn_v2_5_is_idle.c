
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_vcn_inst; int harvest_config; } ;
struct amdgpu_device {TYPE_1__ vcn; } ;


 scalar_t__ RREG32_SOC15 (int ,int,int ) ;
 scalar_t__ UVD_STATUS__IDLE ;
 int VCN ;
 int mmUVD_STATUS ;

__attribute__((used)) static bool vcn_v2_5_is_idle(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 int i, ret = 1;

 for (i = 0; i < adev->vcn.num_vcn_inst; ++i) {
  if (adev->vcn.harvest_config & (1 << i))
   continue;
  ret &= (RREG32_SOC15(VCN, i, mmUVD_STATUS) == UVD_STATUS__IDLE);
 }

 return ret;
}
