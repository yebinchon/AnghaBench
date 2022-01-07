
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute_2 {size_t index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7475_data {int* range; int lock; int ** temp; } ;
typedef int ssize_t ;


 size_t AUTOMIN ;
 scalar_t__ IS_ERR (struct adt7475_data*) ;
 int PTR_ERR (struct adt7475_data*) ;
 struct adt7475_data* adt7475_update_device (struct device*) ;
 int* autorange_table ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reg2temp (struct adt7475_data*,int ) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t point2_show(struct device *dev, struct device_attribute *attr,
      char *buf)
{
 struct adt7475_data *data = adt7475_update_device(dev);
 struct sensor_device_attribute_2 *sattr = to_sensor_dev_attr_2(attr);
 int out, val;

 if (IS_ERR(data))
  return PTR_ERR(data);

 mutex_lock(&data->lock);
 out = (data->range[sattr->index] >> 4) & 0x0F;
 val = reg2temp(data, data->temp[AUTOMIN][sattr->index]);
 mutex_unlock(&data->lock);

 return sprintf(buf, "%d\n", val + autorange_table[out]);
}
