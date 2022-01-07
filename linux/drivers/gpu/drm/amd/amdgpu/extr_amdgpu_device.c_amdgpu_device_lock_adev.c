
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int in_gpu_reset; int mp1_state; int gpu_reset_counter; int lock_reset; } ;




 int PP_MP1_STATE_NONE ;
 int PP_MP1_STATE_RESET ;
 int PP_MP1_STATE_SHUTDOWN ;
 int amdgpu_amdkfd_pre_reset (struct amdgpu_device*) ;
 int amdgpu_asic_reset_method (struct amdgpu_device*) ;
 int amdgpu_sriov_vf (struct amdgpu_device*) ;
 int atomic_inc (int *) ;
 int mutex_lock (int *) ;
 int mutex_trylock (int *) ;

__attribute__((used)) static bool amdgpu_device_lock_adev(struct amdgpu_device *adev, bool trylock)
{
 if (trylock) {
  if (!mutex_trylock(&adev->lock_reset))
   return 0;
 } else
  mutex_lock(&adev->lock_reset);

 atomic_inc(&adev->gpu_reset_counter);
 adev->in_gpu_reset = 1;
 switch (amdgpu_asic_reset_method(adev)) {
 case 129:
  adev->mp1_state = PP_MP1_STATE_SHUTDOWN;
  break;
 case 128:
  adev->mp1_state = PP_MP1_STATE_RESET;
  break;
 default:
  adev->mp1_state = PP_MP1_STATE_NONE;
  break;
 }

 if (!amdgpu_sriov_vf(adev))
                amdgpu_amdkfd_pre_reset(adev);

 return 1;
}
