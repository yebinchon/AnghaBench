
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {size_t index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ad7418_data {int * temp; } ;
typedef int ssize_t ;


 int LM75_TEMP_FROM_REG (int ) ;
 int ad7418_update_device (struct device*) ;
 struct ad7418_data* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t temp_show(struct device *dev, struct device_attribute *devattr,
    char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct ad7418_data *data = dev_get_drvdata(dev);
 int ret;

 ret = ad7418_update_device(dev);
 if (ret < 0)
  return ret;

 return sprintf(buf, "%d\n",
  LM75_TEMP_FROM_REG(data->temp[attr->index]));
}
