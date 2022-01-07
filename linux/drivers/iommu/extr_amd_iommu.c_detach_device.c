
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct protection_domain {int flags; int lock; } ;
struct TYPE_2__ {int enabled; } ;
struct iommu_dev_data {int lock; TYPE_1__ ats; scalar_t__ iommu_v2; struct protection_domain* domain; } ;
struct device {int dummy; } ;


 int PD_IOMMUV2_MASK ;
 scalar_t__ WARN_ON (int) ;
 int dev_is_pci (struct device*) ;
 int do_detach (struct iommu_dev_data*) ;
 struct iommu_dev_data* get_dev_data (struct device*) ;
 int pci_disable_ats (int ) ;
 int pdev_iommuv2_disable (int ) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int to_pci_dev (struct device*) ;

__attribute__((used)) static void detach_device(struct device *dev)
{
 struct protection_domain *domain;
 struct iommu_dev_data *dev_data;
 unsigned long flags;

 dev_data = get_dev_data(dev);
 domain = dev_data->domain;

 spin_lock_irqsave(&domain->lock, flags);

 spin_lock(&dev_data->lock);







 if (WARN_ON(!dev_data->domain))
  goto out;

 do_detach(dev_data);

 if (!dev_is_pci(dev))
  goto out;

 if (domain->flags & PD_IOMMUV2_MASK && dev_data->iommu_v2)
  pdev_iommuv2_disable(to_pci_dev(dev));
 else if (dev_data->ats.enabled)
  pci_disable_ats(to_pci_dev(dev));

 dev_data->ats.enabled = 0;

out:
 spin_unlock(&dev_data->lock);

 spin_unlock_irqrestore(&domain->lock, flags);
}
