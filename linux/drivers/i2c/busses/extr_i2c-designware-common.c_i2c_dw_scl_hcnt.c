
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



u32 i2c_dw_scl_hcnt(u32 ic_clk, u32 tSYMBOL, u32 tf, int cond, int offset)
{





 if (cond)
  return (ic_clk * tSYMBOL + 500000) / 1000000 - 8 + offset;
 else
  return (ic_clk * (tSYMBOL + tf) + 500000) / 1000000
   - 3 + offset;
}
