
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sensor_device_attribute_2 {int nr; int index; } ;
struct it87_data {int** temp; int update_lock; int valid; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int IT87_REG_BEEP_ENABLE ;
 int IT87_REG_TEMP_HIGH (int) ;
 int IT87_REG_TEMP_LOW (int) ;
 int* IT87_REG_TEMP_OFFSET ;
 int TEMP_TO_REG (long) ;
 struct it87_data* dev_get_drvdata (struct device*) ;
 int it87_read_value (struct it87_data*,int) ;
 int it87_write_value (struct it87_data*,int,int) ;
 scalar_t__ kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_temp(struct device *dev, struct device_attribute *attr,
   const char *buf, size_t count)
{
 struct sensor_device_attribute_2 *sattr = to_sensor_dev_attr_2(attr);
 int nr = sattr->nr;
 int index = sattr->index;
 struct it87_data *data = dev_get_drvdata(dev);
 long val;
 u8 reg, regval;

 if (kstrtol(buf, 10, &val) < 0)
  return -EINVAL;

 mutex_lock(&data->update_lock);

 switch (index) {
 default:
 case 1:
  reg = IT87_REG_TEMP_LOW(nr);
  break;
 case 2:
  reg = IT87_REG_TEMP_HIGH(nr);
  break;
 case 3:
  regval = it87_read_value(data, IT87_REG_BEEP_ENABLE);
  if (!(regval & 0x80)) {
   regval |= 0x80;
   it87_write_value(data, IT87_REG_BEEP_ENABLE, regval);
  }
  data->valid = 0;
  reg = IT87_REG_TEMP_OFFSET[nr];
  break;
 }

 data->temp[nr][index] = TEMP_TO_REG(val);
 it87_write_value(data, reg, data->temp[nr][index]);
 mutex_unlock(&data->update_lock);
 return count;
}
