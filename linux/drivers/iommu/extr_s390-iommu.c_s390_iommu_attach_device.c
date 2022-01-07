
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct zpci_dev {scalar_t__ start_dma; scalar_t__ end_dma; struct s390_domain* s390_domain; scalar_t__ dma_table; } ;
struct s390_domain_device {int list; struct zpci_dev* zdev; } ;
struct s390_domain {int list_lock; int devices; scalar_t__ dma_table; } ;
struct TYPE_3__ {scalar_t__ aperture_start; scalar_t__ aperture_end; int force_aperture; } ;
struct iommu_domain {TYPE_1__ geometry; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct zpci_dev* sysdata; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct s390_domain_device*) ;
 struct s390_domain_device* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_2__* to_pci_dev (struct device*) ;
 struct s390_domain* to_s390_domain (struct iommu_domain*) ;
 int zpci_dma_exit_device (struct zpci_dev*) ;
 int zpci_dma_init_device (struct zpci_dev*) ;
 int zpci_register_ioat (struct zpci_dev*,int ,scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static int s390_iommu_attach_device(struct iommu_domain *domain,
        struct device *dev)
{
 struct s390_domain *s390_domain = to_s390_domain(domain);
 struct zpci_dev *zdev = to_pci_dev(dev)->sysdata;
 struct s390_domain_device *domain_device;
 unsigned long flags;
 int rc;

 if (!zdev)
  return -ENODEV;

 domain_device = kzalloc(sizeof(*domain_device), GFP_KERNEL);
 if (!domain_device)
  return -ENOMEM;

 if (zdev->dma_table)
  zpci_dma_exit_device(zdev);

 zdev->dma_table = s390_domain->dma_table;
 rc = zpci_register_ioat(zdev, 0, zdev->start_dma, zdev->end_dma,
    (u64) zdev->dma_table);
 if (rc)
  goto out_restore;

 spin_lock_irqsave(&s390_domain->list_lock, flags);

 if (list_empty(&s390_domain->devices)) {
  domain->geometry.aperture_start = zdev->start_dma;
  domain->geometry.aperture_end = zdev->end_dma;
  domain->geometry.force_aperture = 1;

 } else if (domain->geometry.aperture_start != zdev->start_dma ||
     domain->geometry.aperture_end != zdev->end_dma) {
  rc = -EINVAL;
  spin_unlock_irqrestore(&s390_domain->list_lock, flags);
  goto out_restore;
 }
 domain_device->zdev = zdev;
 zdev->s390_domain = s390_domain;
 list_add(&domain_device->list, &s390_domain->devices);
 spin_unlock_irqrestore(&s390_domain->list_lock, flags);

 return 0;

out_restore:
 zpci_dma_init_device(zdev);
 kfree(domain_device);

 return rc;
}
