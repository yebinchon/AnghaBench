
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gnss_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 char* gnss_type_name (struct gnss_device*) ;
 int sprintf (char*,char*,char*) ;
 struct gnss_device* to_gnss_device (struct device*) ;

__attribute__((used)) static ssize_t type_show(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct gnss_device *gdev = to_gnss_device(dev);

 return sprintf(buf, "%s\n", gnss_type_name(gdev));
}
