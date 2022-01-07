
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct pm8xxx_xoadc {int dev; int * graph; } ;
struct pm8xxx_chan_info {size_t calibration; TYPE_1__* hwchan; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int address; } ;
struct TYPE_2__ {int prescale; int scale_fn_type; } ;


 int EINVAL ;


 int IIO_VAL_INT ;
 size_t VADC_CALIB_ABSOLUTE ;
 int dev_err (int ,char*,int ) ;
 struct pm8xxx_xoadc* iio_priv (struct iio_dev*) ;
 struct pm8xxx_chan_info* pm8xxx_get_channel (struct pm8xxx_xoadc*,int ) ;
 int pm8xxx_read_channel (struct pm8xxx_xoadc*,struct pm8xxx_chan_info const*,scalar_t__*) ;
 int qcom_vadc_scale (int ,int *,int *,int,scalar_t__,int*) ;

__attribute__((used)) static int pm8xxx_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan,
      int *val, int *val2, long mask)
{
 struct pm8xxx_xoadc *adc = iio_priv(indio_dev);
 const struct pm8xxx_chan_info *ch;
 u16 adc_code;
 int ret;

 switch (mask) {
 case 129:
  ch = pm8xxx_get_channel(adc, chan->address);
  if (!ch) {
   dev_err(adc->dev, "no such channel %lu\n",
    chan->address);
   return -EINVAL;
  }
  ret = pm8xxx_read_channel(adc, ch, &adc_code);
  if (ret)
   return ret;

  ret = qcom_vadc_scale(ch->hwchan->scale_fn_type,
          &adc->graph[ch->calibration],
          &ch->hwchan->prescale,
          (ch->calibration == VADC_CALIB_ABSOLUTE),
          adc_code, val);
  if (ret)
   return ret;

  return IIO_VAL_INT;
 case 128:
  ch = pm8xxx_get_channel(adc, chan->address);
  if (!ch) {
   dev_err(adc->dev, "no such channel %lu\n",
    chan->address);
   return -EINVAL;
  }
  ret = pm8xxx_read_channel(adc, ch, &adc_code);
  if (ret)
   return ret;

  *val = (int)adc_code;
  return IIO_VAL_INT;
 default:
  return -EINVAL;
 }
}
