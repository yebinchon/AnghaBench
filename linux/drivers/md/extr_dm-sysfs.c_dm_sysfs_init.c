
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mapped_device {int dummy; } ;
struct TYPE_2__ {int kobj; } ;


 TYPE_1__* disk_to_dev (int ) ;
 int dm_disk (struct mapped_device*) ;
 int dm_kobject (struct mapped_device*) ;
 int dm_ktype ;
 int kobject_init_and_add (int ,int *,int *,char*,char*) ;

int dm_sysfs_init(struct mapped_device *md)
{
 return kobject_init_and_add(dm_kobject(md), &dm_ktype,
        &disk_to_dev(dm_disk(md))->kobj,
        "%s", "dm");
}
