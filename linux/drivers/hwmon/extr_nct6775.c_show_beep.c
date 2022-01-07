
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {size_t index; } ;
struct nct6775_data {int* BEEP_BITS; int beeps; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct nct6775_data* nct6775_update_device (struct device*) ;
 int sprintf (char*,char*,unsigned int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t
show_beep(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct sensor_device_attribute *sattr = to_sensor_dev_attr(attr);
 struct nct6775_data *data = nct6775_update_device(dev);
 int nr = data->BEEP_BITS[sattr->index];

 return sprintf(buf, "%u\n",
         (unsigned int)((data->beeps >> nr) & 0x01));
}
