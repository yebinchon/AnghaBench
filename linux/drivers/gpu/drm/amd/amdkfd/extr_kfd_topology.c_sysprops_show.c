
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct attribute {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int platform_rev; int platform_id; int platform_oem; struct attribute attr_props; int generation_count; struct attribute attr_genid; } ;


 int EINVAL ;
 TYPE_1__ sys_props ;
 int sysfs_show_32bit_val (char*,int ) ;
 int sysfs_show_64bit_prop (char*,char*,int ) ;

__attribute__((used)) static ssize_t sysprops_show(struct kobject *kobj, struct attribute *attr,
  char *buffer)
{
 ssize_t ret;


 buffer[0] = 0;

 if (attr == &sys_props.attr_genid) {
  ret = sysfs_show_32bit_val(buffer, sys_props.generation_count);
 } else if (attr == &sys_props.attr_props) {
  sysfs_show_64bit_prop(buffer, "platform_oem",
    sys_props.platform_oem);
  sysfs_show_64bit_prop(buffer, "platform_id",
    sys_props.platform_id);
  ret = sysfs_show_64bit_prop(buffer, "platform_rev",
    sys_props.platform_rev);
 } else {
  ret = -EINVAL;
 }

 return ret;
}
