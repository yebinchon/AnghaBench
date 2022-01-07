
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int amdgpu_vce_suspend (struct amdgpu_device*) ;
 int amdgpu_vce_sw_fini (struct amdgpu_device*) ;

__attribute__((used)) static int vce_v3_0_sw_fini(void *handle)
{
 int r;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 r = amdgpu_vce_suspend(adev);
 if (r)
  return r;

 return amdgpu_vce_sw_fini(adev);
}
