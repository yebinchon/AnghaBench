
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct edac_device_instance {TYPE_1__* ctl; } ;
struct TYPE_2__ {int kobj; } ;


 int edac_dbg (int,char*) ;
 int kobject_put (int *) ;
 struct edac_device_instance* to_instance (struct kobject*) ;

__attribute__((used)) static void edac_device_ctrl_instance_release(struct kobject *kobj)
{
 struct edac_device_instance *instance;

 edac_dbg(1, "\n");




 instance = to_instance(kobj);
 kobject_put(&instance->ctl->kobj);
}
