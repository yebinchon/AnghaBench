
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int write_count; int read_count; int* data; int lock; int * flags; int * code; } ;
struct TYPE_6__ {TYPE_2__ vf_errors; TYPE_1__* ops; } ;
struct amdgpu_device {TYPE_3__ virt; } ;
struct TYPE_4__ {int (* trans_msg ) (struct amdgpu_device*,int ,int,int,int) ;} ;


 int AMDGIM_ERROR_CODE_FLAGS_TO_MAILBOX (int ,int ) ;
 int AMDGPU_VF_ERROR_ENTRY_SIZE ;
 int IDH_LOG_VF_ERROR ;
 int amdgpu_sriov_vf (struct amdgpu_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct amdgpu_device*,int ,int,int,int) ;

void amdgpu_vf_error_trans_all(struct amdgpu_device *adev)
{

 u32 data1, data2, data3;
 int index;

 if ((((void*)0) == adev) || (!amdgpu_sriov_vf(adev)) ||
     (!adev->virt.ops) || (!adev->virt.ops->trans_msg)) {
  return;
 }
 mutex_lock(&adev->virt.vf_errors.lock);

 if (adev->virt.vf_errors.write_count - adev->virt.vf_errors.read_count > AMDGPU_VF_ERROR_ENTRY_SIZE) {
  adev->virt.vf_errors.read_count = adev->virt.vf_errors.write_count - AMDGPU_VF_ERROR_ENTRY_SIZE;
 }

 while (adev->virt.vf_errors.read_count < adev->virt.vf_errors.write_count) {
  index =adev->virt.vf_errors.read_count % AMDGPU_VF_ERROR_ENTRY_SIZE;
  data1 = AMDGIM_ERROR_CODE_FLAGS_TO_MAILBOX(adev->virt.vf_errors.code[index],
          adev->virt.vf_errors.flags[index]);
  data2 = adev->virt.vf_errors.data[index] & 0xFFFFFFFF;
  data3 = (adev->virt.vf_errors.data[index] >> 32) & 0xFFFFFFFF;

  adev->virt.ops->trans_msg(adev, IDH_LOG_VF_ERROR, data1, data2, data3);
  adev->virt.vf_errors.read_count ++;
 }
 mutex_unlock(&adev->virt.vf_errors.lock);
}
