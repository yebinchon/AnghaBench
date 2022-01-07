
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int dce_v10_0_is_display_hung (struct amdgpu_device*) ;

__attribute__((used)) static bool dce_v10_0_check_soft_reset(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 return dce_v10_0_is_display_hung(adev);
}
