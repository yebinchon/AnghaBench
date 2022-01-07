
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int amdgpu_vce_resume (struct amdgpu_device*) ;
 int vce_v2_0_hw_init (struct amdgpu_device*) ;

__attribute__((used)) static int vce_v2_0_resume(void *handle)
{
 int r;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 r = amdgpu_vce_resume(adev);
 if (r)
  return r;

 return vce_v2_0_hw_init(adev);
}
