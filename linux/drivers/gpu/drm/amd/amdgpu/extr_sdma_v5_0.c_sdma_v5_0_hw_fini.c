
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;
 int sdma_v5_0_ctx_switch_enable (struct amdgpu_device*,int) ;
 int sdma_v5_0_enable (struct amdgpu_device*,int) ;

__attribute__((used)) static int sdma_v5_0_hw_fini(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 if (amdgpu_sriov_vf(adev))
  return 0;

 sdma_v5_0_ctx_switch_enable(adev, 0);
 sdma_v5_0_enable(adev, 0);

 return 0;
}
