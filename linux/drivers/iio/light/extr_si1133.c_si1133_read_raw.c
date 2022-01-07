
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct si1133_data {size_t* adc_sens; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;


 int BIT (size_t) ;
 int EINVAL ;
 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 size_t SI1133_ADCSENS_HSIG_SHIFT ;
 size_t SI1133_ADCSENS_HW_GAIN_MASK ;
 size_t SI1133_ADCSENS_SCALE_MASK ;
 size_t SI1133_ADCSENS_SCALE_SHIFT ;
 struct si1133_data* iio_priv (struct iio_dev*) ;
 int si1133_get_lux (struct si1133_data*,int*) ;
 int** si1133_int_time_table ;
 int si1133_measure (struct si1133_data*,struct iio_chan_spec const*,int*) ;

__attribute__((used)) static int si1133_read_raw(struct iio_dev *iio_dev,
      struct iio_chan_spec const *chan,
      int *val, int *val2, long mask)
{
 struct si1133_data *data = iio_priv(iio_dev);
 u8 adc_sens = data->adc_sens[0];
 int err;

 switch (mask) {
 case 133:
  switch (chan->type) {
  case 129:
   err = si1133_get_lux(data, val);
   if (err)
    return err;

   return IIO_VAL_INT;
  default:
   return -EINVAL;
  }
 case 132:
  switch (chan->type) {
  case 130:
  case 128:
   err = si1133_measure(data, chan, val);
   if (err)
    return err;

   return IIO_VAL_INT;
  default:
   return -EINVAL;
  }
 case 134:
  switch (chan->type) {
  case 130:
  case 128:
   adc_sens &= SI1133_ADCSENS_HW_GAIN_MASK;

   *val = si1133_int_time_table[adc_sens][0];
   *val2 = si1133_int_time_table[adc_sens][1];
   return IIO_VAL_INT_PLUS_MICRO;
  default:
   return -EINVAL;
  }
 case 131:
  switch (chan->type) {
  case 130:
  case 128:
   adc_sens &= SI1133_ADCSENS_SCALE_MASK;
   adc_sens >>= SI1133_ADCSENS_SCALE_SHIFT;

   *val = BIT(adc_sens);

   return IIO_VAL_INT;
  default:
   return -EINVAL;
  }
 case 135:
  switch (chan->type) {
  case 130:
  case 128:
   adc_sens >>= SI1133_ADCSENS_HSIG_SHIFT;

   *val = adc_sens;

   return IIO_VAL_INT;
  default:
   return -EINVAL;
  }
 default:
  return -EINVAL;
 }
}
