
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxd2841er_priv {int dummy; } ;


 int I2C_SLVT ;
 int cxd2841er_write_reg (struct cxd2841er_priv*,int ,int,int) ;

__attribute__((used)) static int cxd2841er_unfreeze_regs(struct cxd2841er_priv *priv)
{



 cxd2841er_write_reg(priv, I2C_SLVT, 0x01, 0x00);
 return 0;
}
