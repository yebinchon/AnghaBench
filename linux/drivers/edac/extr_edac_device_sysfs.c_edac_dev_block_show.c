
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct edac_dev_sysfs_block_attribute {int (* show ) (struct kobject*,struct attribute*,char*) ;} ;
struct attribute {int dummy; } ;
typedef int ssize_t ;


 int EIO ;
 int stub1 (struct kobject*,struct attribute*,char*) ;
 struct edac_dev_sysfs_block_attribute* to_block_attr (struct attribute*) ;

__attribute__((used)) static ssize_t edac_dev_block_show(struct kobject *kobj,
    struct attribute *attr, char *buffer)
{
 struct edac_dev_sysfs_block_attribute *block_attr =
      to_block_attr(attr);

 if (block_attr->show)
  return block_attr->show(kobj, attr, buffer);
 return -EIO;
}
