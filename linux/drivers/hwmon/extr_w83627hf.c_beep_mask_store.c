
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83627hf_data {int beep_mask; int update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int BEEP_MASK_TO_REG (unsigned long) ;
 int W83781D_REG_BEEP_INTS1 ;
 int W83781D_REG_BEEP_INTS2 ;
 int W83781D_REG_BEEP_INTS3 ;
 struct w83627hf_data* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int w83627hf_write_value (struct w83627hf_data*,int ,int) ;

__attribute__((used)) static ssize_t
beep_mask_store(struct device *dev, struct device_attribute *attr,
  const char *buf, size_t count)
{
 struct w83627hf_data *data = dev_get_drvdata(dev);
 unsigned long val;
 int err;

 err = kstrtoul(buf, 10, &val);
 if (err)
  return err;

 mutex_lock(&data->update_lock);


 data->beep_mask = (data->beep_mask & 0x8000)
   | BEEP_MASK_TO_REG(val);
 w83627hf_write_value(data, W83781D_REG_BEEP_INTS1,
       data->beep_mask & 0xff);
 w83627hf_write_value(data, W83781D_REG_BEEP_INTS3,
       ((data->beep_mask) >> 16) & 0xff);
 w83627hf_write_value(data, W83781D_REG_BEEP_INTS2,
       (data->beep_mask >> 8) & 0xff);

 mutex_unlock(&data->update_lock);
 return count;
}
