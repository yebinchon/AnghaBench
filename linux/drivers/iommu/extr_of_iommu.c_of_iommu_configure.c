
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_phandle_args {int np; } ;
struct of_pci_iommu_alias_info {struct device_node* np; struct device* dev; } ;
typedef struct iommu_ops const iommu_ops ;
struct iommu_fwspec {struct iommu_ops const* ops; } ;
struct device_node {int dummy; } ;
struct device {scalar_t__ bus; } ;


 int EPROBE_DEFER ;
 struct iommu_ops const* ERR_PTR (int) ;
 int NO_IOMMU ;
 int dev_dbg (struct device*,char*,int) ;
 struct iommu_fwspec* dev_iommu_fwspec_get (struct device*) ;
 scalar_t__ dev_is_fsl_mc (struct device*) ;
 scalar_t__ dev_is_pci (struct device*) ;
 int device_iommu_mapped (struct device*) ;
 int iommu_fwspec_free (struct device*) ;
 int iommu_probe_device (struct device*) ;
 int of_fsl_mc_iommu_init (int ,struct device_node*) ;
 int of_iommu_xlate (struct device*,struct of_phandle_args*) ;
 int of_node_put (int ) ;
 int of_parse_phandle_with_args (struct device_node*,char*,char*,int,struct of_phandle_args*) ;
 int of_pci_iommu_init ;
 int pci_for_each_dma_alias (int ,int ,struct of_pci_iommu_alias_info*) ;
 int to_fsl_mc_device (struct device*) ;
 int to_pci_dev (struct device*) ;

const struct iommu_ops *of_iommu_configure(struct device *dev,
        struct device_node *master_np)
{
 const struct iommu_ops *ops = ((void*)0);
 struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
 int err = NO_IOMMU;

 if (!master_np)
  return ((void*)0);

 if (fwspec) {
  if (fwspec->ops)
   return fwspec->ops;


  iommu_fwspec_free(dev);
 }






 if (dev_is_pci(dev)) {
  struct of_pci_iommu_alias_info info = {
   .dev = dev,
   .np = master_np,
  };

  err = pci_for_each_dma_alias(to_pci_dev(dev),
          of_pci_iommu_init, &info);
 } else if (dev_is_fsl_mc(dev)) {
  err = of_fsl_mc_iommu_init(to_fsl_mc_device(dev), master_np);
 } else {
  struct of_phandle_args iommu_spec;
  int idx = 0;

  while (!of_parse_phandle_with_args(master_np, "iommus",
         "#iommu-cells",
         idx, &iommu_spec)) {
   err = of_iommu_xlate(dev, &iommu_spec);
   of_node_put(iommu_spec.np);
   idx++;
   if (err)
    break;
  }
 }
 if (!err) {

  fwspec = dev_iommu_fwspec_get(dev);
  ops = fwspec->ops;
 }




 if (!err && dev->bus && !device_iommu_mapped(dev))
  err = iommu_probe_device(dev);


 if (err == -EPROBE_DEFER) {
  ops = ERR_PTR(err);
 } else if (err < 0) {
  dev_dbg(dev, "Adding to IOMMU failed: %d\n", err);
  ops = ((void*)0);
 }

 return ops;
}
