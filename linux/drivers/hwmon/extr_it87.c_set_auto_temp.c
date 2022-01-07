
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute_2 {int nr; int index; } ;
struct it87_data {int** auto_temp; int update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int IT87_REG_AUTO_TEMP (int,int) ;
 int TEMP_TO_REG (long) ;
 int clamp_val (int,int ,int) ;
 struct it87_data* dev_get_drvdata (struct device*) ;
 scalar_t__ has_newer_autopwm (struct it87_data*) ;
 int it87_write_value (struct it87_data*,int ,int) ;
 scalar_t__ kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_auto_temp(struct device *dev, struct device_attribute *attr,
        const char *buf, size_t count)
{
 struct it87_data *data = dev_get_drvdata(dev);
 struct sensor_device_attribute_2 *sensor_attr =
   to_sensor_dev_attr_2(attr);
 int nr = sensor_attr->nr;
 int point = sensor_attr->index;
 long val;
 int reg;

 if (kstrtol(buf, 10, &val) < 0 || val < -128000 || val > 127000)
  return -EINVAL;

 mutex_lock(&data->update_lock);
 if (has_newer_autopwm(data) && !point) {
  reg = data->auto_temp[nr][1] - TEMP_TO_REG(val);
  reg = clamp_val(reg, 0, 0x1f) | (data->auto_temp[nr][0] & 0xe0);
  data->auto_temp[nr][0] = reg;
  it87_write_value(data, IT87_REG_AUTO_TEMP(nr, 5), reg);
 } else {
  reg = TEMP_TO_REG(val);
  data->auto_temp[nr][point] = reg;
  if (has_newer_autopwm(data))
   point--;
  it87_write_value(data, IT87_REG_AUTO_TEMP(nr, point), reg);
 }
 mutex_unlock(&data->update_lock);
 return count;
}
