
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;
struct cc_drvdata {struct clk* clk; } ;


 scalar_t__ IS_ERR (struct clk*) ;
 int clk_prepare_enable (struct clk*) ;

int cc_clk_on(struct cc_drvdata *drvdata)
{
 struct clk *clk = drvdata->clk;
 int rc;

 if (IS_ERR(clk))

  return 0;

 rc = clk_prepare_enable(clk);
 if (rc)
  return rc;

 return 0;
}
