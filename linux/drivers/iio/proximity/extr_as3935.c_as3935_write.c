
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct as3935_state {int* buf; int spi; } ;


 int AS3935_ADDRESS (unsigned int) ;
 int spi_write (int ,int*,int) ;

__attribute__((used)) static int as3935_write(struct as3935_state *st,
    unsigned int reg,
    unsigned int val)
{
 u8 *buf = st->buf;

 buf[0] = AS3935_ADDRESS(reg) >> 8;
 buf[1] = val;

 return spi_write(st->spi, buf, 2);
}
