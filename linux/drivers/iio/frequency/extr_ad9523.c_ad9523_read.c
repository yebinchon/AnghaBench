
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_transfer {int len; int * rx_buf; int * tx_buf; } ;
struct iio_dev {int dev; } ;
struct ad9523_state {TYPE_1__* data; int spi; } ;
struct TYPE_2__ {int d32; int * d8; } ;


 int AD9523_ADDR (unsigned int) ;
 int AD9523_CNT (int) ;
 int AD9523_READ ;
 int AD9523_TRANSF_LEN (unsigned int) ;
 int ARRAY_SIZE (struct spi_transfer*) ;
 int be32_to_cpu (int ) ;
 int cpu_to_be32 (int) ;
 int dev_err (int *,char*,int) ;
 struct ad9523_state* iio_priv (struct iio_dev*) ;
 int spi_sync_transfer (int ,struct spi_transfer*,int ) ;

__attribute__((used)) static int ad9523_read(struct iio_dev *indio_dev, unsigned int addr)
{
 struct ad9523_state *st = iio_priv(indio_dev);
 int ret;






 struct spi_transfer t[] = {
  {
   .tx_buf = &st->data[0].d8[2],
   .len = 2,
  }, {
   .rx_buf = &st->data[1].d8[4 - AD9523_TRANSF_LEN(addr)],
   .len = AD9523_TRANSF_LEN(addr),
  },
 };

 st->data[0].d32 = cpu_to_be32(AD9523_READ |
          AD9523_CNT(AD9523_TRANSF_LEN(addr)) |
          AD9523_ADDR(addr));

 ret = spi_sync_transfer(st->spi, t, ARRAY_SIZE(t));
 if (ret < 0)
  dev_err(&indio_dev->dev, "read failed (%d)", ret);
 else
  ret = be32_to_cpu(st->data[1].d32) & (0xFFFFFF >>
      (8 * (3 - AD9523_TRANSF_LEN(addr))));

 return ret;
}
