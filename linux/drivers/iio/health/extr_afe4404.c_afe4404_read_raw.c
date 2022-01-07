
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t address; int type; } ;
struct afe4404_data {int * fields; int regmap; } ;


 int EINVAL ;





 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 unsigned int* afe4404_channel_leds ;
 unsigned int* afe4404_channel_offdacs ;
 unsigned int* afe4404_channel_values ;
 struct afe4404_data* iio_priv (struct iio_dev*) ;
 int regmap_field_read (int ,int*) ;
 int regmap_read (int ,unsigned int,int*) ;

__attribute__((used)) static int afe4404_read_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int *val, int *val2, long mask)
{
 struct afe4404_data *afe = iio_priv(indio_dev);
 unsigned int value_reg = afe4404_channel_values[chan->address];
 unsigned int led_field = afe4404_channel_leds[chan->address];
 unsigned int offdac_field = afe4404_channel_offdacs[chan->address];
 int ret;

 switch (chan->type) {
 case 128:
  switch (mask) {
  case 131:
   ret = regmap_read(afe->regmap, value_reg, val);
   if (ret)
    return ret;
   return IIO_VAL_INT;
  case 132:
   ret = regmap_field_read(afe->fields[offdac_field], val);
   if (ret)
    return ret;
   return IIO_VAL_INT;
  }
  break;
 case 129:
  switch (mask) {
  case 131:
   ret = regmap_field_read(afe->fields[led_field], val);
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
