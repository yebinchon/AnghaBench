
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct f71882fg_data {int* pwm_auto_point_hyst; int** pwm_auto_point_temp; int update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; int nr; } ;


 struct f71882fg_data* f71882fg_update_device (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int) ;
 TYPE_1__* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_pwm_auto_point_temp_hyst(struct device *dev,
          struct device_attribute *devattr,
          char *buf)
{
 int result = 0;
 struct f71882fg_data *data = f71882fg_update_device(dev);
 int nr = to_sensor_dev_attr_2(devattr)->index;
 int point = to_sensor_dev_attr_2(devattr)->nr;

 mutex_lock(&data->update_lock);
 if (nr & 1)
  result = data->pwm_auto_point_hyst[nr / 2] >> 4;
 else
  result = data->pwm_auto_point_hyst[nr / 2] & 0x0f;
 result = 1000 * (data->pwm_auto_point_temp[nr][point] - result);
 mutex_unlock(&data->update_lock);

 return sprintf(buf, "%d\n", result);
}
