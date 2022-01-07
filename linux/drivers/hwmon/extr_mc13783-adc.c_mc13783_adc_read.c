
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {unsigned int index; } ;
struct mc13783_adc_priv {int mc13xxx; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;


 int MC13XXX_ADC_MODE_MULT_CHAN ;
 struct mc13783_adc_priv* dev_get_drvdata (struct device*) ;
 int mc13xxx_adc_do_conversion (int ,int ,unsigned int,int ,int ,unsigned int*) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static int mc13783_adc_read(struct device *dev,
  struct device_attribute *devattr, unsigned int *val)
{
 struct mc13783_adc_priv *priv = dev_get_drvdata(dev);
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 unsigned int channel = attr->index;
 unsigned int sample[4];
 int ret;

 ret = mc13xxx_adc_do_conversion(priv->mc13xxx,
   MC13XXX_ADC_MODE_MULT_CHAN,
   channel, 0, 0, sample);
 if (ret)
  return ret;


 if (channel >= 16)
  channel = 7;

 channel &= 0x7;

 *val = (sample[channel % 4] >> (channel > 3 ? 14 : 2)) & 0x3ff;

 return 0;
}
