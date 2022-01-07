
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int attr; } ;
struct ras_manager {scalar_t__ attr_inuse; TYPE_2__ sysfs_attr; } ;
struct ras_common_if {int dummy; } ;
struct amdgpu_device {TYPE_1__* dev; } ;
struct TYPE_3__ {int kobj; } ;


 int EINVAL ;
 struct ras_manager* amdgpu_ras_find_obj (struct amdgpu_device*,struct ras_common_if*) ;
 int put_obj (struct ras_manager*) ;
 int sysfs_remove_file_from_group (int *,int *,char*) ;

int amdgpu_ras_sysfs_remove(struct amdgpu_device *adev,
  struct ras_common_if *head)
{
 struct ras_manager *obj = amdgpu_ras_find_obj(adev, head);

 if (!obj || !obj->attr_inuse)
  return -EINVAL;

 sysfs_remove_file_from_group(&adev->dev->kobj,
    &obj->sysfs_attr.attr,
    "ras");
 obj->attr_inuse = 0;
 put_obj(obj);

 return 0;
}
