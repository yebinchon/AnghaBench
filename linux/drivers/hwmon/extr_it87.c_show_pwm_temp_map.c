
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct it87_data {int* pwm_temp_map; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ BIT (int) ;
 struct it87_data* it87_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_pwm_temp_map(struct device *dev,
     struct device_attribute *attr, char *buf)
{
 struct sensor_device_attribute *sensor_attr = to_sensor_dev_attr(attr);
 struct it87_data *data = it87_update_device(dev);
 int nr = sensor_attr->index;
 int map;

 map = data->pwm_temp_map[nr];
 if (map >= 3)
  map = 0;
 if (nr >= 3)
  map += 3;

 return sprintf(buf, "%d\n", (int)BIT(map));
}
