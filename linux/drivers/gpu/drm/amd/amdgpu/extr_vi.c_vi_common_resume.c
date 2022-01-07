
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int vi_common_hw_init (struct amdgpu_device*) ;

__attribute__((used)) static int vi_common_resume(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 return vi_common_hw_init(adev);
}
