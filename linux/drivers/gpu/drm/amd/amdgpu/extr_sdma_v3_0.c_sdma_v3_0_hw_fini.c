
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int sdma_v3_0_ctx_switch_enable (struct amdgpu_device*,int) ;
 int sdma_v3_0_enable (struct amdgpu_device*,int) ;

__attribute__((used)) static int sdma_v3_0_hw_fini(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 sdma_v3_0_ctx_switch_enable(adev, 0);
 sdma_v3_0_enable(adev, 0);

 return 0;
}
