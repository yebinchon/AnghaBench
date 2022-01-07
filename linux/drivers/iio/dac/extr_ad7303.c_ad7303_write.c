
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint8_t ;
struct ad7303_state {unsigned int config; int data; int spi; } ;


 unsigned int AD7303_CFG_ADDR_OFFSET ;
 unsigned int AD7303_CMD_UPDATE_DAC ;
 int cpu_to_be16 (unsigned int) ;
 int spi_write (int ,int *,int) ;

__attribute__((used)) static int ad7303_write(struct ad7303_state *st, unsigned int chan,
 uint8_t val)
{
 st->data = cpu_to_be16(AD7303_CMD_UPDATE_DAC |
  (chan << AD7303_CFG_ADDR_OFFSET) |
  st->config | val);

 return spi_write(st->spi, &st->data, sizeof(st->data));
}
