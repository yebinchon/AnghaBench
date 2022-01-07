
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;


 int dev_name (TYPE_1__*) ;
 int of_device_is_compatible (struct device_node*,char*) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static bool omap_iommu_can_register(struct platform_device *pdev)
{
 struct device_node *np = pdev->dev.of_node;

 if (!of_device_is_compatible(np, "ti,dra7-dsp-iommu"))
  return 1;





 if ((!strcmp(dev_name(&pdev->dev), "40d01000.mmu")) ||
     (!strcmp(dev_name(&pdev->dev), "41501000.mmu")))
  return 1;

 return 0;
}
