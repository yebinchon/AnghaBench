
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usnic_uiom_pd {int domain; } ;


 int iommu_domain_free (int ) ;
 int kfree (struct usnic_uiom_pd*) ;

void usnic_uiom_dealloc_pd(struct usnic_uiom_pd *pd)
{
 iommu_domain_free(pd->domain);
 kfree(pd);
}
