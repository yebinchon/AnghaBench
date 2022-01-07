
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct spi_transfer {int len; int cs_change; int * rx_buf; int * tx_buf; } ;
struct spi_device {int dummy; } ;
struct ad5686_state {TYPE_2__* data; TYPE_1__* chip_info; int dev; } ;
struct TYPE_4__ {void* d32; int * d8; } ;
struct TYPE_3__ {int regmap_type; } ;




 int AD5686_ADDR (int ) ;
 int AD5686_CMD (int ) ;
 int AD5686_CMD_NOOP ;
 int AD5686_CMD_READBACK_ENABLE ;
 int AD5686_CMD_READBACK_ENABLE_V2 ;

 int ARRAY_SIZE (struct spi_transfer*) ;
 int EINVAL ;
 int ENOTSUPP ;
 int be32_to_cpu (void*) ;
 void* cpu_to_be32 (int) ;
 int spi_sync_transfer (struct spi_device*,struct spi_transfer*,int ) ;
 struct spi_device* to_spi_device (int ) ;

__attribute__((used)) static int ad5686_spi_read(struct ad5686_state *st, u8 addr)
{
 struct spi_transfer t[] = {
  {
   .tx_buf = &st->data[0].d8[1],
   .len = 3,
   .cs_change = 1,
  }, {
   .tx_buf = &st->data[1].d8[1],
   .rx_buf = &st->data[2].d8[1],
   .len = 3,
  },
 };
 struct spi_device *spi = to_spi_device(st->dev);
 u8 cmd = 0;
 int ret;

 switch (st->chip_info->regmap_type) {
 case 130:
  return -ENOTSUPP;
 case 129:
  cmd = AD5686_CMD_READBACK_ENABLE_V2;
  break;
 case 128:
  cmd = AD5686_CMD_READBACK_ENABLE;
  break;
 default:
  return -EINVAL;
 }

 st->data[0].d32 = cpu_to_be32(AD5686_CMD(cmd) |
          AD5686_ADDR(addr));
 st->data[1].d32 = cpu_to_be32(AD5686_CMD(AD5686_CMD_NOOP));

 ret = spi_sync_transfer(spi, t, ARRAY_SIZE(t));
 if (ret < 0)
  return ret;

 return be32_to_cpu(st->data[2].d32);
}
