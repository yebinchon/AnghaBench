
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct atk_sensor_data {scalar_t__ type; } ;
typedef int ssize_t ;


 scalar_t__ HWMON_TYPE_TEMP ;
 int atk_read_value (struct atk_sensor_data*,int*) ;
 struct atk_sensor_data* input_to_atk_sensor (struct device_attribute*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t atk_input_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct atk_sensor_data *s = input_to_atk_sensor(attr);
 u64 value;
 int err;

 err = atk_read_value(s, &value);
 if (err)
  return err;

 if (s->type == HWMON_TYPE_TEMP)

  value *= 100;

 return sprintf(buf, "%llu\n", value);
}
