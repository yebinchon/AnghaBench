
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sensor_device_attribute {int index; } ;
struct it87_data {int sensor; int extra; int update_lock; scalar_t__ valid; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int IT87_REG_TEMP_ENABLE ;
 int IT87_REG_TEMP_EXTRA ;
 struct it87_data* dev_get_drvdata (struct device*) ;
 int dev_warn (struct device*,char*) ;
 scalar_t__ has_temp_old_peci (struct it87_data*,int) ;
 scalar_t__ has_temp_peci (struct it87_data*,int) ;
 int it87_read_value (struct it87_data*,int ) ;
 int it87_write_value (struct it87_data*,int ,int) ;
 scalar_t__ kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_temp_type(struct device *dev, struct device_attribute *attr,
        const char *buf, size_t count)
{
 struct sensor_device_attribute *sensor_attr = to_sensor_dev_attr(attr);
 int nr = sensor_attr->index;

 struct it87_data *data = dev_get_drvdata(dev);
 long val;
 u8 reg, extra;

 if (kstrtol(buf, 10, &val) < 0)
  return -EINVAL;

 reg = it87_read_value(data, IT87_REG_TEMP_ENABLE);
 reg &= ~(1 << nr);
 reg &= ~(8 << nr);
 if (has_temp_peci(data, nr) && (reg >> 6 == nr + 1 || val == 6))
  reg &= 0x3f;
 extra = it87_read_value(data, IT87_REG_TEMP_EXTRA);
 if (has_temp_old_peci(data, nr) && ((extra & 0x80) || val == 6))
  extra &= 0x7f;
 if (val == 2) {
  dev_warn(dev,
    "Sensor type 2 is deprecated, please use 4 instead\n");
  val = 4;
 }

 if (val == 3)
  reg |= 1 << nr;
 else if (val == 4)
  reg |= 8 << nr;
 else if (has_temp_peci(data, nr) && val == 6)
  reg |= (nr + 1) << 6;
 else if (has_temp_old_peci(data, nr) && val == 6)
  extra |= 0x80;
 else if (val != 0)
  return -EINVAL;

 mutex_lock(&data->update_lock);
 data->sensor = reg;
 data->extra = extra;
 it87_write_value(data, IT87_REG_TEMP_ENABLE, data->sensor);
 if (has_temp_old_peci(data, nr))
  it87_write_value(data, IT87_REG_TEMP_EXTRA, data->extra);
 data->valid = 0;
 mutex_unlock(&data->update_lock);
 return count;
}
