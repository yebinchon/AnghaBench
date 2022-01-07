
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int amdgpu_vcn_suspend (struct amdgpu_device*) ;
 int vcn_v2_5_hw_fini (struct amdgpu_device*) ;

__attribute__((used)) static int vcn_v2_5_suspend(void *handle)
{
 int r;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 r = vcn_v2_5_hw_fini(adev);
 if (r)
  return r;

 r = amdgpu_vcn_suspend(adev);

 return r;
}
