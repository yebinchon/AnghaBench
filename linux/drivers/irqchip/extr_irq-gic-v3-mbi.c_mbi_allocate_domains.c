
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int fwnode; struct irq_domain* parent; } ;


 int DOMAIN_BUS_NEXUS ;
 int ENOMEM ;
 struct irq_domain* irq_domain_create_tree (int ,int *,int *) ;
 int irq_domain_remove (struct irq_domain*) ;
 int irq_domain_update_bus_token (struct irq_domain*,int ) ;
 int mbi_allocate_pci_domain (struct irq_domain*,struct irq_domain**) ;
 int mbi_domain_ops ;
 int mbi_pmsi_domain_info ;
 struct irq_domain* platform_msi_create_irq_domain (int ,int *,struct irq_domain*) ;

__attribute__((used)) static int mbi_allocate_domains(struct irq_domain *parent)
{
 struct irq_domain *nexus_domain, *pci_domain, *plat_domain;
 int err;

 nexus_domain = irq_domain_create_tree(parent->fwnode,
           &mbi_domain_ops, ((void*)0));
 if (!nexus_domain)
  return -ENOMEM;

 irq_domain_update_bus_token(nexus_domain, DOMAIN_BUS_NEXUS);
 nexus_domain->parent = parent;

 err = mbi_allocate_pci_domain(nexus_domain, &pci_domain);

 plat_domain = platform_msi_create_irq_domain(parent->fwnode,
           &mbi_pmsi_domain_info,
           nexus_domain);

 if (err || !plat_domain) {
  if (plat_domain)
   irq_domain_remove(plat_domain);
  if (pci_domain)
   irq_domain_remove(pci_domain);
  irq_domain_remove(nexus_domain);
  return -ENOMEM;
 }

 return 0;
}
