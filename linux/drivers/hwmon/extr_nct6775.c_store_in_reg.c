
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute_2 {int index; int nr; } ;
struct nct6775_data {int update_lock; int ** in; int ** REG_IN_MINMAX; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct nct6775_data* dev_get_drvdata (struct device*) ;
 int in_to_reg (unsigned long,int) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nct6775_write_value (struct nct6775_data*,int ,int ) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t
store_in_reg(struct device *dev, struct device_attribute *attr, const char *buf,
      size_t count)
{
 struct nct6775_data *data = dev_get_drvdata(dev);
 struct sensor_device_attribute_2 *sattr = to_sensor_dev_attr_2(attr);
 int index = sattr->index;
 int nr = sattr->nr;
 unsigned long val;
 int err;

 err = kstrtoul(buf, 10, &val);
 if (err < 0)
  return err;
 mutex_lock(&data->update_lock);
 data->in[nr][index] = in_to_reg(val, nr);
 nct6775_write_value(data, data->REG_IN_MINMAX[index - 1][nr],
       data->in[nr][index]);
 mutex_unlock(&data->update_lock);
 return count;
}
