
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; } ;
struct vpd_attrib_info {TYPE_1__ bin_attr; int value; } ;
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {struct vpd_attrib_info* private; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int memory_read_from_buffer (char*,size_t,int *,int ,int ) ;

__attribute__((used)) static ssize_t vpd_attrib_read(struct file *filp, struct kobject *kobp,
          struct bin_attribute *bin_attr, char *buf,
          loff_t pos, size_t count)
{
 struct vpd_attrib_info *info = bin_attr->private;

 return memory_read_from_buffer(buf, count, &pos, info->value,
           info->bin_attr.size);
}
