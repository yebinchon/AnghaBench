
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct aspeed_pwm_tacho_data {int* pwm_port_fan_ctrl; } ;
typedef int ssize_t ;


 struct aspeed_pwm_tacho_data* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t pwm_show(struct device *dev, struct device_attribute *attr,
   char *buf)
{
 struct sensor_device_attribute *sensor_attr = to_sensor_dev_attr(attr);
 int index = sensor_attr->index;
 struct aspeed_pwm_tacho_data *priv = dev_get_drvdata(dev);

 return sprintf(buf, "%u\n", priv->pwm_port_fan_ctrl[index]);
}
