
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct spi_transfer {int bits_per_word; int len; int cs_change; int * rx_buf; int * tx_buf; } ;
struct ad5761_state {TYPE_1__* data; int spi; } ;
struct TYPE_2__ {void* d32; int * d8; } ;


 int AD5761_ADDR (int ) ;
 int AD5761_ADDR_NOOP ;
 int ARRAY_SIZE (struct spi_transfer*) ;
 int be32_to_cpu (void*) ;
 void* cpu_to_be32 (int ) ;
 int spi_sync_transfer (int ,struct spi_transfer*,int ) ;

__attribute__((used)) static int _ad5761_spi_read(struct ad5761_state *st, u8 addr, u16 *val)
{
 int ret;
 struct spi_transfer xfers[] = {
  {
   .tx_buf = &st->data[0].d8[1],
   .bits_per_word = 8,
   .len = 3,
   .cs_change = 1,
  }, {
   .tx_buf = &st->data[1].d8[1],
   .rx_buf = &st->data[2].d8[1],
   .bits_per_word = 8,
   .len = 3,
  },
 };

 st->data[0].d32 = cpu_to_be32(AD5761_ADDR(addr));
 st->data[1].d32 = cpu_to_be32(AD5761_ADDR(AD5761_ADDR_NOOP));

 ret = spi_sync_transfer(st->spi, xfers, ARRAY_SIZE(xfers));

 *val = be32_to_cpu(st->data[2].d32);

 return ret;
}
