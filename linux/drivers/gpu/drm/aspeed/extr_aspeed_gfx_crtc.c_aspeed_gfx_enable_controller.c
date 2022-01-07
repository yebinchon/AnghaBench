
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aspeed_gfx {scalar_t__ base; int scu; } ;


 int BIT (int) ;
 scalar_t__ CRT_CTRL1 ;
 scalar_t__ CRT_CTRL2 ;
 int CRT_CTRL_DAC_EN ;
 int CRT_CTRL_EN ;
 int readl (scalar_t__) ;
 int regmap_update_bits (int ,int,int ,int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void aspeed_gfx_enable_controller(struct aspeed_gfx *priv)
{
 u32 ctrl1 = readl(priv->base + CRT_CTRL1);
 u32 ctrl2 = readl(priv->base + CRT_CTRL2);


 regmap_update_bits(priv->scu, 0x2c, BIT(16), BIT(16));

 writel(ctrl1 | CRT_CTRL_EN, priv->base + CRT_CTRL1);
 writel(ctrl2 | CRT_CTRL_DAC_EN, priv->base + CRT_CTRL2);
}
