
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smsc47m1_data {int alarms; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 struct smsc47m1_data* smsc47m1_update_device (struct device*,int ) ;
 int sprintf (char*,char*,int) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t fan_alarm_show(struct device *dev,
         struct device_attribute *devattr, char *buf)
{
 int bitnr = to_sensor_dev_attr(devattr)->index;
 struct smsc47m1_data *data = smsc47m1_update_device(dev, 0);
 return sprintf(buf, "%u\n", (data->alarms >> bitnr) & 1);
}
