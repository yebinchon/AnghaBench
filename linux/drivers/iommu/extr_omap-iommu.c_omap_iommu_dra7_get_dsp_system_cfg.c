
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct omap_iommu {int id; int syscfg; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_1__*,char*) ;
 int of_device_is_compatible (struct device_node*,char*) ;
 int of_property_read_bool (struct device_node*,char*) ;
 scalar_t__ of_property_read_u32_index (struct device_node*,char*,int,int*) ;
 int syscon_regmap_lookup_by_phandle (struct device_node*,char*) ;

__attribute__((used)) static int omap_iommu_dra7_get_dsp_system_cfg(struct platform_device *pdev,
           struct omap_iommu *obj)
{
 struct device_node *np = pdev->dev.of_node;
 int ret;

 if (!of_device_is_compatible(np, "ti,dra7-dsp-iommu"))
  return 0;

 if (!of_property_read_bool(np, "ti,syscon-mmuconfig")) {
  dev_err(&pdev->dev, "ti,syscon-mmuconfig property is missing\n");
  return -EINVAL;
 }

 obj->syscfg =
  syscon_regmap_lookup_by_phandle(np, "ti,syscon-mmuconfig");
 if (IS_ERR(obj->syscfg)) {

  ret = PTR_ERR(obj->syscfg);
  return ret;
 }

 if (of_property_read_u32_index(np, "ti,syscon-mmuconfig", 1,
           &obj->id)) {
  dev_err(&pdev->dev, "couldn't get the IOMMU instance id within subsystem\n");
  return -EINVAL;
 }

 if (obj->id != 0 && obj->id != 1) {
  dev_err(&pdev->dev, "invalid IOMMU instance id\n");
  return -EINVAL;
 }

 return 0;
}
