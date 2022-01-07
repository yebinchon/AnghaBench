
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int lock_reset; scalar_t__ in_gpu_reset; int mp1_state; } ;


 int PP_MP1_STATE_NONE ;
 int amdgpu_amdkfd_post_reset (struct amdgpu_device*) ;
 int amdgpu_sriov_vf (struct amdgpu_device*) ;
 int amdgpu_vf_error_trans_all (struct amdgpu_device*) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void amdgpu_device_unlock_adev(struct amdgpu_device *adev)
{

 if (!amdgpu_sriov_vf(adev))
                amdgpu_amdkfd_post_reset(adev);
 amdgpu_vf_error_trans_all(adev);
 adev->mp1_state = PP_MP1_STATE_NONE;
 adev->in_gpu_reset = 0;
 mutex_unlock(&adev->lock_reset);
}
