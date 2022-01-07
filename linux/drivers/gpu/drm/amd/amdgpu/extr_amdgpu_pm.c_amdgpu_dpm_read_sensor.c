
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int pp_handle; TYPE_1__* pp_funcs; } ;
struct amdgpu_device {TYPE_2__ powerplay; int smu; } ;
typedef enum amd_pp_sensors { ____Placeholder_amd_pp_sensors } amd_pp_sensors ;
struct TYPE_3__ {int (* read_sensor ) (int ,int,void*,int *) ;} ;


 int EINVAL ;
 scalar_t__ is_support_sw_smu (struct amdgpu_device*) ;
 int smu_read_sensor (int *,int,void*,int *) ;
 int stub1 (int ,int,void*,int *) ;

int amdgpu_dpm_read_sensor(struct amdgpu_device *adev, enum amd_pp_sensors sensor,
      void *data, uint32_t *size)
{
 int ret = 0;

 if (!data || !size)
  return -EINVAL;

 if (is_support_sw_smu(adev))
  ret = smu_read_sensor(&adev->smu, sensor, data, size);
 else {
  if (adev->powerplay.pp_funcs && adev->powerplay.pp_funcs->read_sensor)
   ret = adev->powerplay.pp_funcs->read_sensor((adev)->powerplay.pp_handle,
            sensor, data, size);
  else
   ret = -EINVAL;
 }

 return ret;
}
