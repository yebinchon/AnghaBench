
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {size_t index; } ;
struct max6639_data {int* pwm; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct max6639_data* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t pwm_show(struct device *dev, struct device_attribute *dev_attr,
   char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(dev_attr);
 struct max6639_data *data = dev_get_drvdata(dev);

 return sprintf(buf, "%d\n", data->pwm[attr->index] * 255 / 120);
}
