
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adc128_data {int alarms; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 scalar_t__ IS_ERR (struct adc128_data*) ;
 int PTR_ERR (struct adc128_data*) ;
 struct adc128_data* adc128_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t adc128_alarm_show(struct device *dev,
     struct device_attribute *attr, char *buf)
{
 struct adc128_data *data = adc128_update_device(dev);
 int mask = 1 << to_sensor_dev_attr(attr)->index;
 u8 alarms;

 if (IS_ERR(data))
  return PTR_ERR(data);





 alarms = data->alarms;
 data->alarms &= ~mask;

 return sprintf(buf, "%u\n", !!(alarms & mask));
}
