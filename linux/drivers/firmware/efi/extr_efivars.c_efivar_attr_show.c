
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct efivar_entry {int dummy; } ;
struct efivar_attribute {int (* show ) (struct efivar_entry*,char*) ;} ;
struct attribute {int dummy; } ;
typedef int ssize_t ;


 int CAP_SYS_ADMIN ;
 int EACCES ;
 int EIO ;
 int capable (int ) ;
 int stub1 (struct efivar_entry*,char*) ;
 struct efivar_attribute* to_efivar_attr (struct attribute*) ;
 struct efivar_entry* to_efivar_entry (struct kobject*) ;

__attribute__((used)) static ssize_t efivar_attr_show(struct kobject *kobj, struct attribute *attr,
    char *buf)
{
 struct efivar_entry *var = to_efivar_entry(kobj);
 struct efivar_attribute *efivar_attr = to_efivar_attr(attr);
 ssize_t ret = -EIO;

 if (!capable(CAP_SYS_ADMIN))
  return -EACCES;

 if (efivar_attr->show) {
  ret = efivar_attr->show(var, buf);
 }
 return ret;
}
