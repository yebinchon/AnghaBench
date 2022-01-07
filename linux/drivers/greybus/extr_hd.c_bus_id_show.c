
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_host_device {int bus_id; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 struct gb_host_device* to_gb_host_device (struct device*) ;

__attribute__((used)) static ssize_t bus_id_show(struct device *dev,
      struct device_attribute *attr, char *buf)
{
 struct gb_host_device *hd = to_gb_host_device(dev);

 return sprintf(buf, "%d\n", hd->bus_id);
}
