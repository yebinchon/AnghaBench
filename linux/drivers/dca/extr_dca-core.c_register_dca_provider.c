
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {int dummy; } ;
struct device {int dummy; } ;
struct dca_provider {int node; } ;
struct dca_domain {int dca_providers; int node; } ;


 int DCA_PROVIDER_ADD ;
 int ENODEV ;
 int blocking_notifier_call_chain (int *,int ,int *) ;
 struct dca_domain* dca_allocate_domain (struct pci_bus*) ;
 int dca_domains ;
 struct dca_domain* dca_get_domain (struct device*) ;
 int dca_lock ;
 struct pci_bus* dca_pci_rc_from_dev (struct device*) ;
 int dca_provider_chain ;
 scalar_t__ dca_providers_blocked ;
 int dca_sysfs_add_provider (struct dca_provider*,struct device*) ;
 int dca_sysfs_remove_provider (struct dca_provider*) ;
 int kfree (struct dca_domain*) ;
 int list_add (int *,int *) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int unregister_dca_providers () ;

int register_dca_provider(struct dca_provider *dca, struct device *dev)
{
 int err;
 unsigned long flags;
 struct dca_domain *domain, *newdomain = ((void*)0);

 raw_spin_lock_irqsave(&dca_lock, flags);
 if (dca_providers_blocked) {
  raw_spin_unlock_irqrestore(&dca_lock, flags);
  return -ENODEV;
 }
 raw_spin_unlock_irqrestore(&dca_lock, flags);

 err = dca_sysfs_add_provider(dca, dev);
 if (err)
  return err;

 raw_spin_lock_irqsave(&dca_lock, flags);
 domain = dca_get_domain(dev);
 if (!domain) {
  struct pci_bus *rc;

  if (dca_providers_blocked) {
   raw_spin_unlock_irqrestore(&dca_lock, flags);
   dca_sysfs_remove_provider(dca);
   unregister_dca_providers();
   return -ENODEV;
  }

  raw_spin_unlock_irqrestore(&dca_lock, flags);
  rc = dca_pci_rc_from_dev(dev);
  newdomain = dca_allocate_domain(rc);
  if (!newdomain)
   return -ENODEV;
  raw_spin_lock_irqsave(&dca_lock, flags);

  domain = dca_get_domain(dev);
  if (!domain) {
   domain = newdomain;
   newdomain = ((void*)0);
   list_add(&domain->node, &dca_domains);
  }
 }
 list_add(&dca->node, &domain->dca_providers);
 raw_spin_unlock_irqrestore(&dca_lock, flags);

 blocking_notifier_call_chain(&dca_provider_chain,
         DCA_PROVIDER_ADD, ((void*)0));
 kfree(newdomain);
 return 0;
}
