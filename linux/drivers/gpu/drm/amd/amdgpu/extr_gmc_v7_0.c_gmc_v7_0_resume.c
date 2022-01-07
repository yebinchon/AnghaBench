
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int amdgpu_vmid_reset_all (struct amdgpu_device*) ;
 int gmc_v7_0_hw_init (struct amdgpu_device*) ;

__attribute__((used)) static int gmc_v7_0_resume(void *handle)
{
 int r;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 r = gmc_v7_0_hw_init(adev);
 if (r)
  return r;

 amdgpu_vmid_reset_all(adev);

 return 0;
}
