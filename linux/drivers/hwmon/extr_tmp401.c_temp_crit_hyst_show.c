
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tmp401_data {int temp_crit_hyst; int update_lock; int config; int ** temp; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 scalar_t__ IS_ERR (struct tmp401_data*) ;
 int PTR_ERR (struct tmp401_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int) ;
 int tmp401_register_to_temp (int ,int ) ;
 struct tmp401_data* tmp401_update_device (struct device*) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t temp_crit_hyst_show(struct device *dev,
       struct device_attribute *devattr,
       char *buf)
{
 int temp, index = to_sensor_dev_attr(devattr)->index;
 struct tmp401_data *data = tmp401_update_device(dev);

 if (IS_ERR(data))
  return PTR_ERR(data);

 mutex_lock(&data->update_lock);
 temp = tmp401_register_to_temp(data->temp[3][index], data->config);
 temp -= data->temp_crit_hyst * 1000;
 mutex_unlock(&data->update_lock);

 return sprintf(buf, "%d\n", temp);
}
