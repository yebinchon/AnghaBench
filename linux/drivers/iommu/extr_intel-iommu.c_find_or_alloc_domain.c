
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct pci_dev {int bus; } ;
struct intel_iommu {int dummy; } ;
struct dmar_domain {int dummy; } ;
struct device_domain_info {struct dmar_domain* domain; struct intel_iommu* iommu; } ;
struct device {int dummy; } ;


 int PCI_BUS_NUM (int) ;
 struct dmar_domain* alloc_domain (int ) ;
 scalar_t__ dev_is_pci (struct device*) ;
 int device_domain_lock ;
 struct intel_iommu* device_to_iommu (struct device*,int *,int *) ;
 struct device_domain_info* dmar_search_domain_by_dev_info (int ,int ,int) ;
 int domain_exit (struct dmar_domain*) ;
 scalar_t__ domain_init (struct dmar_domain*,struct intel_iommu*,int) ;
 int get_last_alias ;
 int pci_domain_nr (int ) ;
 int pci_for_each_dma_alias (struct pci_dev*,int ,int*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static struct dmar_domain *find_or_alloc_domain(struct device *dev, int gaw)
{
 struct device_domain_info *info;
 struct dmar_domain *domain = ((void*)0);
 struct intel_iommu *iommu;
 u16 dma_alias;
 unsigned long flags;
 u8 bus, devfn;

 iommu = device_to_iommu(dev, &bus, &devfn);
 if (!iommu)
  return ((void*)0);

 if (dev_is_pci(dev)) {
  struct pci_dev *pdev = to_pci_dev(dev);

  pci_for_each_dma_alias(pdev, get_last_alias, &dma_alias);

  spin_lock_irqsave(&device_domain_lock, flags);
  info = dmar_search_domain_by_dev_info(pci_domain_nr(pdev->bus),
            PCI_BUS_NUM(dma_alias),
            dma_alias & 0xff);
  if (info) {
   iommu = info->iommu;
   domain = info->domain;
  }
  spin_unlock_irqrestore(&device_domain_lock, flags);


  if (info)
   goto out;
 }


 domain = alloc_domain(0);
 if (!domain)
  return ((void*)0);
 if (domain_init(domain, iommu, gaw)) {
  domain_exit(domain);
  return ((void*)0);
 }

out:
 return domain;
}
