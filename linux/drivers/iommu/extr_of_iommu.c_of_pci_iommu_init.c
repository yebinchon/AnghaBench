
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;
struct of_phandle_args {int args_count; int np; int args; } ;
struct of_pci_iommu_alias_info {int dev; int np; } ;


 int ENODEV ;
 int NO_IOMMU ;
 int of_iommu_xlate (int ,struct of_phandle_args*) ;
 int of_map_rid (int ,int ,char*,char*,int *,int ) ;
 int of_node_put (int ) ;

__attribute__((used)) static int of_pci_iommu_init(struct pci_dev *pdev, u16 alias, void *data)
{
 struct of_pci_iommu_alias_info *info = data;
 struct of_phandle_args iommu_spec = { .args_count = 1 };
 int err;

 err = of_map_rid(info->np, alias, "iommu-map", "iommu-map-mask",
    &iommu_spec.np, iommu_spec.args);
 if (err)
  return err == -ENODEV ? NO_IOMMU : err;

 err = of_iommu_xlate(info->dev, &iommu_spec);
 of_node_put(iommu_spec.np);
 return err;
}
