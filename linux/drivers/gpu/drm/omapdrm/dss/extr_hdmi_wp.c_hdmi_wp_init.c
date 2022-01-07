
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct platform_device {int dev; } ;
struct hdmi_wp_data {unsigned int version; int phys_base; int base; } ;


 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;

int hdmi_wp_init(struct platform_device *pdev, struct hdmi_wp_data *wp,
   unsigned int version)
{
 struct resource *res;

 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "wp");
 wp->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(wp->base))
  return PTR_ERR(wp->base);

 wp->phys_base = res->start;
 wp->version = version;

 return 0;
}
