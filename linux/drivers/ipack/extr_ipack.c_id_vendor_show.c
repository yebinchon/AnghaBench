
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipack_device {int id_format; int id_vendor; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EIO ;


 int sprintf (char*,char*,int) ;
 struct ipack_device* to_ipack_dev (struct device*) ;

__attribute__((used)) static ssize_t
id_vendor_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct ipack_device *idev = to_ipack_dev(dev);
 switch (idev->id_format) {
 case 129:
  return sprintf(buf, "0x%02x\n", idev->id_vendor);
 case 128:
  return sprintf(buf, "0x%06x\n", idev->id_vendor);
 default:
  return -EIO;
 }
}
