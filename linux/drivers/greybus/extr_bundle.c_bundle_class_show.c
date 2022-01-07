
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_bundle {int class; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 struct gb_bundle* to_gb_bundle (struct device*) ;

__attribute__((used)) static ssize_t bundle_class_show(struct device *dev,
     struct device_attribute *attr, char *buf)
{
 struct gb_bundle *bundle = to_gb_bundle(dev);

 return sprintf(buf, "0x%02x\n", bundle->class);
}
