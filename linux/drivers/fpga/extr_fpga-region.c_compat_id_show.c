
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fpga_region {TYPE_1__* compat_id; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {scalar_t__ id_l; scalar_t__ id_h; } ;


 int ENOENT ;
 int sprintf (char*,char*,unsigned long long,unsigned long long) ;
 struct fpga_region* to_fpga_region (struct device*) ;

__attribute__((used)) static ssize_t compat_id_show(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 struct fpga_region *region = to_fpga_region(dev);

 if (!region->compat_id)
  return -ENOENT;

 return sprintf(buf, "%016llx%016llx\n",
         (unsigned long long)region->compat_id->id_h,
         (unsigned long long)region->compat_id->id_l);
}
