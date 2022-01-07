
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipack_device {int id_format; int id_vendor; int id_device; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int,int,int) ;
 struct ipack_device* to_ipack_dev (struct device*) ;

__attribute__((used)) static ssize_t modalias_show(struct device *dev, struct device_attribute *attr,
        char *buf)
{
 struct ipack_device *idev = to_ipack_dev(dev);

 return sprintf(buf, "ipac:f%02Xv%08Xd%08X", idev->id_format,
         idev->id_vendor, idev->id_device);
}
