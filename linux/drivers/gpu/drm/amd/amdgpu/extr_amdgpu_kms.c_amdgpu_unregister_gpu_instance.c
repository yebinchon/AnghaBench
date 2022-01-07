
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_gpu_instance {struct amdgpu_device* adev; } ;
struct amdgpu_device {int flags; } ;
struct TYPE_2__ {int num_gpu; int mutex; int num_dgpu; int num_apu; struct amdgpu_gpu_instance* gpu_ins; } ;


 int AMD_IS_APU ;
 TYPE_1__ mgpu_info ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void amdgpu_unregister_gpu_instance(struct amdgpu_device *adev)
{
 struct amdgpu_gpu_instance *gpu_instance;
 int i;

 mutex_lock(&mgpu_info.mutex);

 for (i = 0; i < mgpu_info.num_gpu; i++) {
  gpu_instance = &(mgpu_info.gpu_ins[i]);
  if (gpu_instance->adev == adev) {
   mgpu_info.gpu_ins[i] =
    mgpu_info.gpu_ins[mgpu_info.num_gpu - 1];
   mgpu_info.num_gpu--;
   if (adev->flags & AMD_IS_APU)
    mgpu_info.num_apu--;
   else
    mgpu_info.num_dgpu--;
   break;
  }
 }

 mutex_unlock(&mgpu_info.mutex);
}
