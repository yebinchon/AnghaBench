
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int gfx_v6_0_hw_init (struct amdgpu_device*) ;

__attribute__((used)) static int gfx_v6_0_resume(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 return gfx_v6_0_hw_init(adev);
}
