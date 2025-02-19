
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extcon_dev {char* name; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct extcon_dev* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t name_show(struct device *dev, struct device_attribute *attr,
  char *buf)
{
 struct extcon_dev *edev = dev_get_drvdata(dev);

 return sprintf(buf, "%s\n", edev->name);
}
