
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int amdgpu_vcn_resume (struct amdgpu_device*) ;
 int vcn_v2_5_hw_init (struct amdgpu_device*) ;

__attribute__((used)) static int vcn_v2_5_resume(void *handle)
{
 int r;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 r = amdgpu_vcn_resume(adev);
 if (r)
  return r;

 r = vcn_v2_5_hw_init(adev);

 return r;
}
