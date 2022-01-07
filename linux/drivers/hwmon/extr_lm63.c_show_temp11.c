
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct sensor_device_attribute {int index; } ;
struct lm63_data {int temp2_offset; scalar_t__* temp11; scalar_t__ remote_unsigned; scalar_t__ temp11u; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int TEMP11_FROM_REG (scalar_t__) ;
 struct lm63_data* lm63_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_temp11(struct device *dev, struct device_attribute *devattr,
      char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct lm63_data *data = lm63_update_device(dev);
 int nr = attr->index;
 int temp;

 if (!nr) {




  if (data->temp11u)
   temp = TEMP11_FROM_REG(data->temp11u);
  else
   temp = TEMP11_FROM_REG(data->temp11[nr]);
 } else {
  if (data->remote_unsigned && nr == 2)
   temp = TEMP11_FROM_REG((u16)data->temp11[nr]);
  else
   temp = TEMP11_FROM_REG(data->temp11[nr]);
 }
 return sprintf(buf, "%d\n", temp + data->temp2_offset);
}
