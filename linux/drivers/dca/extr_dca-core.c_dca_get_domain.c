
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {int dummy; } ;
struct device {int dummy; } ;
struct dca_domain {int dummy; } ;


 int dca_domains ;
 struct dca_domain* dca_find_domain (struct pci_bus*) ;
 struct pci_bus* dca_pci_rc_from_dev (struct device*) ;
 scalar_t__ dca_provider_ioat_ver_3_0 (struct device*) ;
 int dca_providers_blocked ;
 int list_empty (int *) ;

__attribute__((used)) static struct dca_domain *dca_get_domain(struct device *dev)
{
 struct pci_bus *rc;
 struct dca_domain *domain;

 rc = dca_pci_rc_from_dev(dev);
 domain = dca_find_domain(rc);

 if (!domain) {
  if (dca_provider_ioat_ver_3_0(dev) && !list_empty(&dca_domains))
   dca_providers_blocked = 1;
 }

 return domain;
}
