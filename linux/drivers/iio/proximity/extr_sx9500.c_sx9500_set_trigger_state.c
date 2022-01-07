
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sx9500_data {int trigger_enabled; int mutex; } ;
struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;


 struct sx9500_data* iio_priv (struct iio_dev*) ;
 struct iio_dev* iio_trigger_get_drvdata (struct iio_trigger*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sx9500_dec_data_rdy_users (struct sx9500_data*) ;
 int sx9500_inc_data_rdy_users (struct sx9500_data*) ;

__attribute__((used)) static int sx9500_set_trigger_state(struct iio_trigger *trig,
        bool state)
{
 struct iio_dev *indio_dev = iio_trigger_get_drvdata(trig);
 struct sx9500_data *data = iio_priv(indio_dev);
 int ret;

 mutex_lock(&data->mutex);

 if (state)
  ret = sx9500_inc_data_rdy_users(data);
 else
  ret = sx9500_dec_data_rdy_users(data);
 if (ret < 0)
  goto out;

 data->trigger_enabled = state;

out:
 mutex_unlock(&data->mutex);

 return ret;
}
