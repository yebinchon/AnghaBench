
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max11100_state {int vref_reg; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int EINVAL ;


 int IIO_VAL_FRACTIONAL ;
 int IIO_VAL_INT ;
 int MAX11100_LSB_DIV ;
 struct max11100_state* iio_priv (struct iio_dev*) ;
 int max11100_read_single (struct iio_dev*,int*) ;
 int regulator_get_voltage (int ) ;

__attribute__((used)) static int max11100_read_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan,
        int *val, int *val2, long info)
{
 int ret, vref_uv;
 struct max11100_state *state = iio_priv(indio_dev);

 switch (info) {
 case 129:
  ret = max11100_read_single(indio_dev, val);
  if (ret)
   return ret;

  return IIO_VAL_INT;

 case 128:
  vref_uv = regulator_get_voltage(state->vref_reg);
  if (vref_uv < 0)

   return -EINVAL;

  *val = vref_uv / 1000;
  *val2 = MAX11100_LSB_DIV;
  return IIO_VAL_FRACTIONAL;
 }

 return -EINVAL;
}
