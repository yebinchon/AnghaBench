
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_vcn_inst; int harvest_config; } ;
struct amdgpu_device {TYPE_1__ vcn; } ;


 int SOC15_WAIT_ON_RREG (int ,int,int ,int ,int ,int) ;
 int UVD_STATUS__IDLE ;
 int VCN ;
 int mmUVD_STATUS ;

__attribute__((used)) static int vcn_v2_5_wait_for_idle(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 int i, ret = 0;

 for (i = 0; i < adev->vcn.num_vcn_inst; ++i) {
  if (adev->vcn.harvest_config & (1 << i))
   continue;
  SOC15_WAIT_ON_RREG(VCN, i, mmUVD_STATUS, UVD_STATUS__IDLE,
   UVD_STATUS__IDLE, ret);
  if (ret)
   return ret;
 }

 return ret;
}
