
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int gmc_v10_0_hw_fini (struct amdgpu_device*) ;

__attribute__((used)) static int gmc_v10_0_suspend(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 gmc_v10_0_hw_fini(adev);

 return 0;
}
