
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute_2 {int index; int nr; } ;
struct it87_data {int update_lock; int ** in; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int IT87_REG_VIN_MAX (int) ;
 int IT87_REG_VIN_MIN (int) ;
 struct it87_data* dev_get_drvdata (struct device*) ;
 int in_to_reg (struct it87_data*,int,unsigned long) ;
 int it87_write_value (struct it87_data*,int ,int ) ;
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_in(struct device *dev, struct device_attribute *attr,
        const char *buf, size_t count)
{
 struct sensor_device_attribute_2 *sattr = to_sensor_dev_attr_2(attr);
 struct it87_data *data = dev_get_drvdata(dev);
 int index = sattr->index;
 int nr = sattr->nr;
 unsigned long val;

 if (kstrtoul(buf, 10, &val) < 0)
  return -EINVAL;

 mutex_lock(&data->update_lock);
 data->in[nr][index] = in_to_reg(data, nr, val);
 it87_write_value(data,
    index == 1 ? IT87_REG_VIN_MIN(nr)
        : IT87_REG_VIN_MAX(nr),
    data->in[nr][index]);
 mutex_unlock(&data->update_lock);
 return count;
}
