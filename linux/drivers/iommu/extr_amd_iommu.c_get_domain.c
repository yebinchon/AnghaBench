
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct protection_domain {int dummy; } ;
struct iommu_domain {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int defer_attach; struct protection_domain* domain; } ;


 int EBUSY ;
 int EINVAL ;
 struct protection_domain* ERR_PTR (int ) ;
 int attach_device (struct device*,struct protection_domain*) ;
 int check_device (struct device*) ;
 int dma_ops_domain (struct protection_domain*) ;
 TYPE_1__* get_dev_data (struct device*) ;
 struct iommu_domain* iommu_get_domain_for_dev (struct device*) ;
 struct protection_domain* to_pdomain (struct iommu_domain*) ;

__attribute__((used)) static struct protection_domain *get_domain(struct device *dev)
{
 struct protection_domain *domain;
 struct iommu_domain *io_domain;

 if (!check_device(dev))
  return ERR_PTR(-EINVAL);

 domain = get_dev_data(dev)->domain;
 if (domain == ((void*)0) && get_dev_data(dev)->defer_attach) {
  get_dev_data(dev)->defer_attach = 0;
  io_domain = iommu_get_domain_for_dev(dev);
  domain = to_pdomain(io_domain);
  attach_device(dev, domain);
 }
 if (domain == ((void*)0))
  return ERR_PTR(-EBUSY);

 if (!dma_ops_domain(domain))
  return ERR_PTR(-EBUSY);

 return domain;
}
