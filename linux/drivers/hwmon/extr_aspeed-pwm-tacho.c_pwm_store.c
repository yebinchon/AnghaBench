
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct aspeed_pwm_tacho_data {long* pwm_port_fan_ctrl; } ;
typedef int ssize_t ;


 int EINVAL ;
 long PWM_MAX ;
 int aspeed_set_pwm_port_fan_ctrl (struct aspeed_pwm_tacho_data*,int,long) ;
 struct aspeed_pwm_tacho_data* dev_get_drvdata (struct device*) ;
 int kstrtol (char const*,int,long*) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t pwm_store(struct device *dev, struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct sensor_device_attribute *sensor_attr = to_sensor_dev_attr(attr);
 int index = sensor_attr->index;
 int ret;
 struct aspeed_pwm_tacho_data *priv = dev_get_drvdata(dev);
 long fan_ctrl;

 ret = kstrtol(buf, 10, &fan_ctrl);
 if (ret != 0)
  return ret;

 if (fan_ctrl < 0 || fan_ctrl > PWM_MAX)
  return -EINVAL;

 if (priv->pwm_port_fan_ctrl[index] == fan_ctrl)
  return count;

 priv->pwm_port_fan_ctrl[index] = fan_ctrl;
 aspeed_set_pwm_port_fan_ctrl(priv, index, fan_ctrl);

 return count;
}
