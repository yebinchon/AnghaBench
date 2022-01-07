
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_transfer {int len; int cs_change; int * rx_buf; int * tx_buf; } ;
struct iio_dev {int mlock; } ;
struct ad5360_state {TYPE_1__* data; int spi; } ;
struct TYPE_2__ {int d32; int * d8; } ;


 int AD5360_ADDR (int ) ;
 int AD5360_CMD (int ) ;
 int AD5360_CMD_SPECIAL_FUNCTION ;
 int AD5360_READBACK_ADDR (unsigned int) ;
 int AD5360_READBACK_TYPE (unsigned int) ;
 int AD5360_REG_SF_READBACK ;
 int ARRAY_SIZE (struct spi_transfer*) ;
 int be32_to_cpu (int ) ;
 int cpu_to_be32 (int) ;
 struct ad5360_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spi_sync_transfer (int ,struct spi_transfer*,int ) ;

__attribute__((used)) static int ad5360_read(struct iio_dev *indio_dev, unsigned int type,
 unsigned int addr)
{
 struct ad5360_state *st = iio_priv(indio_dev);
 int ret;
 struct spi_transfer t[] = {
  {
   .tx_buf = &st->data[0].d8[1],
   .len = 3,
   .cs_change = 1,
  }, {
   .rx_buf = &st->data[1].d8[1],
   .len = 3,
  },
 };

 mutex_lock(&indio_dev->mlock);

 st->data[0].d32 = cpu_to_be32(AD5360_CMD(AD5360_CMD_SPECIAL_FUNCTION) |
  AD5360_ADDR(AD5360_REG_SF_READBACK) |
  AD5360_READBACK_TYPE(type) |
  AD5360_READBACK_ADDR(addr));

 ret = spi_sync_transfer(st->spi, t, ARRAY_SIZE(t));
 if (ret >= 0)
  ret = be32_to_cpu(st->data[1].d32) & 0xffff;

 mutex_unlock(&indio_dev->mlock);

 return ret;
}
