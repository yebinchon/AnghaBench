
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct w83627hf_data {int beep_mask; int update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int EINVAL ;
 int W83781D_REG_BEEP_INTS1 ;
 int W83781D_REG_BEEP_INTS2 ;
 int W83781D_REG_BEEP_INTS3 ;
 struct w83627hf_data* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;
 int w83627hf_read_value (struct w83627hf_data*,int ) ;
 int w83627hf_write_value (struct w83627hf_data*,int ,int) ;

__attribute__((used)) static ssize_t
beep_store(struct device *dev, struct device_attribute *attr, const char *buf,
    size_t count)
{
 struct w83627hf_data *data = dev_get_drvdata(dev);
 int bitnr = to_sensor_dev_attr(attr)->index;
 u8 reg;
 unsigned long bit;
 int err;

 err = kstrtoul(buf, 10, &bit);
 if (err)
  return err;

 if (bit & ~1)
  return -EINVAL;

 mutex_lock(&data->update_lock);
 if (bit)
  data->beep_mask |= (1 << bitnr);
 else
  data->beep_mask &= ~(1 << bitnr);

 if (bitnr < 8) {
  reg = w83627hf_read_value(data, W83781D_REG_BEEP_INTS1);
  if (bit)
   reg |= (1 << bitnr);
  else
   reg &= ~(1 << bitnr);
  w83627hf_write_value(data, W83781D_REG_BEEP_INTS1, reg);
 } else if (bitnr < 16) {
  reg = w83627hf_read_value(data, W83781D_REG_BEEP_INTS2);
  if (bit)
   reg |= (1 << (bitnr - 8));
  else
   reg &= ~(1 << (bitnr - 8));
  w83627hf_write_value(data, W83781D_REG_BEEP_INTS2, reg);
 } else {
  reg = w83627hf_read_value(data, W83781D_REG_BEEP_INTS3);
  if (bit)
   reg |= (1 << (bitnr - 16));
  else
   reg &= ~(1 << (bitnr - 16));
  w83627hf_write_value(data, W83781D_REG_BEEP_INTS3, reg);
 }
 mutex_unlock(&data->update_lock);

 return count;
}
