
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel; } ;
struct dac5571_data {unsigned int powerdown_mode; int (* dac5571_pwrdwn ) (struct dac5571_data*,int ,int ) ;int lock; scalar_t__ powerdown; } ;


 int DAC5571_POWERDOWN (unsigned int) ;
 struct dac5571_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct dac5571_data*,int ,int ) ;

__attribute__((used)) static int dac5571_set_powerdown_mode(struct iio_dev *indio_dev,
          const struct iio_chan_spec *chan,
          unsigned int mode)
{
 struct dac5571_data *data = iio_priv(indio_dev);
 int ret = 0;

 if (data->powerdown_mode == mode)
  return 0;

 mutex_lock(&data->lock);
 if (data->powerdown) {
  ret = data->dac5571_pwrdwn(data, chan->channel,
        DAC5571_POWERDOWN(mode));
  if (ret)
   goto out;
 }
 data->powerdown_mode = mode;

 out:
 mutex_unlock(&data->lock);

 return ret;
}
