
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct rmi_device {TYPE_1__ dev; } ;


 int rmi_firmware_attr_group ;
 int sysfs_create_group (int *,int *) ;

int rmi_f34_create_sysfs(struct rmi_device *rmi_dev)
{
 return sysfs_create_group(&rmi_dev->dev.kobj, &rmi_firmware_attr_group);
}
