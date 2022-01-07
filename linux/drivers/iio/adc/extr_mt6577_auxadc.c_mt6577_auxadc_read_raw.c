
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mt6577_auxadc_device {TYPE_2__* dev_comp; } ;
struct TYPE_3__ {int parent; } ;
struct iio_dev {TYPE_1__ dev; } ;
struct iio_chan_spec {int channel; } ;
struct TYPE_4__ {int sample_data_cali; } ;


 int EINVAL ;

 int IIO_VAL_INT ;
 int dev_err (int ,char*,int ) ;
 struct mt6577_auxadc_device* iio_priv (struct iio_dev*) ;
 int mt6577_auxadc_read (struct iio_dev*,struct iio_chan_spec const*) ;
 int mt_auxadc_get_cali_data (int,int) ;

__attribute__((used)) static int mt6577_auxadc_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan,
      int *val,
      int *val2,
      long info)
{
 struct mt6577_auxadc_device *adc_dev = iio_priv(indio_dev);

 switch (info) {
 case 128:
  *val = mt6577_auxadc_read(indio_dev, chan);
  if (*val < 0) {
   dev_err(indio_dev->dev.parent,
    "failed to sample data on channel[%d]\n",
    chan->channel);
   return *val;
  }
  if (adc_dev->dev_comp->sample_data_cali)
   *val = mt_auxadc_get_cali_data(*val, 1);
  return IIO_VAL_INT;

 default:
  return -EINVAL;
 }
}
