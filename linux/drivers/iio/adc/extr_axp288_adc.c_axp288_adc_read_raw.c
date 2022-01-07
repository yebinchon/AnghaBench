
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int mlock; int dev; } ;
struct iio_chan_spec {int address; } ;
struct axp288_adc_info {int regmap; } ;


 int AXP288_ADC_TS_CURRENT_ON ;
 int AXP288_ADC_TS_CURRENT_ON_ONDEMAND ;
 int EINVAL ;

 int axp288_adc_read_channel (int*,int ,int ) ;
 int axp288_adc_set_ts (struct axp288_adc_info*,int ,int ) ;
 int dev_err (int *,char*) ;
 struct axp288_adc_info* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int axp288_adc_read_raw(struct iio_dev *indio_dev,
   struct iio_chan_spec const *chan,
   int *val, int *val2, long mask)
{
 int ret;
 struct axp288_adc_info *info = iio_priv(indio_dev);

 mutex_lock(&indio_dev->mlock);
 switch (mask) {
 case 128:
  if (axp288_adc_set_ts(info, AXP288_ADC_TS_CURRENT_ON_ONDEMAND,
     chan->address)) {
   dev_err(&indio_dev->dev, "GPADC mode\n");
   ret = -EINVAL;
   break;
  }
  ret = axp288_adc_read_channel(val, chan->address, info->regmap);
  if (axp288_adc_set_ts(info, AXP288_ADC_TS_CURRENT_ON,
      chan->address))
   dev_err(&indio_dev->dev, "TS pin restore\n");
  break;
 default:
  ret = -EINVAL;
 }
 mutex_unlock(&indio_dev->mlock);

 return ret;
}
