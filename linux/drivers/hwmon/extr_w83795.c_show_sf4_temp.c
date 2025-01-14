
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83795_data {int*** sf4_reg; } ;
struct sensor_device_attribute_2 {int nr; int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 size_t SF4_TEMP ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;
 struct w83795_data* w83795_update_pwm_config (struct device*) ;

__attribute__((used)) static ssize_t
show_sf4_temp(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct w83795_data *data = w83795_update_pwm_config(dev);
 struct sensor_device_attribute_2 *sensor_attr =
     to_sensor_dev_attr_2(attr);
 int nr = sensor_attr->nr;
 int index = sensor_attr->index;

 return sprintf(buf, "%u\n",
  (data->sf4_reg[index][SF4_TEMP][nr]) * 1000);
}
