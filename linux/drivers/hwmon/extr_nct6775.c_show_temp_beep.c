
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct nct6775_data {int* BEEP_BITS; int beeps; int num_temp_beeps; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int TEMP_ALARM_BASE ;
 int find_temp_source (struct nct6775_data*,int ,int ) ;
 struct nct6775_data* nct6775_update_device (struct device*) ;
 int sprintf (char*,char*,unsigned int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t
show_temp_beep(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct sensor_device_attribute *sattr = to_sensor_dev_attr(attr);
 struct nct6775_data *data = nct6775_update_device(dev);
 unsigned int beep = 0;
 int nr;






 nr = find_temp_source(data, sattr->index, data->num_temp_beeps);
 if (nr >= 0) {
  int bit = data->BEEP_BITS[nr + TEMP_ALARM_BASE];

  beep = (data->beeps >> bit) & 0x01;
 }
 return sprintf(buf, "%u\n", beep);
}
