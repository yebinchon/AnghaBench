
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct nct6683_data {int* temp_in; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct nct6683_data* nct6683_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t
show_temp16(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct sensor_device_attribute *sattr = to_sensor_dev_attr(attr);
 struct nct6683_data *data = nct6683_update_device(dev);
 int index = sattr->index;

 return sprintf(buf, "%d\n", (data->temp_in[index] / 128) * 500);
}
