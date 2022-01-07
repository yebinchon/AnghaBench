
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int start; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int of_node; int * funcs; } ;
struct exynos_mic {TYPE_1__ bridge; int * clks; int sysreg; int reg; struct device* dev; } ;


 int DRM_DEV_DEBUG_KMS (struct device*,char*) ;
 int DRM_DEV_ERROR (struct device*,char*,...) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int NUM_CLKS ;
 int PTR_ERR (int ) ;
 int * clk_names ;
 int component_add (struct device*,int *) ;
 int devm_clk_get (struct device*,int ) ;
 int devm_ioremap (struct device*,int ,int ) ;
 struct exynos_mic* devm_kzalloc (struct device*,int,int ) ;
 int drm_bridge_add (TYPE_1__*) ;
 int exynos_mic_component_ops ;
 int mic_bridge_funcs ;
 int of_address_to_resource (int ,int ,struct resource*) ;
 int platform_set_drvdata (struct platform_device*,struct exynos_mic*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int resource_size (struct resource*) ;
 int syscon_regmap_lookup_by_phandle (int ,char*) ;

__attribute__((used)) static int exynos_mic_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct exynos_mic *mic;
 struct resource res;
 int ret, i;

 mic = devm_kzalloc(dev, sizeof(*mic), GFP_KERNEL);
 if (!mic) {
  DRM_DEV_ERROR(dev,
         "mic: Failed to allocate memory for MIC object\n");
  ret = -ENOMEM;
  goto err;
 }

 mic->dev = dev;

 ret = of_address_to_resource(dev->of_node, 0, &res);
 if (ret) {
  DRM_DEV_ERROR(dev, "mic: Failed to get mem region for MIC\n");
  goto err;
 }
 mic->reg = devm_ioremap(dev, res.start, resource_size(&res));
 if (!mic->reg) {
  DRM_DEV_ERROR(dev, "mic: Failed to remap for MIC\n");
  ret = -ENOMEM;
  goto err;
 }

 mic->sysreg = syscon_regmap_lookup_by_phandle(dev->of_node,
       "samsung,disp-syscon");
 if (IS_ERR(mic->sysreg)) {
  DRM_DEV_ERROR(dev, "mic: Failed to get system register.\n");
  ret = PTR_ERR(mic->sysreg);
  goto err;
 }

 for (i = 0; i < NUM_CLKS; i++) {
  mic->clks[i] = devm_clk_get(dev, clk_names[i]);
  if (IS_ERR(mic->clks[i])) {
   DRM_DEV_ERROR(dev, "mic: Failed to get clock (%s)\n",
          clk_names[i]);
   ret = PTR_ERR(mic->clks[i]);
   goto err;
  }
 }

 platform_set_drvdata(pdev, mic);

 mic->bridge.funcs = &mic_bridge_funcs;
 mic->bridge.of_node = dev->of_node;

 drm_bridge_add(&mic->bridge);

 pm_runtime_enable(dev);

 ret = component_add(dev, &exynos_mic_component_ops);
 if (ret)
  goto err_pm;

 DRM_DEV_DEBUG_KMS(dev, "MIC has been probed\n");

 return 0;

err_pm:
 pm_runtime_disable(dev);
err:
 return ret;
}
