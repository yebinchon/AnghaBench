
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct lm63_data {int temp2_offset; int lut_temp_hyst; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int TEMP8_FROM_REG (int ) ;
 struct lm63_data* lm63_update_device (struct device*) ;
 int lut_temp_from_reg (struct lm63_data*,int ) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_lut_temp_hyst(struct device *dev,
      struct device_attribute *devattr, char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct lm63_data *data = lm63_update_device(dev);

 return sprintf(buf, "%d\n", lut_temp_from_reg(data, attr->index)
         + data->temp2_offset
         - TEMP8_FROM_REG(data->lut_temp_hyst));
}
