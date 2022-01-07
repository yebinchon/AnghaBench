
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_transfer {int len; int * tx_buf; } ;
struct iio_dev {int dev; } ;
struct ad9523_state {int spi; TYPE_1__* data; } ;
struct TYPE_2__ {void* d32; int * d8; } ;


 unsigned int AD9523_ADDR (unsigned int) ;
 unsigned int AD9523_CNT (int) ;
 int AD9523_TRANSF_LEN (unsigned int) ;
 unsigned int AD9523_WRITE ;
 int ARRAY_SIZE (struct spi_transfer*) ;
 void* cpu_to_be32 (unsigned int) ;
 int dev_err (int *,char*,int) ;
 struct ad9523_state* iio_priv (struct iio_dev*) ;
 int spi_sync_transfer (int ,struct spi_transfer*,int ) ;

__attribute__((used)) static int ad9523_write(struct iio_dev *indio_dev,
  unsigned int addr, unsigned int val)
{
 struct ad9523_state *st = iio_priv(indio_dev);
 int ret;
 struct spi_transfer t[] = {
  {
   .tx_buf = &st->data[0].d8[2],
   .len = 2,
  }, {
   .tx_buf = &st->data[1].d8[4 - AD9523_TRANSF_LEN(addr)],
   .len = AD9523_TRANSF_LEN(addr),
  },
 };

 st->data[0].d32 = cpu_to_be32(AD9523_WRITE |
          AD9523_CNT(AD9523_TRANSF_LEN(addr)) |
          AD9523_ADDR(addr));
 st->data[1].d32 = cpu_to_be32(val);

 ret = spi_sync_transfer(st->spi, t, ARRAY_SIZE(t));

 if (ret < 0)
  dev_err(&indio_dev->dev, "write failed (%d)", ret);

 return ret;
}
