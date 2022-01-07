
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct kobject {int dummy; } ;
struct attribute {int mode; } ;


 int esrt_table_exists () ;

__attribute__((used)) static umode_t esrt_attr_is_visible(struct kobject *kobj,
        struct attribute *attr, int n)
{
 if (!esrt_table_exists())
  return 0;
 return attr->mode;
}
