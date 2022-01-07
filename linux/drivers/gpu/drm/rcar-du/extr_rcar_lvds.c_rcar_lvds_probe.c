
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_6__ {int of_node; int * funcs; struct rcar_lvds* driver_private; } ;
struct rcar_lvds {TYPE_2__ bridge; int mmio; int info; TYPE_1__* dev; } ;
struct TYPE_5__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int devm_ioremap_resource (TYPE_1__*,struct resource*) ;
 struct rcar_lvds* devm_kzalloc (TYPE_1__*,int,int ) ;
 int drm_bridge_add (TYPE_2__*) ;
 int of_device_get_match_data (TYPE_1__*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct rcar_lvds*) ;
 int rcar_lvds_bridge_ops ;
 int rcar_lvds_get_clocks (struct rcar_lvds*) ;
 int rcar_lvds_parse_dt (struct rcar_lvds*) ;

__attribute__((used)) static int rcar_lvds_probe(struct platform_device *pdev)
{
 struct rcar_lvds *lvds;
 struct resource *mem;
 int ret;

 lvds = devm_kzalloc(&pdev->dev, sizeof(*lvds), GFP_KERNEL);
 if (lvds == ((void*)0))
  return -ENOMEM;

 platform_set_drvdata(pdev, lvds);

 lvds->dev = &pdev->dev;
 lvds->info = of_device_get_match_data(&pdev->dev);

 ret = rcar_lvds_parse_dt(lvds);
 if (ret < 0)
  return ret;

 lvds->bridge.driver_private = lvds;
 lvds->bridge.funcs = &rcar_lvds_bridge_ops;
 lvds->bridge.of_node = pdev->dev.of_node;

 mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 lvds->mmio = devm_ioremap_resource(&pdev->dev, mem);
 if (IS_ERR(lvds->mmio))
  return PTR_ERR(lvds->mmio);

 ret = rcar_lvds_get_clocks(lvds);
 if (ret < 0)
  return ret;

 drm_bridge_add(&lvds->bridge);

 return 0;
}
