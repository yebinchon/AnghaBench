
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rmi_function {TYPE_2__* rmi_dev; } ;
struct TYPE_3__ {int kobj; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int rmi_f01_attr_group ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static void rmi_f01_remove(struct rmi_function *fn)
{

 sysfs_remove_group(&fn->rmi_dev->dev.kobj, &rmi_f01_attr_group);
}
