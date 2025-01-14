
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dss_pll {char* name; int * ops; int hw; int base; struct clk* clkin; int id; } ;
struct dss_device {int dummy; } ;
struct dsi_data {scalar_t__ module_id; TYPE_1__* data; int pll_base; int dev; struct dss_pll pll; } ;
struct clk {int dummy; } ;
struct TYPE_2__ {int pll_hw; } ;


 int DSSERR (char*) ;
 int DSS_PLL_DSI1 ;
 int DSS_PLL_DSI2 ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 struct clk* devm_clk_get (int ,char*) ;
 int dsi_pll_ops ;
 int dss_pll_register (struct dss_device*,struct dss_pll*) ;

__attribute__((used)) static int dsi_init_pll_data(struct dss_device *dss, struct dsi_data *dsi)
{
 struct dss_pll *pll = &dsi->pll;
 struct clk *clk;
 int r;

 clk = devm_clk_get(dsi->dev, "sys_clk");
 if (IS_ERR(clk)) {
  DSSERR("can't get sys_clk\n");
  return PTR_ERR(clk);
 }

 pll->name = dsi->module_id == 0 ? "dsi0" : "dsi1";
 pll->id = dsi->module_id == 0 ? DSS_PLL_DSI1 : DSS_PLL_DSI2;
 pll->clkin = clk;
 pll->base = dsi->pll_base;
 pll->hw = dsi->data->pll_hw;
 pll->ops = &dsi_pll_ops;

 r = dss_pll_register(dss, pll);
 if (r)
  return r;

 return 0;
}
