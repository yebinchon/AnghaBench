
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dpm_enabled; } ;
struct amdgpu_device {TYPE_1__ pm; } ;


 int si_dpm_powergate_uvd (struct amdgpu_device*,int) ;
 int si_set_temperature_range (struct amdgpu_device*) ;

__attribute__((used)) static int si_dpm_late_init(void *handle)
{
 int ret;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 if (!adev->pm.dpm_enabled)
  return 0;

 ret = si_set_temperature_range(adev);
 if (ret)
  return ret;



 return 0;
}
