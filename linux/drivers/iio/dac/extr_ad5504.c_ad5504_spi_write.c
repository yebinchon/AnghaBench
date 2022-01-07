
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ad5504_state {int * data; int spi; } ;


 int AD5504_ADDR (int ) ;
 int AD5504_CMD_WRITE ;
 int AD5504_RES_MASK ;
 int cpu_to_be16 (int) ;
 int spi_write (int ,int *,int) ;

__attribute__((used)) static int ad5504_spi_write(struct ad5504_state *st, u8 addr, u16 val)
{
 st->data[0] = cpu_to_be16(AD5504_CMD_WRITE | AD5504_ADDR(addr) |
         (val & AD5504_RES_MASK));

 return spi_write(st->spi, &st->data[0], 2);
}
