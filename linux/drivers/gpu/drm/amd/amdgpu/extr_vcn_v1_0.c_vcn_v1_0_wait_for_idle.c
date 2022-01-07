
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int SOC15_WAIT_ON_RREG (int ,int ,int ,int ,int ,int) ;
 int UVD_STATUS__IDLE ;
 int VCN ;
 int mmUVD_STATUS ;

__attribute__((used)) static int vcn_v1_0_wait_for_idle(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 int ret = 0;

 SOC15_WAIT_ON_RREG(VCN, 0, mmUVD_STATUS, UVD_STATUS__IDLE,
  UVD_STATUS__IDLE, ret);

 return ret;
}
