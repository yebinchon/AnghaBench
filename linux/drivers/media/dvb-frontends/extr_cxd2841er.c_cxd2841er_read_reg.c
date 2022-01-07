
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cxd2841er_priv {int dummy; } ;


 int cxd2841er_read_regs (struct cxd2841er_priv*,int ,int ,int *,int) ;

__attribute__((used)) static int cxd2841er_read_reg(struct cxd2841er_priv *priv,
         u8 addr, u8 reg, u8 *val)
{
 return cxd2841er_read_regs(priv, addr, reg, val, 1);
}
