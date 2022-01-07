
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;
struct cc_drvdata {struct clk* clk; } ;


 scalar_t__ IS_ERR (struct clk*) ;
 int clk_disable_unprepare (struct clk*) ;

void cc_clk_off(struct cc_drvdata *drvdata)
{
 struct clk *clk = drvdata->clk;

 if (IS_ERR(clk))

  return;

 clk_disable_unprepare(clk);
}
