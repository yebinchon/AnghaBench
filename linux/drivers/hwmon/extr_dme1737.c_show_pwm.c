
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute_2 {int index; int nr; } ;
struct dme1737_data {int* pwm; int* pwm_acz; int* pwm_min; int * pwm_rr; int * pwm_config; int * pwm_freq; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PWM_ACZ_FROM_REG (int ) ;
 int PWM_EN_FROM_REG (int ) ;
 int PWM_FREQ_FROM_REG (int ) ;
 int PWM_OFF_FROM_REG (int ,int) ;
 int PWM_RR_FROM_REG (int ,int) ;
 int dev_dbg (struct device*,char*,int) ;
 struct dme1737_data* dme1737_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_pwm(struct device *dev, struct device_attribute *attr,
   char *buf)
{
 struct dme1737_data *data = dme1737_update_device(dev);
 struct sensor_device_attribute_2
  *sensor_attr_2 = to_sensor_dev_attr_2(attr);
 int ix = sensor_attr_2->index;
 int fn = sensor_attr_2->nr;
 int res;

 switch (fn) {
 case 135:
  if (PWM_EN_FROM_REG(data->pwm_config[ix]) == 0)
   res = 255;
  else
   res = data->pwm[ix];
  break;
 case 129:
  res = PWM_FREQ_FROM_REG(data->pwm_freq[ix]);
  break;
 case 130:
  if (ix >= 3)
   res = 1;
  else
   res = PWM_EN_FROM_REG(data->pwm_config[ix]);
  break;
 case 128:

  res = PWM_RR_FROM_REG(data->pwm_rr[ix > 0], ix);
  break;
 case 134:

  if (PWM_EN_FROM_REG(data->pwm_config[ix]) == 2)
   res = PWM_ACZ_FROM_REG(data->pwm_config[ix]);
  else
   res = data->pwm_acz[ix];
  break;
 case 131:

  if (PWM_OFF_FROM_REG(data->pwm_rr[0], ix))
   res = data->pwm_min[ix];
  else
   res = 0;
  break;
 case 133:

  res = data->pwm_min[ix];
  break;
 case 132:

  res = 255;
  break;
 default:
  res = 0;
  dev_dbg(dev, "Unknown function %d.\n", fn);
 }

 return sprintf(buf, "%d\n", res);
}
