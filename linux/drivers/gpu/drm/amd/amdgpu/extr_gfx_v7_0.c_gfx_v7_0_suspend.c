
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int gfx_v7_0_hw_fini (struct amdgpu_device*) ;

__attribute__((used)) static int gfx_v7_0_suspend(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 return gfx_v7_0_hw_fini(adev);
}
