
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct dss_pll {char* name; int * ops; int * hw; struct clk* clkin; int base; int id; } ;
struct hdmi_pll_data {TYPE_1__* wp; int base; struct dss_pll pll; } ;
struct dss_device {int dummy; } ;
struct clk {int dummy; } ;
struct TYPE_2__ {int version; } ;


 int DSSERR (char*) ;
 int DSS_PLL_HDMI ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 struct clk* devm_clk_get (int *,char*) ;
 int dss_omap4_hdmi_pll_hw ;
 int dss_omap5_hdmi_pll_hw ;
 int dss_pll_register (struct dss_device*,struct dss_pll*) ;
 int hdmi_pll_ops ;

__attribute__((used)) static int hdmi_init_pll_data(struct dss_device *dss,
         struct platform_device *pdev,
         struct hdmi_pll_data *hpll)
{
 struct dss_pll *pll = &hpll->pll;
 struct clk *clk;
 int r;

 clk = devm_clk_get(&pdev->dev, "sys_clk");
 if (IS_ERR(clk)) {
  DSSERR("can't get sys_clk\n");
  return PTR_ERR(clk);
 }

 pll->name = "hdmi";
 pll->id = DSS_PLL_HDMI;
 pll->base = hpll->base;
 pll->clkin = clk;

 if (hpll->wp->version == 4)
  pll->hw = &dss_omap4_hdmi_pll_hw;
 else
  pll->hw = &dss_omap5_hdmi_pll_hw;

 pll->ops = &hdmi_pll_ops;

 r = dss_pll_register(dss, pll);
 if (r)
  return r;

 return 0;
}
