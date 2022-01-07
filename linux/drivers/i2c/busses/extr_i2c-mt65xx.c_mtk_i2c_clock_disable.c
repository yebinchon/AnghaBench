
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_i2c {scalar_t__ clk_dma; scalar_t__ clk_main; scalar_t__ clk_pmic; scalar_t__ have_pmic; scalar_t__ clk_arb; } ;


 int clk_disable_unprepare (scalar_t__) ;

__attribute__((used)) static void mtk_i2c_clock_disable(struct mtk_i2c *i2c)
{
 if (i2c->clk_arb)
  clk_disable_unprepare(i2c->clk_arb);

 if (i2c->have_pmic)
  clk_disable_unprepare(i2c->clk_pmic);

 clk_disable_unprepare(i2c->clk_main);
 clk_disable_unprepare(i2c->clk_dma);
}
