
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lm85_data {int * pwm_freq; int freq_map_size; int freq_map; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int FREQ_FROM_REG (int ,int ,int ) ;
 scalar_t__ IS_ADT7468_HFPWM (struct lm85_data*) ;
 struct lm85_data* lm85_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t pwm_freq_show(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 int nr = to_sensor_dev_attr(attr)->index;
 struct lm85_data *data = lm85_update_device(dev);
 int freq;

 if (IS_ADT7468_HFPWM(data))
  freq = 22500;
 else
  freq = FREQ_FROM_REG(data->freq_map, data->freq_map_size,
         data->pwm_freq[nr]);

 return sprintf(buf, "%d\n", freq);
}
