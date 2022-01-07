
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_mc {int dummy; } ;
struct platform_device {int dummy; } ;
struct device_node {int dummy; } ;


 int ENODEV ;
 int ENOENT ;
 int EPROBE_DEFER ;
 struct tegra_mc* ERR_PTR (int ) ;
 struct device_node* of_find_compatible_node (int *,int *,char*) ;
 struct platform_device* of_find_device_by_node (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 struct tegra_mc* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static struct tegra_mc *tegra_get_memory_controller(void)
{
 struct platform_device *pdev;
 struct device_node *np;
 struct tegra_mc *mc;

 np = of_find_compatible_node(((void*)0), ((void*)0), "nvidia,tegra20-mc-gart");
 if (!np)
  return ERR_PTR(-ENOENT);

 pdev = of_find_device_by_node(np);
 of_node_put(np);
 if (!pdev)
  return ERR_PTR(-ENODEV);

 mc = platform_get_drvdata(pdev);
 if (!mc)
  return ERR_PTR(-EPROBE_DEFER);

 return mc;
}
