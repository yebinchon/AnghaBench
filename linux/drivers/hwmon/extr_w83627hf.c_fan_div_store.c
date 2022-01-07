
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct w83627hf_data {int* fan_min; int* fan_div; int update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int DIV_FROM_REG (int) ;
 int DIV_TO_REG (unsigned long) ;
 unsigned long FAN_FROM_REG (int,int ) ;
 int FAN_TO_REG (unsigned long,int ) ;
 int W83627HF_REG_FAN_MIN (int) ;
 int W83781D_REG_PIN ;
 int W83781D_REG_VBAT ;
 int W83781D_REG_VID_FANDIV ;
 struct w83627hf_data* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;
 int w83627hf_read_value (struct w83627hf_data*,int ) ;
 int w83627hf_write_value (struct w83627hf_data*,int ,int) ;

__attribute__((used)) static ssize_t
fan_div_store(struct device *dev, struct device_attribute *devattr,
       const char *buf, size_t count)
{
 int nr = to_sensor_dev_attr(devattr)->index;
 struct w83627hf_data *data = dev_get_drvdata(dev);
 unsigned long min;
 u8 reg;
 unsigned long val;
 int err;

 err = kstrtoul(buf, 10, &val);
 if (err)
  return err;

 mutex_lock(&data->update_lock);


 min = FAN_FROM_REG(data->fan_min[nr],
      DIV_FROM_REG(data->fan_div[nr]));

 data->fan_div[nr] = DIV_TO_REG(val);

 reg = (w83627hf_read_value(data, nr==2 ? W83781D_REG_PIN : W83781D_REG_VID_FANDIV)
        & (nr==0 ? 0xcf : 0x3f))
     | ((data->fan_div[nr] & 0x03) << (nr==0 ? 4 : 6));
 w83627hf_write_value(data, nr==2 ? W83781D_REG_PIN : W83781D_REG_VID_FANDIV, reg);

 reg = (w83627hf_read_value(data, W83781D_REG_VBAT)
        & ~(1 << (5 + nr)))
     | ((data->fan_div[nr] & 0x04) << (3 + nr));
 w83627hf_write_value(data, W83781D_REG_VBAT, reg);


 data->fan_min[nr] = FAN_TO_REG(min, DIV_FROM_REG(data->fan_div[nr]));
 w83627hf_write_value(data, W83627HF_REG_FAN_MIN(nr), data->fan_min[nr]);

 mutex_unlock(&data->update_lock);
 return count;
}
