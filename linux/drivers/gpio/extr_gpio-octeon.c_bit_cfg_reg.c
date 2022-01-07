
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int bit_cfg_reg(unsigned int offset)
{




 if (offset < 16)
  return 8 * offset;
 else
  return 8 * (offset - 16) + 0x100;
}
