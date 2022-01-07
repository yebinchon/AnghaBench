
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lp55xx_chip {TYPE_1__* cl; struct clk* clk; } ;
struct clk {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ IS_ERR (struct clk*) ;
 scalar_t__ LP55XX_CLK_32K ;
 int clk_disable_unprepare (struct clk*) ;
 scalar_t__ clk_get_rate (struct clk*) ;
 int clk_prepare_enable (struct clk*) ;
 int dev_info (int *,char*,...) ;
 struct clk* devm_clk_get (int *,char*) ;

bool lp55xx_is_extclk_used(struct lp55xx_chip *chip)
{
 struct clk *clk;
 int err;

 clk = devm_clk_get(&chip->cl->dev, "32k_clk");
 if (IS_ERR(clk))
  goto use_internal_clk;

 err = clk_prepare_enable(clk);
 if (err)
  goto use_internal_clk;

 if (clk_get_rate(clk) != LP55XX_CLK_32K) {
  clk_disable_unprepare(clk);
  goto use_internal_clk;
 }

 dev_info(&chip->cl->dev, "%dHz external clock used\n", LP55XX_CLK_32K);

 chip->clk = clk;
 return 1;

use_internal_clk:
 dev_info(&chip->cl->dev, "internal clock used\n");
 return 0;
}
