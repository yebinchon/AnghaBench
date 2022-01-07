
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tmp401_data {int config; int ** temp; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int nr; int index; } ;


 scalar_t__ IS_ERR (struct tmp401_data*) ;
 int PTR_ERR (struct tmp401_data*) ;
 int sprintf (char*,char*,int) ;
 int tmp401_register_to_temp (int ,int ) ;
 struct tmp401_data* tmp401_update_device (struct device*) ;
 TYPE_1__* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t temp_show(struct device *dev, struct device_attribute *devattr,
    char *buf)
{
 int nr = to_sensor_dev_attr_2(devattr)->nr;
 int index = to_sensor_dev_attr_2(devattr)->index;
 struct tmp401_data *data = tmp401_update_device(dev);

 if (IS_ERR(data))
  return PTR_ERR(data);

 return sprintf(buf, "%d\n",
  tmp401_register_to_temp(data->temp[nr][index], data->config));
}
