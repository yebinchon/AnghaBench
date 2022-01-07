
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct w83795_data {int* temp_src; } ;
struct sensor_device_attribute_2 {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 scalar_t__ TSS_MAP_RESERVED ;
 int sprintf (char*,char*,unsigned int) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;
 scalar_t__** tss_map ;
 struct w83795_data* w83795_update_pwm_config (struct device*) ;

__attribute__((used)) static ssize_t
show_temp_src(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct sensor_device_attribute_2 *sensor_attr =
     to_sensor_dev_attr_2(attr);
 struct w83795_data *data = w83795_update_pwm_config(dev);
 int index = sensor_attr->index;
 u8 tmp = data->temp_src[index / 2];

 if (index & 1)
  tmp >>= 4;
 else
  tmp &= 0x0f;


 if (tmp >= 4 || tss_map[tmp][index] == TSS_MAP_RESERVED)
  return -EINVAL;

 return sprintf(buf, "%u\n", (unsigned int)tss_map[tmp][index] + 1);
}
