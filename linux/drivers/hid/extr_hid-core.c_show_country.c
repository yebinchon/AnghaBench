
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int country; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 struct hid_device* to_hid_device (struct device*) ;

__attribute__((used)) static ssize_t
show_country(struct device *dev, struct device_attribute *attr,
  char *buf)
{
 struct hid_device *hdev = to_hid_device(dev);

 return sprintf(buf, "%02x\n", hdev->country & 0xff);
}
