
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_gpu_instance {scalar_t__ mgpu_fan_enabled; struct amdgpu_device* adev; } ;
struct amdgpu_device {int flags; } ;
struct TYPE_2__ {size_t num_gpu; int mutex; int num_dgpu; int num_apu; struct amdgpu_gpu_instance* gpu_ins; } ;


 int AMD_IS_APU ;
 int DRM_ERROR (char*) ;
 size_t MAX_GPU_INSTANCE ;
 TYPE_1__ mgpu_info ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void amdgpu_register_gpu_instance(struct amdgpu_device *adev)
{
 struct amdgpu_gpu_instance *gpu_instance;

 mutex_lock(&mgpu_info.mutex);

 if (mgpu_info.num_gpu >= MAX_GPU_INSTANCE) {
  DRM_ERROR("Cannot register more gpu instance\n");
  mutex_unlock(&mgpu_info.mutex);
  return;
 }

 gpu_instance = &(mgpu_info.gpu_ins[mgpu_info.num_gpu]);
 gpu_instance->adev = adev;
 gpu_instance->mgpu_fan_enabled = 0;

 mgpu_info.num_gpu++;
 if (adev->flags & AMD_IS_APU)
  mgpu_info.num_apu++;
 else
  mgpu_info.num_dgpu++;

 mutex_unlock(&mgpu_info.mutex);
}
