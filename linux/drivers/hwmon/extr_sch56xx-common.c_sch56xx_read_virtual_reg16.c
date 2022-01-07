
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;


 int sch56xx_read_virtual_reg (scalar_t__,scalar_t__) ;

int sch56xx_read_virtual_reg16(u16 addr, u16 reg)
{
 int lsb, msb;


 lsb = sch56xx_read_virtual_reg(addr, reg);
 if (lsb < 0)
  return lsb;

 msb = sch56xx_read_virtual_reg(addr, reg + 1);
 if (msb < 0)
  return msb;

 return lsb | (msb << 8);
}
