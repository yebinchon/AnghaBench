
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {size_t index; } ;
struct powr1220_data {int* adc_maxes; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct powr1220_data* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t powr1220_max_show(struct device *dev,
     struct device_attribute *dev_attr, char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(dev_attr);
 struct powr1220_data *data = dev_get_drvdata(dev);

 return sprintf(buf, "%d\n", data->adc_maxes[attr->index]);
}
