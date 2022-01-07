
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct nct6775_data {int* ALARM_BITS; int alarms; int num_temp_alarms; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int TEMP_ALARM_BASE ;
 int find_temp_source (struct nct6775_data*,int ,int ) ;
 struct nct6775_data* nct6775_update_device (struct device*) ;
 int sprintf (char*,char*,unsigned int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t
show_temp_alarm(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct sensor_device_attribute *sattr = to_sensor_dev_attr(attr);
 struct nct6775_data *data = nct6775_update_device(dev);
 unsigned int alarm = 0;
 int nr;





 nr = find_temp_source(data, sattr->index, data->num_temp_alarms);
 if (nr >= 0) {
  int bit = data->ALARM_BITS[nr + TEMP_ALARM_BASE];

  alarm = (data->alarms >> bit) & 0x01;
 }
 return sprintf(buf, "%u\n", alarm);
}
