
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stk3310_data {int lock; TYPE_1__* client; int reg_ps_gain; int reg_als_gain; int reg_ps_it; int reg_als_it; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {scalar_t__ type; } ;
struct TYPE_2__ {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;


 scalar_t__ IIO_LIGHT ;
 scalar_t__ IIO_PROXIMITY ;
 int dev_err (int *,char*) ;
 struct stk3310_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_field_write (int ,int) ;
 int stk3310_get_index (int ,int ,int,int) ;
 int stk3310_it_table ;
 int stk3310_scale_table ;

__attribute__((used)) static int stk3310_write_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan,
        int val, int val2, long mask)
{
 int ret;
 int index;
 struct stk3310_data *data = iio_priv(indio_dev);

 if (chan->type != IIO_LIGHT && chan->type != IIO_PROXIMITY)
  return -EINVAL;

 switch (mask) {
 case 129:
  index = stk3310_get_index(stk3310_it_table,
       ARRAY_SIZE(stk3310_it_table),
       val, val2);
  if (index < 0)
   return -EINVAL;
  mutex_lock(&data->lock);
  if (chan->type == IIO_LIGHT)
   ret = regmap_field_write(data->reg_als_it, index);
  else
   ret = regmap_field_write(data->reg_ps_it, index);
  if (ret < 0)
   dev_err(&data->client->dev,
    "sensor configuration failed\n");
  mutex_unlock(&data->lock);
  return ret;

 case 128:
  index = stk3310_get_index(stk3310_scale_table,
       ARRAY_SIZE(stk3310_scale_table),
       val, val2);
  if (index < 0)
   return -EINVAL;
  mutex_lock(&data->lock);
  if (chan->type == IIO_LIGHT)
   ret = regmap_field_write(data->reg_als_gain, index);
  else
   ret = regmap_field_write(data->reg_ps_gain, index);
  if (ret < 0)
   dev_err(&data->client->dev,
    "sensor configuration failed\n");
  mutex_unlock(&data->lock);
  return ret;
 }

 return -EINVAL;
}
