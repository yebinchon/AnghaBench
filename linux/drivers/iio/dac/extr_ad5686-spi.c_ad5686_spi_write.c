
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct spi_device {int dummy; } ;
struct ad5686_state {TYPE_2__* data; TYPE_1__* chip_info; int dev; } ;
struct TYPE_4__ {int* d8; void* d32; int d16; } ;
struct TYPE_3__ {int regmap_type; } ;


 int AD5310_CMD (int) ;

 int AD5683_DATA (int) ;

 int AD5686_ADDR (int) ;
 int AD5686_CMD (int) ;

 int EINVAL ;
 int cpu_to_be16 (int) ;
 void* cpu_to_be32 (int) ;
 int spi_write (struct spi_device*,int*,int) ;
 struct spi_device* to_spi_device (int ) ;

__attribute__((used)) static int ad5686_spi_write(struct ad5686_state *st,
       u8 cmd, u8 addr, u16 val)
{
 struct spi_device *spi = to_spi_device(st->dev);
 u8 tx_len, *buf;

 switch (st->chip_info->regmap_type) {
 case 130:
  st->data[0].d16 = cpu_to_be16(AD5310_CMD(cmd) |
           val);
  buf = &st->data[0].d8[0];
  tx_len = 2;
  break;
 case 129:
  st->data[0].d32 = cpu_to_be32(AD5686_CMD(cmd) |
           AD5683_DATA(val));
  buf = &st->data[0].d8[1];
  tx_len = 3;
  break;
 case 128:
  st->data[0].d32 = cpu_to_be32(AD5686_CMD(cmd) |
           AD5686_ADDR(addr) |
           val);
  buf = &st->data[0].d8[1];
  tx_len = 3;
  break;
 default:
  return -EINVAL;
 }

 return spi_write(spi, buf, tx_len);
}
