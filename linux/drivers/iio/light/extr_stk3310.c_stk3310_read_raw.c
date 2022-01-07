
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stk3310_data {int reg_ps_gain; int reg_als_gain; int reg_ps_it; int reg_als_it; int lock; int regmap; struct i2c_client* client; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {scalar_t__ type; } ;
struct i2c_client {int dev; } ;
typedef int __be16 ;


 int EINVAL ;



 scalar_t__ IIO_LIGHT ;
 scalar_t__ IIO_PROXIMITY ;
 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int STK3310_REG_ALS_DATA_MSB ;
 int STK3310_REG_PS_DATA_MSB ;
 int be16_to_cpu (int ) ;
 int dev_err (int *,char*) ;
 struct stk3310_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_bulk_read (int ,int ,int *,int) ;
 int regmap_field_read (int ,unsigned int*) ;
 int** stk3310_it_table ;
 int** stk3310_scale_table ;

__attribute__((used)) static int stk3310_read_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int *val, int *val2, long mask)
{
 u8 reg;
 __be16 buf;
 int ret;
 unsigned int index;
 struct stk3310_data *data = iio_priv(indio_dev);
 struct i2c_client *client = data->client;

 if (chan->type != IIO_LIGHT && chan->type != IIO_PROXIMITY)
  return -EINVAL;

 switch (mask) {
 case 129:
  if (chan->type == IIO_LIGHT)
   reg = STK3310_REG_ALS_DATA_MSB;
  else
   reg = STK3310_REG_PS_DATA_MSB;

  mutex_lock(&data->lock);
  ret = regmap_bulk_read(data->regmap, reg, &buf, 2);
  if (ret < 0) {
   dev_err(&client->dev, "register read failed\n");
   mutex_unlock(&data->lock);
   return ret;
  }
  *val = be16_to_cpu(buf);
  mutex_unlock(&data->lock);
  return IIO_VAL_INT;
 case 130:
  if (chan->type == IIO_LIGHT)
   ret = regmap_field_read(data->reg_als_it, &index);
  else
   ret = regmap_field_read(data->reg_ps_it, &index);
  if (ret < 0)
   return ret;

  *val = stk3310_it_table[index][0];
  *val2 = stk3310_it_table[index][1];
  return IIO_VAL_INT_PLUS_MICRO;
 case 128:
  if (chan->type == IIO_LIGHT)
   ret = regmap_field_read(data->reg_als_gain, &index);
  else
   ret = regmap_field_read(data->reg_ps_gain, &index);
  if (ret < 0)
   return ret;

  *val = stk3310_scale_table[index][0];
  *val2 = stk3310_scale_table[index][1];
  return IIO_VAL_INT_PLUS_MICRO;
 }

 return -EINVAL;
}
