
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct max6697_data {int** temp; scalar_t__ temp_offset; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int nr; int index; } ;


 scalar_t__ IS_ERR (struct max6697_data*) ;
 int PTR_ERR (struct max6697_data*) ;
 struct max6697_data* max6697_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 TYPE_1__* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t temp_show(struct device *dev, struct device_attribute *devattr,
    char *buf)
{
 int nr = to_sensor_dev_attr_2(devattr)->nr;
 int index = to_sensor_dev_attr_2(devattr)->index;
 struct max6697_data *data = max6697_update_device(dev);
 int temp;

 if (IS_ERR(data))
  return PTR_ERR(data);

 temp = data->temp[nr][index];
 temp -= data->temp_offset;

 return sprintf(buf, "%d\n", temp * 1000);
}
