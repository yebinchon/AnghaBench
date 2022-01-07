
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_5__ {int * init; } ;
struct hdmi_pll_8960 {TYPE_2__ clk_hw; struct platform_device* pdev; struct clk* mmio; } ;
struct clk {int dummy; } ;
struct TYPE_4__ {scalar_t__ rate; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int DRM_DEV_ERROR (struct device*,char*) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct clk*) ;
 scalar_t__ WARN_ON (int) ;
 struct clk* devm_clk_register (struct device*,TYPE_2__*) ;
 struct hdmi_pll_8960* devm_kzalloc (struct device*,int,int ) ;
 TYPE_1__* freqtbl ;
 struct clk* msm_ioremap (struct platform_device*,char*,char*) ;
 int pll_init ;

int msm_hdmi_pll_8960_init(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct hdmi_pll_8960 *pll;
 struct clk *clk;
 int i;


 for (i = 0; i < (ARRAY_SIZE(freqtbl) - 1); i++)
  if (WARN_ON(freqtbl[i].rate < freqtbl[i + 1].rate))
   return -EINVAL;

 pll = devm_kzalloc(dev, sizeof(*pll), GFP_KERNEL);
 if (!pll)
  return -ENOMEM;

 pll->mmio = msm_ioremap(pdev, "hdmi_pll", "HDMI_PLL");
 if (IS_ERR(pll->mmio)) {
  DRM_DEV_ERROR(dev, "failed to map pll base\n");
  return -ENOMEM;
 }

 pll->pdev = pdev;
 pll->clk_hw.init = &pll_init;

 clk = devm_clk_register(dev, &pll->clk_hw);
 if (IS_ERR(clk)) {
  DRM_DEV_ERROR(dev, "failed to register pll clock\n");
  return -EINVAL;
 }

 return 0;
}
