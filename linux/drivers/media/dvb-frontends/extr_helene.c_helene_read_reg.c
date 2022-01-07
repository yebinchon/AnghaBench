
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct helene_priv {int dummy; } ;


 int helene_read_regs (struct helene_priv*,int ,int *,int) ;

__attribute__((used)) static int helene_read_reg(struct helene_priv *priv, u8 reg, u8 *val)
{
 return helene_read_regs(priv, reg, val, 1);
}
