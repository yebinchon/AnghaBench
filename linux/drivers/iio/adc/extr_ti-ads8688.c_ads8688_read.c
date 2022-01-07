
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct spi_transfer {int len; int cs_change; int * rx_buf; int * tx_buf; } ;
struct iio_dev {int dummy; } ;
struct ads8688_state {TYPE_1__* data; int spi; } ;
struct TYPE_2__ {void* d32; int * d8; } ;


 int ADS8688_CMD_DONT_CARE_BITS ;
 int ADS8688_CMD_REG (int ) ;
 int ADS8688_CMD_REG_MAN_CH (unsigned int) ;
 int ADS8688_CMD_REG_NOOP ;
 int ARRAY_SIZE (struct spi_transfer*) ;
 int be32_to_cpu (void*) ;
 void* cpu_to_be32 (int ) ;
 struct ads8688_state* iio_priv (struct iio_dev*) ;
 int spi_sync_transfer (int ,struct spi_transfer*,int ) ;

__attribute__((used)) static int ads8688_read(struct iio_dev *indio_dev, unsigned int chan)
{
 struct ads8688_state *st = iio_priv(indio_dev);
 int ret;
 u32 tmp;
 struct spi_transfer t[] = {
  {
   .tx_buf = &st->data[0].d8[0],
   .len = 4,
   .cs_change = 1,
  }, {
   .tx_buf = &st->data[1].d8[0],
   .rx_buf = &st->data[1].d8[0],
   .len = 4,
  },
 };

 tmp = ADS8688_CMD_REG(ADS8688_CMD_REG_MAN_CH(chan));
 tmp <<= ADS8688_CMD_DONT_CARE_BITS;
 st->data[0].d32 = cpu_to_be32(tmp);

 tmp = ADS8688_CMD_REG(ADS8688_CMD_REG_NOOP);
 tmp <<= ADS8688_CMD_DONT_CARE_BITS;
 st->data[1].d32 = cpu_to_be32(tmp);

 ret = spi_sync_transfer(st->spi, t, ARRAY_SIZE(t));
 if (ret < 0)
  return ret;

 return be32_to_cpu(st->data[1].d32) & 0xffff;
}
