
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usnic_uiom_pd {int devs; int lock; void* domain; } ;


 int ENOMEM ;
 struct usnic_uiom_pd* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 void* iommu_domain_alloc (int *) ;
 int iommu_set_fault_handler (void*,int ,int *) ;
 int kfree (struct usnic_uiom_pd*) ;
 struct usnic_uiom_pd* kzalloc (int,int ) ;
 int pci_bus_type ;
 int spin_lock_init (int *) ;
 int usnic_err (char*) ;
 int usnic_uiom_dma_fault ;

struct usnic_uiom_pd *usnic_uiom_alloc_pd(void)
{
 struct usnic_uiom_pd *pd;
 void *domain;

 pd = kzalloc(sizeof(*pd), GFP_KERNEL);
 if (!pd)
  return ERR_PTR(-ENOMEM);

 pd->domain = domain = iommu_domain_alloc(&pci_bus_type);
 if (!domain) {
  usnic_err("Failed to allocate IOMMU domain");
  kfree(pd);
  return ERR_PTR(-ENOMEM);
 }

 iommu_set_fault_handler(pd->domain, usnic_uiom_dma_fault, ((void*)0));

 spin_lock_init(&pd->lock);
 INIT_LIST_HEAD(&pd->devs);

 return pd;
}
