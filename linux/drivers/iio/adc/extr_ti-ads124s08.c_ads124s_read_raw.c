
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel; } ;
struct ads124s_private {int lock; TYPE_1__* spi; } ;
struct TYPE_2__ {int dev; } ;


 int ADS124S08_INPUT_MUX ;
 int ADS124S08_START_CONV ;
 int ADS124S08_STOP_CONV ;
 int EINVAL ;

 int IIO_VAL_INT ;
 int ads124s_read (struct iio_dev*,int ) ;
 int ads124s_write_cmd (struct iio_dev*,int ) ;
 int ads124s_write_reg (struct iio_dev*,int ,int ) ;
 int dev_err (int *,char*) ;
 struct ads124s_private* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ads124s_read_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int *val, int *val2, long m)
{
 struct ads124s_private *priv = iio_priv(indio_dev);
 int ret;

 mutex_lock(&priv->lock);
 switch (m) {
 case 128:
  ret = ads124s_write_reg(indio_dev, ADS124S08_INPUT_MUX,
     chan->channel);
  if (ret) {
   dev_err(&priv->spi->dev, "Set ADC CH failed\n");
   goto out;
  }

  ret = ads124s_write_cmd(indio_dev, ADS124S08_START_CONV);
  if (ret) {
   dev_err(&priv->spi->dev, "Start conversions failed\n");
   goto out;
  }

  ret = ads124s_read(indio_dev, chan->channel);
  if (ret < 0) {
   dev_err(&priv->spi->dev, "Read ADC failed\n");
   goto out;
  }

  *val = ret;

  ret = ads124s_write_cmd(indio_dev, ADS124S08_STOP_CONV);
  if (ret) {
   dev_err(&priv->spi->dev, "Stop conversions failed\n");
   goto out;
  }

  ret = IIO_VAL_INT;
  break;
 default:
  ret = -EINVAL;
  break;
 }
out:
 mutex_unlock(&priv->lock);
 return ret;
}
