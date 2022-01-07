
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct max6697_data {int** temp; int temp_offset; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 scalar_t__ IS_ERR (struct max6697_data*) ;
 size_t MAX6697_TEMP_EXT ;
 size_t MAX6697_TEMP_INPUT ;
 int PTR_ERR (struct max6697_data*) ;
 struct max6697_data* max6697_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t temp_input_show(struct device *dev,
          struct device_attribute *devattr, char *buf)
{
 int index = to_sensor_dev_attr(devattr)->index;
 struct max6697_data *data = max6697_update_device(dev);
 int temp;

 if (IS_ERR(data))
  return PTR_ERR(data);

 temp = (data->temp[index][MAX6697_TEMP_INPUT] - data->temp_offset) << 3;
 temp |= data->temp[index][MAX6697_TEMP_EXT] >> 5;

 return sprintf(buf, "%d\n", temp * 125);
}
