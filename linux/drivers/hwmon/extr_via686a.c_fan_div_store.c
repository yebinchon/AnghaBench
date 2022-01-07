
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via686a_data {int* fan_div; int update_lock; } ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int DIV_TO_REG (unsigned long) ;
 int VIA686A_REG_FANDIV ;
 struct via686a_data* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;
 int via686a_read_value (struct via686a_data*,int ) ;
 int via686a_write_value (struct via686a_data*,int ,int) ;

__attribute__((used)) static ssize_t fan_div_store(struct device *dev, struct device_attribute *da,
        const char *buf, size_t count) {
 struct via686a_data *data = dev_get_drvdata(dev);
 struct sensor_device_attribute *attr = to_sensor_dev_attr(da);
 int nr = attr->index;
 int old;
 unsigned long val;
 int err;

 err = kstrtoul(buf, 10, &val);
 if (err)
  return err;

 mutex_lock(&data->update_lock);
 old = via686a_read_value(data, VIA686A_REG_FANDIV);
 data->fan_div[nr] = DIV_TO_REG(val);
 old = (old & 0x0f) | (data->fan_div[1] << 6) | (data->fan_div[0] << 4);
 via686a_write_value(data, VIA686A_REG_FANDIV, old);
 mutex_unlock(&data->update_lock);
 return count;
}
