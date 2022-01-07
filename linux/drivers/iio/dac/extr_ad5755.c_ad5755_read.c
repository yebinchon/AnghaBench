
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_transfer {int len; int cs_change; int * rx_buf; int * tx_buf; } ;
struct iio_dev {int mlock; } ;
struct ad5755_state {TYPE_1__* data; int spi; } ;
struct TYPE_2__ {void* d32; int * d8; } ;


 unsigned int AD5755_NOOP ;
 unsigned int AD5755_READ_FLAG ;
 int ARRAY_SIZE (struct spi_transfer*) ;
 int be32_to_cpu (void*) ;
 void* cpu_to_be32 (unsigned int) ;
 struct ad5755_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spi_sync_transfer (int ,struct spi_transfer*,int ) ;

__attribute__((used)) static int ad5755_read(struct iio_dev *indio_dev, unsigned int addr)
{
 struct ad5755_state *st = iio_priv(indio_dev);
 int ret;
 struct spi_transfer t[] = {
  {
   .tx_buf = &st->data[0].d8[1],
   .len = 3,
   .cs_change = 1,
  }, {
   .tx_buf = &st->data[1].d8[1],
   .rx_buf = &st->data[1].d8[1],
   .len = 3,
  },
 };

 mutex_lock(&indio_dev->mlock);

 st->data[0].d32 = cpu_to_be32(AD5755_READ_FLAG | (addr << 16));
 st->data[1].d32 = cpu_to_be32(AD5755_NOOP);

 ret = spi_sync_transfer(st->spi, t, ARRAY_SIZE(t));
 if (ret >= 0)
  ret = be32_to_cpu(st->data[1].d32) & 0xffff;

 mutex_unlock(&indio_dev->mlock);

 return ret;
}
