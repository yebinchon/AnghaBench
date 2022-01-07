
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_phandle_args {int args_count; int np; int args; } ;
struct fsl_mc_device {int dev; int icid; } ;
struct device_node {int dummy; } ;


 int ENODEV ;
 int NO_IOMMU ;
 int of_iommu_xlate (int *,struct of_phandle_args*) ;
 int of_map_rid (struct device_node*,int ,char*,char*,int *,int ) ;
 int of_node_put (int ) ;

__attribute__((used)) static int of_fsl_mc_iommu_init(struct fsl_mc_device *mc_dev,
    struct device_node *master_np)
{
 struct of_phandle_args iommu_spec = { .args_count = 1 };
 int err;

 err = of_map_rid(master_np, mc_dev->icid, "iommu-map",
    "iommu-map-mask", &iommu_spec.np,
    iommu_spec.args);
 if (err)
  return err == -ENODEV ? NO_IOMMU : err;

 err = of_iommu_xlate(&mc_dev->dev, &iommu_spec);
 of_node_put(iommu_spec.np);
 return err;
}
