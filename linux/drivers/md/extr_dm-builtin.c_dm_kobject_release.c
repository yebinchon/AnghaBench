
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;


 int complete (int ) ;
 int dm_get_completion_from_kobject (struct kobject*) ;

void dm_kobject_release(struct kobject *kobj)
{
 complete(dm_get_completion_from_kobject(kobj));
}
