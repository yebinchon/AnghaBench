
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct hdmi_phy_data {int base; int * features; } ;


 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 int omap44xx_phy_feats ;
 int omap54xx_phy_feats ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;

int hdmi_phy_init(struct platform_device *pdev, struct hdmi_phy_data *phy,
    unsigned int version)
{
 struct resource *res;

 if (version == 4)
  phy->features = &omap44xx_phy_feats;
 else
  phy->features = &omap54xx_phy_feats;

 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "phy");
 phy->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(phy->base))
  return PTR_ERR(phy->base);

 return 0;
}
