
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int skip_connector; struct drm_panel* panel; } ;
struct exynos_dp_device {struct drm_bridge* ptn_bridge; TYPE_1__ plat_data; } ;
struct drm_panel {int dummy; } ;
struct drm_bridge {int dummy; } ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct drm_panel*) ;
 int PTR_ERR (struct drm_panel*) ;
 int component_add (struct device*,int *) ;
 struct exynos_dp_device* devm_kzalloc (struct device*,int,int ) ;
 int drm_of_find_panel_or_bridge (int ,int ,int ,struct drm_panel**,struct drm_bridge**) ;
 int exynos_dp_ops ;
 struct drm_panel* of_drm_find_panel (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (int ,char*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct exynos_dp_device*) ;

__attribute__((used)) static int exynos_dp_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct device_node *np;
 struct exynos_dp_device *dp;
 struct drm_panel *panel;
 struct drm_bridge *bridge;
 int ret;

 dp = devm_kzalloc(&pdev->dev, sizeof(struct exynos_dp_device),
     GFP_KERNEL);
 if (!dp)
  return -ENOMEM;






 platform_set_drvdata(pdev, dp);


 np = of_parse_phandle(dev->of_node, "panel", 0);
 if (np) {
  dp->plat_data.panel = of_drm_find_panel(np);

  of_node_put(np);
  if (IS_ERR(dp->plat_data.panel))
   return PTR_ERR(dp->plat_data.panel);

  goto out;
 }

 ret = drm_of_find_panel_or_bridge(dev->of_node, 0, 0, &panel, &bridge);
 if (ret)
  return ret;


 dp->plat_data.panel = panel;
 dp->plat_data.skip_connector = !!bridge;
 dp->ptn_bridge = bridge;

out:
 return component_add(&pdev->dev, &exynos_dp_ops);
}
