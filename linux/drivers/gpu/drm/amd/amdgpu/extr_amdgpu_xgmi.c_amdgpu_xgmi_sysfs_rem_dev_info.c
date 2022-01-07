
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct amdgpu_hive_info {int * kobj; } ;
struct amdgpu_device {TYPE_1__* ddev; TYPE_2__* dev; } ;
struct TYPE_4__ {int kobj; } ;
struct TYPE_3__ {int unique; } ;


 int dev_attr_xgmi_device_id ;
 int device_remove_file (TYPE_2__*,int *) ;
 int sysfs_remove_link (int *,int ) ;

__attribute__((used)) static void amdgpu_xgmi_sysfs_rem_dev_info(struct amdgpu_device *adev,
       struct amdgpu_hive_info *hive)
{
 device_remove_file(adev->dev, &dev_attr_xgmi_device_id);
 sysfs_remove_link(&adev->dev->kobj, adev->ddev->unique);
 sysfs_remove_link(hive->kobj, adev->ddev->unique);
}
