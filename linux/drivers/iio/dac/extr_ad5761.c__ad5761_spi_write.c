
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct ad5761_state {TYPE_1__* data; int spi; } ;
struct TYPE_2__ {int * d8; int d32; } ;


 int AD5761_ADDR (int ) ;
 int cpu_to_be32 (int) ;
 int spi_write (int ,int *,int) ;

__attribute__((used)) static int _ad5761_spi_write(struct ad5761_state *st, u8 addr, u16 val)
{
 st->data[0].d32 = cpu_to_be32(AD5761_ADDR(addr) | val);

 return spi_write(st->spi, &st->data[0].d8[1], 3);
}
