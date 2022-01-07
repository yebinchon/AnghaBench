
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct edac_dev_sysfs_block_attribute {int (* store ) (struct kobject*,struct attribute*,char const*,size_t) ;} ;
struct attribute {int dummy; } ;
typedef int ssize_t ;


 int EIO ;
 int stub1 (struct kobject*,struct attribute*,char const*,size_t) ;
 struct edac_dev_sysfs_block_attribute* to_block_attr (struct attribute*) ;

__attribute__((used)) static ssize_t edac_dev_block_store(struct kobject *kobj,
    struct attribute *attr,
    const char *buffer, size_t count)
{
 struct edac_dev_sysfs_block_attribute *block_attr;

 block_attr = to_block_attr(attr);

 if (block_attr->store)
  return block_attr->store(kobj, attr, buffer, count);
 return -EIO;
}
