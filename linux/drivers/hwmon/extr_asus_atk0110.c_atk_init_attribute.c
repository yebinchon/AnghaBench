
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sysfs_show_func ;
struct TYPE_2__ {char* name; int mode; } ;
struct device_attribute {int * store; int show; TYPE_1__ attr; } ;


 int sysfs_attr_init (TYPE_1__*) ;

__attribute__((used)) static void atk_init_attribute(struct device_attribute *attr, char *name,
  sysfs_show_func show)
{
 sysfs_attr_init(&attr->attr);
 attr->attr.name = name;
 attr->attr.mode = 0444;
 attr->show = show;
 attr->store = ((void*)0);
}
