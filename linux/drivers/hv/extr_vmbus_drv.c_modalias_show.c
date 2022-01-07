
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hv_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int VMBUS_ALIAS_LEN ;
 struct hv_device* device_to_hv_device (struct device*) ;
 int print_alias_name (struct hv_device*,char*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t modalias_show(struct device *dev,
        struct device_attribute *dev_attr, char *buf)
{
 struct hv_device *hv_dev = device_to_hv_device(dev);
 char alias_name[VMBUS_ALIAS_LEN + 1];

 print_alias_name(hv_dev, alias_name);
 return sprintf(buf, "vmbus:%s\n", alias_name);
}
