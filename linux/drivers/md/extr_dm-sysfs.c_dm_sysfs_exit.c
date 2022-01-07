
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int dummy; } ;
struct kobject {int dummy; } ;


 int dm_get_completion_from_kobject (struct kobject*) ;
 struct kobject* dm_kobject (struct mapped_device*) ;
 int kobject_put (struct kobject*) ;
 int wait_for_completion (int ) ;

void dm_sysfs_exit(struct mapped_device *md)
{
 struct kobject *kobj = dm_kobject(md);
 kobject_put(kobj);
 wait_for_completion(dm_get_completion_from_kobject(kobj));
}
