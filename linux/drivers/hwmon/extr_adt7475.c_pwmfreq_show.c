
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute_2 {size_t index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7475_data {int* range; } ;
typedef int ssize_t ;


 scalar_t__ ARRAY_SIZE (int*) ;
 scalar_t__ IS_ERR (struct adt7475_data*) ;
 int PTR_ERR (struct adt7475_data*) ;
 struct adt7475_data* adt7475_update_device (struct device*) ;
 int clamp_val (int,int ,scalar_t__) ;
 int* pwmfreq_table ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t pwmfreq_show(struct device *dev, struct device_attribute *attr,
       char *buf)
{
 struct adt7475_data *data = adt7475_update_device(dev);
 struct sensor_device_attribute_2 *sattr = to_sensor_dev_attr_2(attr);
 int idx;

 if (IS_ERR(data))
  return PTR_ERR(data);
 idx = clamp_val(data->range[sattr->index] & 0xf, 0,
   ARRAY_SIZE(pwmfreq_table) - 1);

 return sprintf(buf, "%d\n", pwmfreq_table[idx]);
}
