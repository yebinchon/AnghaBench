
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int parent; } ;
struct dmi_entry_attr_show_data {char* buf; struct attribute* attr; } ;
struct attribute {int dummy; } ;
typedef int ssize_t ;


 int dmi_entry_attr_show_helper ;
 int find_dmi_entry (int ,int ,struct dmi_entry_attr_show_data*) ;
 int to_entry (int ) ;

__attribute__((used)) static ssize_t dmi_entry_attr_show(struct kobject *kobj,
       struct attribute *attr,
       char *buf)
{
 struct dmi_entry_attr_show_data data = {
  .attr = attr,
  .buf = buf,
 };


 return find_dmi_entry(to_entry(kobj->parent),
         dmi_entry_attr_show_helper, &data);
}
