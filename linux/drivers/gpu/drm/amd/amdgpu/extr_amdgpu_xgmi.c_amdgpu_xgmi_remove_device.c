
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct amdgpu_hive_info {int hive_lock; int reset_lock; int number_devices; } ;
struct TYPE_3__ {int supported; } ;
struct TYPE_4__ {TYPE_1__ xgmi; } ;
struct amdgpu_device {TYPE_2__ gmc; } ;


 struct amdgpu_hive_info* amdgpu_get_xgmi_hive (struct amdgpu_device*,int) ;
 int amdgpu_xgmi_sysfs_destroy (struct amdgpu_device*,struct amdgpu_hive_info*) ;
 int amdgpu_xgmi_sysfs_rem_dev_info (struct amdgpu_device*,struct amdgpu_hive_info*) ;
 int mutex_destroy (int *) ;
 int mutex_unlock (int *) ;

void amdgpu_xgmi_remove_device(struct amdgpu_device *adev)
{
 struct amdgpu_hive_info *hive;

 if (!adev->gmc.xgmi.supported)
  return;

 hive = amdgpu_get_xgmi_hive(adev, 1);
 if (!hive)
  return;

 if (!(hive->number_devices--)) {
  amdgpu_xgmi_sysfs_destroy(adev, hive);
  mutex_destroy(&hive->hive_lock);
  mutex_destroy(&hive->reset_lock);
 } else {
  amdgpu_xgmi_sysfs_rem_dev_info(adev, hive);
  mutex_unlock(&hive->hive_lock);
 }
}
