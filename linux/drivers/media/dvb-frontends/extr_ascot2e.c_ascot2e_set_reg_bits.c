
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ascot2e_priv {int dummy; } ;


 int ascot2e_read_reg (struct ascot2e_priv*,int,int*) ;
 int ascot2e_write_reg (struct ascot2e_priv*,int,int) ;

__attribute__((used)) static int ascot2e_set_reg_bits(struct ascot2e_priv *priv,
    u8 reg, u8 data, u8 mask)
{
 int res;
 u8 rdata;

 if (mask != 0xff) {
  res = ascot2e_read_reg(priv, reg, &rdata);
  if (res != 0)
   return res;
  data = ((data & mask) | (rdata & (mask ^ 0xFF)));
 }
 return ascot2e_write_reg(priv, reg, data);
}
