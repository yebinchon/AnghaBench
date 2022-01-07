
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int attr; } ;
struct amdgpu_hive_info {int * kobj; TYPE_1__ dev_attr; } ;
struct amdgpu_device {int dummy; } ;


 int kobject_del (int *) ;
 int kobject_put (int *) ;
 int sysfs_remove_file (int *,int *) ;

__attribute__((used)) static void amdgpu_xgmi_sysfs_destroy(struct amdgpu_device *adev,
        struct amdgpu_hive_info *hive)
{
 sysfs_remove_file(hive->kobj, &hive->dev_attr.attr);
 kobject_del(hive->kobj);
 kobject_put(hive->kobj);
 hive->kobj = ((void*)0);
}
