
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dss_device {struct clk* parent_clk; TYPE_2__* feat; struct clk* dss_clk; TYPE_1__* pdev; } ;
struct clk {int dummy; } ;
struct TYPE_4__ {scalar_t__ parent_clk_name; } ;
struct TYPE_3__ {int dev; } ;


 int DSSERR (char*,...) ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 struct clk* clk_get (int *,scalar_t__) ;
 struct clk* devm_clk_get (int *,char*) ;

__attribute__((used)) static int dss_get_clocks(struct dss_device *dss)
{
 struct clk *clk;

 clk = devm_clk_get(&dss->pdev->dev, "fck");
 if (IS_ERR(clk)) {
  DSSERR("can't get clock fck\n");
  return PTR_ERR(clk);
 }

 dss->dss_clk = clk;

 if (dss->feat->parent_clk_name) {
  clk = clk_get(((void*)0), dss->feat->parent_clk_name);
  if (IS_ERR(clk)) {
   DSSERR("Failed to get %s\n",
          dss->feat->parent_clk_name);
   return PTR_ERR(clk);
  }
 } else {
  clk = ((void*)0);
 }

 dss->parent_clk = clk;

 return 0;
}
