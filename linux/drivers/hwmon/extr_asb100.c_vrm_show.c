
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct asb100_data {int vrm; } ;
typedef int ssize_t ;


 struct asb100_data* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t vrm_show(struct device *dev, struct device_attribute *attr,
  char *buf)
{
 struct asb100_data *data = dev_get_drvdata(dev);
 return sprintf(buf, "%d\n", data->vrm);
}
