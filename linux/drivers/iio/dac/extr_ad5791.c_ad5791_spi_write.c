
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ad5791_state {TYPE_1__* data; int spi; } ;
struct TYPE_2__ {int * d8; int d32; } ;


 int AD5791_ADDR (int ) ;
 int AD5791_CMD_WRITE ;
 int AD5791_DAC_MASK ;
 int cpu_to_be32 (int) ;
 int spi_write (int ,int *,int) ;

__attribute__((used)) static int ad5791_spi_write(struct ad5791_state *st, u8 addr, u32 val)
{
 st->data[0].d32 = cpu_to_be32(AD5791_CMD_WRITE |
         AD5791_ADDR(addr) |
         (val & AD5791_DAC_MASK));

 return spi_write(st->spi, &st->data[0].d8[1], 3);
}
