
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stk3310_data {int lock; int reg_int_ps; struct i2c_client* client; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct i2c_client {int dev; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int EINVAL ;
 int dev_err (int *,char*) ;
 struct stk3310_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_field_write (int ,int) ;

__attribute__((used)) static int stk3310_write_event_config(struct iio_dev *indio_dev,
          const struct iio_chan_spec *chan,
          enum iio_event_type type,
          enum iio_event_direction dir,
          int state)
{
 int ret;
 struct stk3310_data *data = iio_priv(indio_dev);
 struct i2c_client *client = data->client;

 if (state < 0 || state > 7)
  return -EINVAL;


 mutex_lock(&data->lock);
 ret = regmap_field_write(data->reg_int_ps, state);
 if (ret < 0)
  dev_err(&client->dev, "failed to set interrupt mode\n");
 mutex_unlock(&data->lock);

 return ret;
}
