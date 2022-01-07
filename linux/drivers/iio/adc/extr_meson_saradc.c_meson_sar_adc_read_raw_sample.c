
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct meson_sar_adc_priv {TYPE_1__* param; int regmap; int done; } ;
struct iio_dev {int dev; } ;
struct iio_chan_spec {int address; } ;
struct TYPE_2__ {scalar_t__ resolution; } ;


 int EINVAL ;
 int ETIMEDOUT ;
 int FIELD_GET (int ,int) ;
 int GENMASK (scalar_t__,int ) ;
 int MESON_SAR_ADC_FIFO_RD ;
 int MESON_SAR_ADC_FIFO_RD_CHAN_ID_MASK ;
 int MESON_SAR_ADC_FIFO_RD_SAMPLE_VALUE_MASK ;
 int MESON_SAR_ADC_TIMEOUT ;
 int dev_err (int *,char*,int,...) ;
 struct meson_sar_adc_priv* iio_priv (struct iio_dev*) ;
 int meson_sar_adc_calib_val (struct iio_dev*,int) ;
 int meson_sar_adc_get_fifo_count (struct iio_dev*) ;
 int msecs_to_jiffies (int ) ;
 int regmap_read (int ,int ,int*) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int meson_sar_adc_read_raw_sample(struct iio_dev *indio_dev,
      const struct iio_chan_spec *chan,
      int *val)
{
 struct meson_sar_adc_priv *priv = iio_priv(indio_dev);
 int regval, fifo_chan, fifo_val, count;

 if(!wait_for_completion_timeout(&priv->done,
    msecs_to_jiffies(MESON_SAR_ADC_TIMEOUT)))
  return -ETIMEDOUT;

 count = meson_sar_adc_get_fifo_count(indio_dev);
 if (count != 1) {
  dev_err(&indio_dev->dev,
   "ADC FIFO has %d element(s) instead of one\n", count);
  return -EINVAL;
 }

 regmap_read(priv->regmap, MESON_SAR_ADC_FIFO_RD, &regval);
 fifo_chan = FIELD_GET(MESON_SAR_ADC_FIFO_RD_CHAN_ID_MASK, regval);
 if (fifo_chan != chan->address) {
  dev_err(&indio_dev->dev,
   "ADC FIFO entry belongs to channel %d instead of %lu\n",
   fifo_chan, chan->address);
  return -EINVAL;
 }

 fifo_val = FIELD_GET(MESON_SAR_ADC_FIFO_RD_SAMPLE_VALUE_MASK, regval);
 fifo_val &= GENMASK(priv->param->resolution - 1, 0);
 *val = meson_sar_adc_calib_val(indio_dev, fifo_val);

 return 0;
}
