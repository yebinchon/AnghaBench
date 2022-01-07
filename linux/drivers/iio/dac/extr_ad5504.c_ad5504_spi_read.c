
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_transfer {int len; int * rx_buf; int * tx_buf; } ;
struct ad5504_state {int * data; int spi; } ;


 int AD5504_ADDR (int ) ;
 int AD5504_CMD_READ ;
 int AD5504_RES_MASK ;
 int be16_to_cpu (int ) ;
 int cpu_to_be16 (int) ;
 int spi_sync_transfer (int ,struct spi_transfer*,int) ;

__attribute__((used)) static int ad5504_spi_read(struct ad5504_state *st, u8 addr)
{
 int ret;
 struct spi_transfer t = {
     .tx_buf = &st->data[0],
     .rx_buf = &st->data[1],
     .len = 2,
 };

 st->data[0] = cpu_to_be16(AD5504_CMD_READ | AD5504_ADDR(addr));
 ret = spi_sync_transfer(st->spi, &t, 1);
 if (ret < 0)
  return ret;

 return be16_to_cpu(st->data[1]) & AD5504_RES_MASK;
}
