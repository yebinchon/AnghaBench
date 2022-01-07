
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct esre_entry {int dummy; } ;
struct esre_attribute {int (* show ) (struct esre_entry*,char*) ;} ;
struct attribute {int dummy; } ;
typedef int ssize_t ;


 int CAP_SYS_ADMIN ;
 int EACCES ;
 int capable (int ) ;
 int stub1 (struct esre_entry*,char*) ;
 struct esre_attribute* to_attr (struct attribute*) ;
 struct esre_entry* to_entry (struct kobject*) ;

__attribute__((used)) static ssize_t esre_attr_show(struct kobject *kobj,
         struct attribute *_attr, char *buf)
{
 struct esre_entry *entry = to_entry(kobj);
 struct esre_attribute *attr = to_attr(_attr);


 if (!capable(CAP_SYS_ADMIN))
  return -EACCES;

 return attr->show(entry, buf);
}
