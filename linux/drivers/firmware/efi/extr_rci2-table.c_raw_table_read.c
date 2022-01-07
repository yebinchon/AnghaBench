
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {scalar_t__ private; } ;
typedef size_t ssize_t ;
typedef scalar_t__ loff_t ;


 int memcpy (char*,scalar_t__,size_t) ;

__attribute__((used)) static ssize_t raw_table_read(struct file *file, struct kobject *kobj,
         struct bin_attribute *attr, char *buf,
         loff_t pos, size_t count)
{
 memcpy(buf, attr->private + pos, count);
 return count;
}
