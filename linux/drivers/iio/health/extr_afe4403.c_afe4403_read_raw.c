
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t address; int type; } ;
struct afe4403_data {int * fields; } ;


 int EINVAL ;




 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 unsigned int* afe4403_channel_leds ;
 unsigned int* afe4403_channel_values ;
 int afe4403_read (struct afe4403_data*,unsigned int,int*) ;
 struct afe4403_data* iio_priv (struct iio_dev*) ;
 int regmap_field_read (int ,int*) ;

__attribute__((used)) static int afe4403_read_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int *val, int *val2, long mask)
{
 struct afe4403_data *afe = iio_priv(indio_dev);
 unsigned int reg = afe4403_channel_values[chan->address];
 unsigned int field = afe4403_channel_leds[chan->address];
 int ret;

 switch (chan->type) {
 case 128:
  switch (mask) {
  case 131:
   ret = afe4403_read(afe, reg, val);
   if (ret)
    return ret;
   return IIO_VAL_INT;
  }
  break;
 case 129:
  switch (mask) {
  case 131:
   ret = regmap_field_read(afe->fields[field], val);
   if (ret)
    return ret;
   return IIO_VAL_INT;
  case 130:
   *val = 0;
   *val2 = 800000;
   return IIO_VAL_INT_PLUS_MICRO;
  }
  break;
 default:
  break;
 }

 return -EINVAL;
}
