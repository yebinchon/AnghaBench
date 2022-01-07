
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sensor_device_attribute_2 {size_t index; int nr; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct abituguru3_data {int* alarms; int** settings; TYPE_1__* sensors; } ;
typedef int ssize_t ;
struct TYPE_2__ {int port; } ;


 int EIO ;
 struct abituguru3_data* abituguru3_update_device (struct device*) ;
 int sprintf (char*,char*) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_alarm(struct device *dev,
 struct device_attribute *devattr, char *buf)
{
 int port;
 struct sensor_device_attribute_2 *attr = to_sensor_dev_attr_2(devattr);
 struct abituguru3_data *data = abituguru3_update_device(dev);

 if (!data)
  return -EIO;

 port = data->sensors[attr->index].port;







 if ((data->alarms[port / 8] & (0x01 << (port % 8))) &&
   (!attr->nr || (data->settings[port][0] & attr->nr)))
  return sprintf(buf, "1\n");
 else
  return sprintf(buf, "0\n");
}
