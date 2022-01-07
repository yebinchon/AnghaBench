
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_device {int is_local; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct fw_device* fw_device (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t is_local_show(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 struct fw_device *device = fw_device(dev);

 return sprintf(buf, "%u\n", device->is_local);
}
