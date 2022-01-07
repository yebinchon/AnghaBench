
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct cxd2841er_priv {int dummy; } ;


 int I2C_SLVT ;
 int cxd2841er_read_regs (struct cxd2841er_priv*,int ,int,int*,int) ;
 int cxd2841er_write_reg (struct cxd2841er_priv*,int ,int,int) ;

__attribute__((used)) static u16 cxd2841er_read_agc_gain_s(struct cxd2841er_priv *priv)
{
 u8 data[2];


 cxd2841er_write_reg(priv, I2C_SLVT, 0x00, 0xa0);





 cxd2841er_read_regs(priv, I2C_SLVT, 0x1f, data, 2);
 return ((((u16)data[0] & 0x1F) << 8) | (u16)(data[1] & 0xFF)) << 3;
}
