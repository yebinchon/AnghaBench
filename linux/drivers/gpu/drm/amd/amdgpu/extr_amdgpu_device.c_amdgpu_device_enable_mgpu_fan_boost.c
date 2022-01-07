
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct amdgpu_gpu_instance {int mgpu_fan_enabled; struct amdgpu_device* adev; } ;
struct TYPE_5__ {TYPE_1__* pp_funcs; } ;
struct amdgpu_device {int flags; TYPE_2__ powerplay; } ;
struct TYPE_6__ {int num_dgpu; int mutex; struct amdgpu_gpu_instance* gpu_ins; } ;
struct TYPE_4__ {scalar_t__ enable_mgpu_fan_boost; } ;


 int AMD_IS_APU ;
 int amdgpu_dpm_enable_mgpu_fan_boost (struct amdgpu_device*) ;
 TYPE_3__ mgpu_info ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int amdgpu_device_enable_mgpu_fan_boost(void)
{
 struct amdgpu_gpu_instance *gpu_ins;
 struct amdgpu_device *adev;
 int i, ret = 0;

 mutex_lock(&mgpu_info.mutex);






 if (mgpu_info.num_dgpu < 2)
  goto out;

 for (i = 0; i < mgpu_info.num_dgpu; i++) {
  gpu_ins = &(mgpu_info.gpu_ins[i]);
  adev = gpu_ins->adev;
  if (!(adev->flags & AMD_IS_APU) &&
      !gpu_ins->mgpu_fan_enabled &&
      adev->powerplay.pp_funcs &&
      adev->powerplay.pp_funcs->enable_mgpu_fan_boost) {
   ret = amdgpu_dpm_enable_mgpu_fan_boost(adev);
   if (ret)
    break;

   gpu_ins->mgpu_fan_enabled = 1;
  }
 }

out:
 mutex_unlock(&mgpu_info.mutex);

 return ret;
}
