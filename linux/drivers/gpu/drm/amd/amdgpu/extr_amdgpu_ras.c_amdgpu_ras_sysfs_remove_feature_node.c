
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bin_attribute {int dummy; } ;
struct attribute_group {char* name; struct bin_attribute** bin_attrs; struct attribute** attrs; } ;
struct attribute {int dummy; } ;
struct TYPE_3__ {struct attribute attr; } ;
struct amdgpu_ras {struct bin_attribute badpages_attr; TYPE_1__ features_attr; } ;
struct amdgpu_device {TYPE_2__* dev; } ;
struct TYPE_4__ {int kobj; } ;


 struct amdgpu_ras* amdgpu_ras_get_context (struct amdgpu_device*) ;
 int sysfs_remove_group (int *,struct attribute_group*) ;

__attribute__((used)) static int amdgpu_ras_sysfs_remove_feature_node(struct amdgpu_device *adev)
{
 struct amdgpu_ras *con = amdgpu_ras_get_context(adev);
 struct attribute *attrs[] = {
  &con->features_attr.attr,
  ((void*)0)
 };
 struct bin_attribute *bin_attrs[] = {
  &con->badpages_attr,
  ((void*)0)
 };
 struct attribute_group group = {
  .name = "ras",
  .attrs = attrs,
  .bin_attrs = bin_attrs,
 };

 sysfs_remove_group(&adev->dev->kobj, &group);

 return 0;
}
