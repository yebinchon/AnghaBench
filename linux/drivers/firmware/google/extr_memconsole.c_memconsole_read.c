
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int (* private ) (char*,int ,size_t) ;} ;
typedef int ssize_t ;
typedef int loff_t ;


 int EIO ;
 scalar_t__ WARN_ON_ONCE (int) ;

__attribute__((used)) static ssize_t memconsole_read(struct file *filp, struct kobject *kobp,
          struct bin_attribute *bin_attr, char *buf,
          loff_t pos, size_t count)
{
 ssize_t (*memconsole_read_func)(char *, loff_t, size_t);

 memconsole_read_func = bin_attr->private;
 if (WARN_ON_ONCE(!memconsole_read_func))
  return -EIO;

 return memconsole_read_func(buf, pos, count);
}
