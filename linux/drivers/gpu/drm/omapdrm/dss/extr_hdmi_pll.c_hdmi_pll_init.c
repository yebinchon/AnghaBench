
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct hdmi_wp_data {int dummy; } ;
struct hdmi_pll_data {int base; struct hdmi_wp_data* wp; struct platform_device* pdev; } ;
struct dss_device {int dummy; } ;


 int DSSERR (char*) ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 int hdmi_init_pll_data (struct dss_device*,struct platform_device*,struct hdmi_pll_data*) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;

int hdmi_pll_init(struct dss_device *dss, struct platform_device *pdev,
    struct hdmi_pll_data *pll, struct hdmi_wp_data *wp)
{
 int r;
 struct resource *res;

 pll->pdev = pdev;
 pll->wp = wp;

 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "pll");
 pll->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(pll->base))
  return PTR_ERR(pll->base);

 r = hdmi_init_pll_data(dss, pdev, pll);
 if (r) {
  DSSERR("failed to init HDMI PLL\n");
  return r;
 }

 return 0;
}
