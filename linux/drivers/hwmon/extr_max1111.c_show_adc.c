
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct max1111_data {int lsb; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 struct max1111_data* dev_get_drvdata (struct device*) ;
 int max1111_read (struct device*,int) ;
 int sprintf (char*,char*,int) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_adc(struct device *dev,
   struct device_attribute *attr, char *buf)
{
 struct max1111_data *data = dev_get_drvdata(dev);
 int channel = to_sensor_dev_attr(attr)->index;
 int ret;

 ret = max1111_read(dev, channel);
 if (ret < 0)
  return ret;





 return sprintf(buf, "%d\n", ret * data->lsb);
}
