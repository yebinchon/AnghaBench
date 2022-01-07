
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_mc {scalar_t__ regs; } ;
struct resource {scalar_t__ end; int start; } ;
struct gart_device {int iommu; int savedata; int dom_lock; int pte_lock; scalar_t__ iovmm_end; int iovmm_base; scalar_t__ regs; struct device* dev; } ;
struct device {int fwnode; } ;


 int BUILD_BUG_ON (int) ;
 int ENOMEM ;
 int ENXIO ;
 struct gart_device* ERR_PTR (int) ;
 scalar_t__ GART_PAGE_SHIFT ;
 int GART_PAGE_SIZE ;
 scalar_t__ GART_REG_BASE ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ PAGE_SHIFT ;
 int dev_err (struct device*,char*) ;
 int do_gart_setup (struct gart_device*,int *) ;
 struct gart_device* gart_handle ;
 int gart_iommu_ops ;
 int iommu_device_register (int *) ;
 int iommu_device_set_fwnode (int *,int ) ;
 int iommu_device_set_ops (int *,int *) ;
 int iommu_device_sysfs_add (int *,struct device*,int *,char*) ;
 int iommu_device_sysfs_remove (int *) ;
 int iommu_device_unregister (int *) ;
 int kfree (struct gart_device*) ;
 struct gart_device* kzalloc (int,int ) ;
 struct resource* platform_get_resource (int ,int ,int) ;
 int resource_size (struct resource*) ;
 int spin_lock_init (int *) ;
 int to_platform_device (struct device*) ;
 int vmalloc (int) ;

struct gart_device *tegra_gart_probe(struct device *dev, struct tegra_mc *mc)
{
 struct gart_device *gart;
 struct resource *res;
 int err;

 BUILD_BUG_ON(PAGE_SHIFT != GART_PAGE_SHIFT);


 res = platform_get_resource(to_platform_device(dev), IORESOURCE_MEM, 1);
 if (!res) {
  dev_err(dev, "Memory aperture resource unavailable\n");
  return ERR_PTR(-ENXIO);
 }

 gart = kzalloc(sizeof(*gart), GFP_KERNEL);
 if (!gart)
  return ERR_PTR(-ENOMEM);

 gart_handle = gart;

 gart->dev = dev;
 gart->regs = mc->regs + GART_REG_BASE;
 gart->iovmm_base = res->start;
 gart->iovmm_end = res->end + 1;
 spin_lock_init(&gart->pte_lock);
 spin_lock_init(&gart->dom_lock);

 do_gart_setup(gart, ((void*)0));

 err = iommu_device_sysfs_add(&gart->iommu, dev, ((void*)0), "gart");
 if (err)
  goto free_gart;

 iommu_device_set_ops(&gart->iommu, &gart_iommu_ops);
 iommu_device_set_fwnode(&gart->iommu, dev->fwnode);

 err = iommu_device_register(&gart->iommu);
 if (err)
  goto remove_sysfs;

 gart->savedata = vmalloc(resource_size(res) / GART_PAGE_SIZE *
     sizeof(u32));
 if (!gart->savedata) {
  err = -ENOMEM;
  goto unregister_iommu;
 }

 return gart;

unregister_iommu:
 iommu_device_unregister(&gart->iommu);
remove_sysfs:
 iommu_device_sysfs_remove(&gart->iommu);
free_gart:
 kfree(gart);

 return ERR_PTR(err);
}
