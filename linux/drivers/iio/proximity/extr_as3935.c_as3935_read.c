
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct as3935_state {int spi; } ;


 int AS3935_ADDRESS (unsigned int) ;
 int AS3935_READ_DATA ;
 int spi_w8r8 (int ,int) ;

__attribute__((used)) static int as3935_read(struct as3935_state *st, unsigned int reg, int *val)
{
 u8 cmd;
 int ret;

 cmd = (AS3935_READ_DATA | AS3935_ADDRESS(reg)) >> 8;
 ret = spi_w8r8(st->spi, cmd);
 if (ret < 0)
  return ret;
 *val = ret;

 return 0;
}
