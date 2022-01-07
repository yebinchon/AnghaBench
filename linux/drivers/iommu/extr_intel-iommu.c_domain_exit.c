
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct dmar_domain {int gaw; scalar_t__ pgd; int iovad; } ;


 int DOMAIN_MAX_PFN (int ) ;
 int dma_free_pagelist (struct page*) ;
 int domain_remove_dev_info (struct dmar_domain*) ;
 struct page* domain_unmap (struct dmar_domain*,int ,int ) ;
 int free_domain_mem (struct dmar_domain*) ;
 int put_iova_domain (int *) ;

__attribute__((used)) static void domain_exit(struct dmar_domain *domain)
{


 domain_remove_dev_info(domain);


 put_iova_domain(&domain->iovad);

 if (domain->pgd) {
  struct page *freelist;

  freelist = domain_unmap(domain, 0, DOMAIN_MAX_PFN(domain->gaw));
  dma_free_pagelist(freelist);
 }

 free_domain_mem(domain);
}
