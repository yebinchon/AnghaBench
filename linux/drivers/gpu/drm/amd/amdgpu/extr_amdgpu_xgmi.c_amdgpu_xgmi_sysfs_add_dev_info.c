
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct amdgpu_hive_info {int number_devices; int * kobj; struct amdgpu_device* adev; } ;
struct amdgpu_device {TYPE_2__* dev; TYPE_1__* ddev; } ;
struct TYPE_6__ {int kobj; } ;
struct TYPE_5__ {int unique; } ;


 int dev_attr_xgmi_device_id ;
 int dev_attr_xgmi_error ;
 int dev_err (TYPE_2__*,char*) ;
 int device_create_file (TYPE_2__*,int *) ;
 int device_remove_file (TYPE_2__*,int *) ;
 int pr_err (char*) ;
 int sprintf (char*,char*,int) ;
 int sysfs_create_link (int *,int *,char*) ;
 int sysfs_remove_link (int *,int ) ;

__attribute__((used)) static int amdgpu_xgmi_sysfs_add_dev_info(struct amdgpu_device *adev,
      struct amdgpu_hive_info *hive)
{
 int ret = 0;
 char node[10] = { 0 };


 ret = device_create_file(adev->dev, &dev_attr_xgmi_device_id);
 if (ret) {
  dev_err(adev->dev, "XGMI: Failed to create device file xgmi_device_id\n");
  return ret;
 }


 ret = device_create_file(adev->dev, &dev_attr_xgmi_error);
 if (ret)
  pr_err("failed to create xgmi_error\n");



 if (adev != hive->adev) {
  ret = sysfs_create_link(&adev->dev->kobj, hive->kobj,
     "xgmi_hive_info");
  if (ret) {
   dev_err(adev->dev, "XGMI: Failed to create link to hive info");
   goto remove_file;
  }
 }

 sprintf(node, "node%d", hive->number_devices);

 ret = sysfs_create_link(hive->kobj, &adev->dev->kobj, node);
 if (ret) {
  dev_err(adev->dev, "XGMI: Failed to create link from hive info");
  goto remove_link;
 }

 goto success;


remove_link:
 sysfs_remove_link(&adev->dev->kobj, adev->ddev->unique);

remove_file:
 device_remove_file(adev->dev, &dev_attr_xgmi_device_id);

success:
 return ret;
}
