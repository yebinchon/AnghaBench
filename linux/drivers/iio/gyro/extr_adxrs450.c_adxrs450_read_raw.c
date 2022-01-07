
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;
typedef int s16 ;


 int ADXRS450_DNC1 ;
 int ADXRS450_QUAD1 ;
 int ADXRS450_TEMP1 ;
 int EINVAL ;






 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_NANO ;
 int adxrs450_spi_read_reg_16 (struct iio_dev*,int ,int*) ;
 int adxrs450_spi_sensor_data (struct iio_dev*,int*) ;
 int sign_extend32 (int,int) ;

__attribute__((used)) static int adxrs450_read_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan,
        int *val,
        int *val2,
        long mask)
{
 int ret;
 s16 t;

 switch (mask) {
 case 130:
  switch (chan->type) {
  case 133:
   ret = adxrs450_spi_sensor_data(indio_dev, &t);
   if (ret)
    break;
   *val = t;
   ret = IIO_VAL_INT;
   break;
  case 128:
   ret = adxrs450_spi_read_reg_16(indio_dev,
             ADXRS450_TEMP1, &t);
   if (ret)
    break;
   *val = (t >> 6) + 225;
   ret = IIO_VAL_INT;
   break;
  default:
   ret = -EINVAL;
   break;
  }
  break;
 case 129:
  switch (chan->type) {
  case 133:
   *val = 0;
   *val2 = 218166;
   return IIO_VAL_INT_PLUS_NANO;
  case 128:
   *val = 200;
   *val2 = 0;
   return IIO_VAL_INT;
  default:
   return -EINVAL;
  }
 case 131:
  ret = adxrs450_spi_read_reg_16(indio_dev, ADXRS450_QUAD1, &t);
  if (ret)
   break;
  *val = t;
  ret = IIO_VAL_INT;
  break;
 case 132:
  ret = adxrs450_spi_read_reg_16(indio_dev, ADXRS450_DNC1, &t);
  if (ret)
   break;
  *val = sign_extend32(t, 9);
  ret = IIO_VAL_INT;
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
