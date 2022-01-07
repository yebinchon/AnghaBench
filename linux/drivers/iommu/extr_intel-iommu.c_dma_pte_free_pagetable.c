
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_domain {int * pgd; int gaw; int agaw; } ;


 int BUG_ON (int) ;
 unsigned long DOMAIN_MAX_PFN (int ) ;
 int agaw_to_level (int ) ;
 int dma_pte_clear_range (struct dmar_domain*,unsigned long,unsigned long) ;
 int dma_pte_free_level (struct dmar_domain*,int ,int,int *,int ,unsigned long,unsigned long) ;
 int domain_pfn_supported (struct dmar_domain*,unsigned long) ;
 int free_pgtable_page (int *) ;

__attribute__((used)) static void dma_pte_free_pagetable(struct dmar_domain *domain,
       unsigned long start_pfn,
       unsigned long last_pfn,
       int retain_level)
{
 BUG_ON(!domain_pfn_supported(domain, start_pfn));
 BUG_ON(!domain_pfn_supported(domain, last_pfn));
 BUG_ON(start_pfn > last_pfn);

 dma_pte_clear_range(domain, start_pfn, last_pfn);


 dma_pte_free_level(domain, agaw_to_level(domain->agaw), retain_level,
      domain->pgd, 0, start_pfn, last_pfn);


 if (start_pfn == 0 && last_pfn == DOMAIN_MAX_PFN(domain->gaw)) {
  free_pgtable_page(domain->pgd);
  domain->pgd = ((void*)0);
 }
}
