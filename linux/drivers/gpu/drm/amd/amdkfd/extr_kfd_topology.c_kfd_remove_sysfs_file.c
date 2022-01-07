
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct attribute {int dummy; } ;


 int kobject_del (struct kobject*) ;
 int kobject_put (struct kobject*) ;
 int sysfs_remove_file (struct kobject*,struct attribute*) ;

__attribute__((used)) static void kfd_remove_sysfs_file(struct kobject *kobj, struct attribute *attr)
{
 sysfs_remove_file(kobj, attr);
 kobject_del(kobj);
 kobject_put(kobj);
}
