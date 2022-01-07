
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uniphier_aidet_priv {int dummy; } ;


 int BIT (unsigned long) ;
 unsigned long UNIPHIER_AIDET_DETCONF ;
 int uniphier_aidet_reg_update (struct uniphier_aidet_priv*,unsigned int,int ,int ) ;

__attribute__((used)) static void uniphier_aidet_detconf_update(struct uniphier_aidet_priv *priv,
       unsigned long index, unsigned int val)
{
 unsigned int reg;
 u32 mask;

 reg = UNIPHIER_AIDET_DETCONF + index / 32 * 4;
 mask = BIT(index % 32);

 uniphier_aidet_reg_update(priv, reg, mask, val ? mask : 0);
}
