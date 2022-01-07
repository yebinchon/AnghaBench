
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; int address; } ;


 int EINVAL ;




 int IIO_TEMP ;
 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_NANO ;
 int ITG3200_DLPF_CFG_MASK ;
 int ITG3200_REG_DLPF ;
 int ITG3200_REG_SAMPLE_RATE_DIV ;
 int itg3200_read_reg_8 (struct iio_dev*,int ,int*) ;
 int itg3200_read_reg_s16 (struct iio_dev*,int,int*) ;

__attribute__((used)) static int itg3200_read_raw(struct iio_dev *indio_dev,
  const struct iio_chan_spec *chan,
  int *val, int *val2, long info)
{
 int ret = 0;
 u8 reg;
 u8 regval;

 switch (info) {
 case 130:
  reg = (u8)chan->address;
  ret = itg3200_read_reg_s16(indio_dev, reg, val);
  return IIO_VAL_INT;
 case 128:
  *val = 0;
  if (chan->type == IIO_TEMP)
   *val2 = 1000000000/280;
  else
   *val2 = 1214142;
  return IIO_VAL_INT_PLUS_NANO;
 case 131:

  *val = 23000;
  return IIO_VAL_INT;
 case 129:
  ret = itg3200_read_reg_8(indio_dev, ITG3200_REG_DLPF, &regval);
  if (ret)
   return ret;

  *val = (regval & ITG3200_DLPF_CFG_MASK) ? 1000 : 8000;

  ret = itg3200_read_reg_8(indio_dev,
      ITG3200_REG_SAMPLE_RATE_DIV,
      &regval);
  if (ret)
   return ret;

  *val /= regval + 1;
  return IIO_VAL_INT;

 default:
  return -EINVAL;
 }
}
