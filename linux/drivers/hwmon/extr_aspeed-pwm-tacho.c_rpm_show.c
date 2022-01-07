
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct aspeed_pwm_tacho_data {int dummy; } ;
typedef int ssize_t ;


 int aspeed_get_fan_tach_ch_rpm (struct aspeed_pwm_tacho_data*,int) ;
 struct aspeed_pwm_tacho_data* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t rpm_show(struct device *dev, struct device_attribute *attr,
   char *buf)
{
 struct sensor_device_attribute *sensor_attr = to_sensor_dev_attr(attr);
 int index = sensor_attr->index;
 int rpm;
 struct aspeed_pwm_tacho_data *priv = dev_get_drvdata(dev);

 rpm = aspeed_get_fan_tach_ch_rpm(priv, index);
 if (rpm < 0)
  return rpm;

 return sprintf(buf, "%d\n", rpm);
}
