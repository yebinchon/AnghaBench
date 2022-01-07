
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cxd2841er_priv {int dummy; } ;


 int cxd2841er_read_reg (struct cxd2841er_priv*,int,int,int*) ;
 int cxd2841er_write_reg (struct cxd2841er_priv*,int,int,int) ;

__attribute__((used)) static int cxd2841er_set_reg_bits(struct cxd2841er_priv *priv,
      u8 addr, u8 reg, u8 data, u8 mask)
{
 int res;
 u8 rdata;

 if (mask != 0xff) {
  res = cxd2841er_read_reg(priv, addr, reg, &rdata);
  if (res)
   return res;
  data = ((data & mask) | (rdata & (mask ^ 0xFF)));
 }
 return cxd2841er_write_reg(priv, addr, reg, data);
}
