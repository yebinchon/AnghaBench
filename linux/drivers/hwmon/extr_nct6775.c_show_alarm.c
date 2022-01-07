
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {size_t index; } ;
struct nct6775_data {int* ALARM_BITS; int alarms; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct nct6775_data* nct6775_update_device (struct device*) ;
 int sprintf (char*,char*,unsigned int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t
show_alarm(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct nct6775_data *data = nct6775_update_device(dev);
 struct sensor_device_attribute *sattr = to_sensor_dev_attr(attr);
 int nr = data->ALARM_BITS[sattr->index];

 return sprintf(buf, "%u\n",
         (unsigned int)((data->alarms >> nr) & 0x01));
}
