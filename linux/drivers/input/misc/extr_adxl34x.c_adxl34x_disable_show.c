
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adxl34x {int disabled; } ;
typedef int ssize_t ;


 struct adxl34x* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t adxl34x_disable_show(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 struct adxl34x *ac = dev_get_drvdata(dev);

 return sprintf(buf, "%u\n", ac->disabled);
}
