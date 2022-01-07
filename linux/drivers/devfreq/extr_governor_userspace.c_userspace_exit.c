
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ sd; } ;
struct TYPE_3__ {TYPE_2__ kobj; } ;
struct devfreq {int * data; TYPE_1__ dev; } ;


 int dev_attr_group ;
 int kfree (int *) ;
 int sysfs_remove_group (TYPE_2__*,int *) ;

__attribute__((used)) static void userspace_exit(struct devfreq *devfreq)
{




 if (devfreq->dev.kobj.sd)
  sysfs_remove_group(&devfreq->dev.kobj, &dev_attr_group);

 kfree(devfreq->data);
 devfreq->data = ((void*)0);
}
