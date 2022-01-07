
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct i5k_amb_data {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int amb_reg_temp_mid (int ) ;
 int amb_write_byte (struct i5k_amb_data*,int ,unsigned long) ;
 struct i5k_amb_data* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t store_amb_mid(struct device *dev,
        struct device_attribute *devattr,
        const char *buf,
        size_t count)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct i5k_amb_data *data = dev_get_drvdata(dev);
 unsigned long temp;
 int ret = kstrtoul(buf, 10, &temp);
 if (ret < 0)
  return ret;

 temp = temp / 500;
 if (temp > 255)
  temp = 255;

 amb_write_byte(data, amb_reg_temp_mid(attr->index), temp);
 return count;
}
