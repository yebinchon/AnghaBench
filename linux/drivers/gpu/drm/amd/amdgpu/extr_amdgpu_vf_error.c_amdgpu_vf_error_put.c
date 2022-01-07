
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef void* uint16_t ;
struct TYPE_3__ {int write_count; int lock; int * data; void** flags; void** code; } ;
struct TYPE_4__ {TYPE_1__ vf_errors; } ;
struct amdgpu_device {TYPE_2__ virt; } ;


 int AMDGIM_ERROR_CATEGORY_VF ;
 void* AMDGIM_ERROR_CODE (int ,void*) ;
 int AMDGPU_VF_ERROR_ENTRY_SIZE ;
 int amdgpu_sriov_vf (struct amdgpu_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void amdgpu_vf_error_put(struct amdgpu_device *adev,
    uint16_t sub_error_code,
    uint16_t error_flags,
    uint64_t error_data)
{
 int index;
 uint16_t error_code;

 if (!amdgpu_sriov_vf(adev))
  return;

 error_code = AMDGIM_ERROR_CODE(AMDGIM_ERROR_CATEGORY_VF, sub_error_code);

 mutex_lock(&adev->virt.vf_errors.lock);
 index = adev->virt.vf_errors.write_count % AMDGPU_VF_ERROR_ENTRY_SIZE;
 adev->virt.vf_errors.code [index] = error_code;
 adev->virt.vf_errors.flags [index] = error_flags;
 adev->virt.vf_errors.data [index] = error_data;
 adev->virt.vf_errors.write_count ++;
 mutex_unlock(&adev->virt.vf_errors.lock);
}
