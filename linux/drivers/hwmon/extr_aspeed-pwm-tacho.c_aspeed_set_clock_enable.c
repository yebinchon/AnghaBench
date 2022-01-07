
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 int ASPEED_PTCR_CTRL ;
 int ASPEED_PTCR_CTRL_CLK_EN ;
 int regmap_update_bits (struct regmap*,int ,int ,int ) ;

__attribute__((used)) static void aspeed_set_clock_enable(struct regmap *regmap, bool val)
{
 regmap_update_bits(regmap, ASPEED_PTCR_CTRL,
      ASPEED_PTCR_CTRL_CLK_EN,
      val ? ASPEED_PTCR_CTRL_CLK_EN : 0);
}
