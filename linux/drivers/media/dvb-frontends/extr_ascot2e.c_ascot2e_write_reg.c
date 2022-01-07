
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ascot2e_priv {int dummy; } ;


 int ascot2e_write_regs (struct ascot2e_priv*,int ,int *,int) ;

__attribute__((used)) static int ascot2e_write_reg(struct ascot2e_priv *priv, u8 reg, u8 val)
{
 u8 tmp = val;

 return ascot2e_write_regs(priv, reg, &tmp, 1);
}
