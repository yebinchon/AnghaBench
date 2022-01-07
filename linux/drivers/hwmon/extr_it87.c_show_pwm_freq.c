
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct it87_data {int extra; int fan_ctl; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ has_newer_autopwm (struct it87_data*) ;
 scalar_t__ has_pwm_freq2 (struct it87_data*) ;
 struct it87_data* it87_update_device (struct device*) ;
 int* pwm_freq ;
 int sprintf (char*,char*,unsigned int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_pwm_freq(struct device *dev, struct device_attribute *attr,
        char *buf)
{
 struct sensor_device_attribute *sensor_attr = to_sensor_dev_attr(attr);
 struct it87_data *data = it87_update_device(dev);
 int nr = sensor_attr->index;
 unsigned int freq;
 int index;

 if (has_pwm_freq2(data) && nr == 1)
  index = (data->extra >> 4) & 0x07;
 else
  index = (data->fan_ctl >> 4) & 0x07;

 freq = pwm_freq[index] / (has_newer_autopwm(data) ? 256 : 128);

 return sprintf(buf, "%u\n", freq);
}
