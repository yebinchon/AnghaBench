
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel; } ;
struct dac5571_data {int powerdown; int (* dac5571_pwrdwn ) (struct dac5571_data*,int ,int ) ;int (* dac5571_cmd ) (struct dac5571_data*,int ,int ) ;int lock; int * val; int powerdown_mode; } ;
typedef int ssize_t ;


 int DAC5571_POWERDOWN (int ) ;
 struct dac5571_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strtobool (char const*,int*) ;
 int stub1 (struct dac5571_data*,int ,int ) ;
 int stub2 (struct dac5571_data*,int ,int ) ;

__attribute__((used)) static ssize_t dac5571_write_powerdown(struct iio_dev *indio_dev,
           uintptr_t private,
           const struct iio_chan_spec *chan,
           const char *buf, size_t len)
{
 struct dac5571_data *data = iio_priv(indio_dev);
 bool powerdown;
 int ret;

 ret = strtobool(buf, &powerdown);
 if (ret)
  return ret;

 if (data->powerdown == powerdown)
  return len;

 mutex_lock(&data->lock);
 if (powerdown)
  ret = data->dac5571_pwrdwn(data, chan->channel,
       DAC5571_POWERDOWN(data->powerdown_mode));
 else
  ret = data->dac5571_cmd(data, chan->channel, data->val[0]);
 if (ret)
  goto out;

 data->powerdown = powerdown;

 out:
 mutex_unlock(&data->lock);

 return ret ? ret : len;
}
