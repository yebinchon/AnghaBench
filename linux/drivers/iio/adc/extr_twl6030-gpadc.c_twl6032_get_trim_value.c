
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;



__attribute__((used)) static int twl6032_get_trim_value(u8 *trim_regs, unsigned int reg0,
  unsigned int reg1, unsigned int mask0, unsigned int mask1,
  unsigned int shift0)
{
 int val;

 val = (trim_regs[reg0] & mask0) << shift0;
 val |= (trim_regs[reg1] & mask1) >> 1;
 if (trim_regs[reg1] & 0x01)
  val = -val;

 return val;
}
