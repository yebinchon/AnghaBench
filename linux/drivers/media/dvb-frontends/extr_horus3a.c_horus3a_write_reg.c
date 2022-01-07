
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct horus3a_priv {int dummy; } ;


 int horus3a_write_regs (struct horus3a_priv*,int ,int *,int) ;

__attribute__((used)) static int horus3a_write_reg(struct horus3a_priv *priv, u8 reg, u8 val)
{
 u8 tmp = val;

 return horus3a_write_regs(priv, reg, &tmp, 1);
}
