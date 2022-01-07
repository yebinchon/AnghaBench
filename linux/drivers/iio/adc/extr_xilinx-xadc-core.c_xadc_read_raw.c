
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct xadc {int dummy; } ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {unsigned char sign; } ;
struct iio_chan_spec {int address; int type; TYPE_1__ scan_type; } ;


 int EBUSY ;
 int EINVAL ;





 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;

 int XADC_CONF2_DIV_MASK ;
 int XADC_CONF2_DIV_OFFSET ;
 int XADC_REG_CONF2 ;
 int iio_buffer_enabled (struct iio_dev*) ;
 struct xadc* iio_priv (struct iio_dev*) ;
 int sign_extend32 (int,int) ;
 unsigned int xadc_get_dclk_rate (struct xadc*) ;
 int xadc_read_adc_reg (struct xadc*,int ,int*) ;

__attribute__((used)) static int xadc_read_raw(struct iio_dev *indio_dev,
 struct iio_chan_spec const *chan, int *val, int *val2, long info)
{
 struct xadc *xadc = iio_priv(indio_dev);
 unsigned int div;
 uint16_t val16;
 int ret;

 switch (info) {
 case 140:
  if (iio_buffer_enabled(indio_dev))
   return -EBUSY;
  ret = xadc_read_adc_reg(xadc, chan->address, &val16);
  if (ret < 0)
   return ret;

  val16 >>= 4;
  if (chan->scan_type.sign == 'u')
   *val = val16;
  else
   *val = sign_extend32(val16, 11);

  return IIO_VAL_INT;
 case 138:
  switch (chan->type) {
  case 136:

   switch (chan->address) {
   case 133:
   case 135:
   case 128:
   case 129:
   case 134:
   case 130:
   case 131:
   case 132:
    *val = 3000;
    break;
   default:
    *val = 1000;
    break;
   }
   *val2 = 12;
   return IIO_VAL_FRACTIONAL_LOG2;
  case 137:

   *val = 503975;
   *val2 = 12;
   return IIO_VAL_FRACTIONAL_LOG2;
  default:
   return -EINVAL;
  }
 case 141:

  *val = -((273150 << 12) / 503975);
  return IIO_VAL_INT;
 case 139:
  ret = xadc_read_adc_reg(xadc, XADC_REG_CONF2, &val16);
  if (ret)
   return ret;

  div = (val16 & XADC_CONF2_DIV_MASK) >> XADC_CONF2_DIV_OFFSET;
  if (div < 2)
   div = 2;

  *val = xadc_get_dclk_rate(xadc) / div / 26;

  return IIO_VAL_INT;
 default:
  return -EINVAL;
 }
}
