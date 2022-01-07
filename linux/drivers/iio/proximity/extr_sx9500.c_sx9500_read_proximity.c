
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sx9500_data {int completion; int mutex; TYPE_1__* client; } ;
struct iio_chan_spec {int channel; } ;
struct TYPE_2__ {scalar_t__ irq; } ;


 int IIO_VAL_INT ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reinit_completion (int *) ;
 int sx9500_dec_chan_users (struct sx9500_data*,int ) ;
 int sx9500_dec_data_rdy_users (struct sx9500_data*) ;
 int sx9500_inc_chan_users (struct sx9500_data*,int ) ;
 int sx9500_inc_data_rdy_users (struct sx9500_data*) ;
 int sx9500_read_prox_data (struct sx9500_data*,struct iio_chan_spec const*,int*) ;
 int sx9500_wait_for_sample (struct sx9500_data*) ;
 int wait_for_completion_interruptible (int *) ;

__attribute__((used)) static int sx9500_read_proximity(struct sx9500_data *data,
     const struct iio_chan_spec *chan,
     int *val)
{
 int ret;

 mutex_lock(&data->mutex);

 ret = sx9500_inc_chan_users(data, chan->channel);
 if (ret < 0)
  goto out;

 ret = sx9500_inc_data_rdy_users(data);
 if (ret < 0)
  goto out_dec_chan;

 mutex_unlock(&data->mutex);

 if (data->client->irq > 0)
  ret = wait_for_completion_interruptible(&data->completion);
 else
  ret = sx9500_wait_for_sample(data);

 mutex_lock(&data->mutex);

 if (ret < 0)
  goto out_dec_data_rdy;

 ret = sx9500_read_prox_data(data, chan, val);
 if (ret < 0)
  goto out_dec_data_rdy;

 ret = sx9500_dec_data_rdy_users(data);
 if (ret < 0)
  goto out_dec_chan;

 ret = sx9500_dec_chan_users(data, chan->channel);
 if (ret < 0)
  goto out;

 ret = IIO_VAL_INT;

 goto out;

out_dec_data_rdy:
 sx9500_dec_data_rdy_users(data);
out_dec_chan:
 sx9500_dec_chan_users(data, chan->channel);
out:
 mutex_unlock(&data->mutex);
 reinit_completion(&data->completion);

 return ret;
}
