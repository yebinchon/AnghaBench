
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute_2 {int index; } ;
struct nct6683_data {int* pwm; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct nct6683_data* nct6683_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t
show_pwm(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct nct6683_data *data = nct6683_update_device(dev);
 struct sensor_device_attribute_2 *sattr = to_sensor_dev_attr_2(attr);
 int index = sattr->index;

 return sprintf(buf, "%d\n", data->pwm[index]);
}
