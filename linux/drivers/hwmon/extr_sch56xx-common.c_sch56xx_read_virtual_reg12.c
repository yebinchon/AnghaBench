
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int sch56xx_read_virtual_reg (int ,int ) ;

int sch56xx_read_virtual_reg12(u16 addr, u16 msb_reg, u16 lsn_reg,
          int high_nibble)
{
 int msb, lsn;


 msb = sch56xx_read_virtual_reg(addr, msb_reg);
 if (msb < 0)
  return msb;

 lsn = sch56xx_read_virtual_reg(addr, lsn_reg);
 if (lsn < 0)
  return lsn;

 if (high_nibble)
  return (msb << 4) | (lsn >> 4);
 else
  return (msb << 4) | (lsn & 0x0f);
}
