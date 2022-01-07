
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {struct page* freelist; } ;
struct dmar_domain {int * pgd; int gaw; int agaw; } ;


 int BUG_ON (int) ;
 unsigned long DOMAIN_MAX_PFN (int ) ;
 int agaw_to_level (int ) ;
 struct page* dma_pte_clear_level (struct dmar_domain*,int ,int *,int ,unsigned long,unsigned long,int *) ;
 int domain_pfn_supported (struct dmar_domain*,unsigned long) ;
 struct page* virt_to_page (int *) ;

__attribute__((used)) static struct page *domain_unmap(struct dmar_domain *domain,
     unsigned long start_pfn,
     unsigned long last_pfn)
{
 struct page *freelist;

 BUG_ON(!domain_pfn_supported(domain, start_pfn));
 BUG_ON(!domain_pfn_supported(domain, last_pfn));
 BUG_ON(start_pfn > last_pfn);


 freelist = dma_pte_clear_level(domain, agaw_to_level(domain->agaw),
           domain->pgd, 0, start_pfn, last_pfn, ((void*)0));


 if (start_pfn == 0 && last_pfn == DOMAIN_MAX_PFN(domain->gaw)) {
  struct page *pgd_page = virt_to_page(domain->pgd);
  pgd_page->freelist = freelist;
  freelist = pgd_page;

  domain->pgd = ((void*)0);
 }

 return freelist;
}
