
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_vmid {scalar_t__ current_gpu_reset_count; } ;
struct amdgpu_device {int gpu_reset_counter; } ;


 scalar_t__ atomic_read (int *) ;

bool amdgpu_vmid_had_gpu_reset(struct amdgpu_device *adev,
          struct amdgpu_vmid *id)
{
 return id->current_gpu_reset_count !=
  atomic_read(&adev->gpu_reset_counter);
}
