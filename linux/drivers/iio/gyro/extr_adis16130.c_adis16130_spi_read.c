
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct spi_transfer {int* tx_buf; int* rx_buf; int len; } ;
struct iio_dev {int dummy; } ;
struct adis16130_state {int* buf; int buf_lock; int us; } ;


 int ADIS16130_CON_RD ;
 struct adis16130_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spi_sync_transfer (int ,struct spi_transfer*,int) ;

__attribute__((used)) static int adis16130_spi_read(struct iio_dev *indio_dev, u8 reg_addr, u32 *val)
{
 int ret;
 struct adis16130_state *st = iio_priv(indio_dev);
 struct spi_transfer xfer = {
  .tx_buf = st->buf,
  .rx_buf = st->buf,
  .len = 4,
 };

 mutex_lock(&st->buf_lock);

 st->buf[0] = ADIS16130_CON_RD | reg_addr;
 st->buf[1] = st->buf[2] = st->buf[3] = 0;

 ret = spi_sync_transfer(st->us, &xfer, 1);
 if (ret == 0)
  *val = (st->buf[1] << 16) | (st->buf[2] << 8) | st->buf[3];
 mutex_unlock(&st->buf_lock);

 return ret;
}
