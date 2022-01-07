
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct iio_dev {int mlock; } ;
struct iio_chan_spec {size_t scan_index; } ;
struct adis {TYPE_2__* spi; } ;
struct adis16260 {struct adis adis; } ;
struct TYPE_4__ {int max_speed_hz; } ;
struct TYPE_3__ {int driver_data; } ;


 int ADIS16260_SMPL_PRD ;
 int ADIS16260_SMPL_PRD_DIV_MASK ;
 int ADIS16260_SPI_FAST ;
 int ADIS16260_SPI_SLOW ;
 int EINVAL ;



 int** adis16260_addresses ;
 int adis_write_reg_16 (struct adis*,int,int) ;
 int adis_write_reg_8 (struct adis*,int ,int) ;
 struct adis16260* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* spi_get_device_id (TYPE_2__*) ;

__attribute__((used)) static int adis16260_write_raw(struct iio_dev *indio_dev,
          struct iio_chan_spec const *chan,
          int val,
          int val2,
          long mask)
{
 struct adis16260 *adis16260 = iio_priv(indio_dev);
 struct adis *adis = &adis16260->adis;
 int ret;
 u8 addr;
 u8 t;

 switch (mask) {
 case 130:
  if (val < -2048 || val >= 2048)
   return -EINVAL;

  addr = adis16260_addresses[chan->scan_index][0];
  return adis_write_reg_16(adis, addr, val);
 case 129:
  if (val < 0 || val >= 4096)
   return -EINVAL;

  addr = adis16260_addresses[chan->scan_index][1];
  return adis_write_reg_16(adis, addr, val);
 case 128:
  mutex_lock(&indio_dev->mlock);
  if (spi_get_device_id(adis->spi)->driver_data)
   t = 256 / val;
  else
   t = 2048 / val;

  if (t > ADIS16260_SMPL_PRD_DIV_MASK)
   t = ADIS16260_SMPL_PRD_DIV_MASK;
  else if (t > 0)
   t--;

  if (t >= 0x0A)
   adis->spi->max_speed_hz = ADIS16260_SPI_SLOW;
  else
   adis->spi->max_speed_hz = ADIS16260_SPI_FAST;
  ret = adis_write_reg_8(adis, ADIS16260_SMPL_PRD, t);

  mutex_unlock(&indio_dev->mlock);
  return ret;
 }
 return -EINVAL;
}
