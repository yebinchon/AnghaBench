
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct nct6683_data {size_t* temp_src; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 char** nct6683_mon_label ;
 struct nct6683_data* nct6683_update_device (struct device*) ;
 int sprintf (char*,char*,char*) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t
show_temp_label(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct sensor_device_attribute *sattr = to_sensor_dev_attr(attr);
 struct nct6683_data *data = nct6683_update_device(dev);
 int nr = sattr->index;

 return sprintf(buf, "%s\n", nct6683_mon_label[data->temp_src[nr]]);
}
