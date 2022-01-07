
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct spi_transfer {int len; int cs_change; int * rx_buf; int * tx_buf; } ;
struct iio_dev {int dummy; } ;
struct adis16080_state {int buf; int us; } ;


 int ADIS16080_DIN_WRITE ;
 int ARRAY_SIZE (struct spi_transfer*) ;
 int be16_to_cpu (int ) ;
 int cpu_to_be16 (int) ;
 struct adis16080_state* iio_priv (struct iio_dev*) ;
 int sign_extend32 (int ,int) ;
 int spi_sync_transfer (int ,struct spi_transfer*,int ) ;

__attribute__((used)) static int adis16080_read_sample(struct iio_dev *indio_dev,
  u16 addr, int *val)
{
 struct adis16080_state *st = iio_priv(indio_dev);
 int ret;
 struct spi_transfer t[] = {
  {
   .tx_buf = &st->buf,
   .len = 2,
   .cs_change = 1,
  }, {
   .rx_buf = &st->buf,
   .len = 2,
  },
 };

 st->buf = cpu_to_be16(addr | ADIS16080_DIN_WRITE);

 ret = spi_sync_transfer(st->us, t, ARRAY_SIZE(t));
 if (ret == 0)
  *val = sign_extend32(be16_to_cpu(st->buf), 11);

 return ret;
}
