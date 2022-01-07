
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_device {TYPE_1__* dev; } ;
struct TYPE_2__ {int kobj; } ;


 int fw_attr_group ;
 int sysfs_remove_group (int *,int *) ;

void amdgpu_ucode_sysfs_fini(struct amdgpu_device *adev)
{
 sysfs_remove_group(&adev->dev->kobj, &fw_attr_group);
}
