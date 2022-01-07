
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int amdgpu_uvd_suspend (struct amdgpu_device*) ;
 int uvd_v6_0_hw_fini (struct amdgpu_device*) ;

__attribute__((used)) static int uvd_v6_0_suspend(void *handle)
{
 int r;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 r = uvd_v6_0_hw_fini(adev);
 if (r)
  return r;

 return amdgpu_uvd_suspend(adev);
}
