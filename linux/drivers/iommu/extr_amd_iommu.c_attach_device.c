
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct protection_domain {int flags; int lock; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int enabled; void* qdep; } ;
struct iommu_dev_data {int lock; TYPE_1__ ats; int pri_tlp; scalar_t__ iommu_v2; int passthrough; int * domain; } ;
struct device {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 int PAGE_SHIFT ;
 int PD_IOMMUV2_MASK ;
 scalar_t__ amd_iommu_iotlb_sup ;
 int dev_is_pci (struct device*) ;
 int do_attach (struct iommu_dev_data*,struct protection_domain*) ;
 int domain_flush_complete (struct protection_domain*) ;
 int domain_flush_tlb_pde (struct protection_domain*) ;
 struct iommu_dev_data* get_dev_data (struct device*) ;
 void* pci_ats_queue_depth (struct pci_dev*) ;
 scalar_t__ pci_enable_ats (struct pci_dev*,int ) ;
 int pci_prg_resp_pasid_required (struct pci_dev*) ;
 scalar_t__ pdev_iommuv2_enable (struct pci_dev*) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static int attach_device(struct device *dev,
    struct protection_domain *domain)
{
 struct pci_dev *pdev;
 struct iommu_dev_data *dev_data;
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&domain->lock, flags);

 dev_data = get_dev_data(dev);

 spin_lock(&dev_data->lock);

 ret = -EBUSY;
 if (dev_data->domain != ((void*)0))
  goto out;

 if (!dev_is_pci(dev))
  goto skip_ats_check;

 pdev = to_pci_dev(dev);
 if (domain->flags & PD_IOMMUV2_MASK) {
  ret = -EINVAL;
  if (!dev_data->passthrough)
   goto out;

  if (dev_data->iommu_v2) {
   if (pdev_iommuv2_enable(pdev) != 0)
    goto out;

   dev_data->ats.enabled = 1;
   dev_data->ats.qdep = pci_ats_queue_depth(pdev);
   dev_data->pri_tlp = pci_prg_resp_pasid_required(pdev);
  }
 } else if (amd_iommu_iotlb_sup &&
     pci_enable_ats(pdev, PAGE_SHIFT) == 0) {
  dev_data->ats.enabled = 1;
  dev_data->ats.qdep = pci_ats_queue_depth(pdev);
 }

skip_ats_check:
 ret = 0;

 do_attach(dev_data, domain);






 domain_flush_tlb_pde(domain);

 domain_flush_complete(domain);

out:
 spin_unlock(&dev_data->lock);

 spin_unlock_irqrestore(&domain->lock, flags);

 return ret;
}
