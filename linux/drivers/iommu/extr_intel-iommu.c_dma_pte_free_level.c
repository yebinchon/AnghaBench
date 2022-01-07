
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_domain {int dummy; } ;
struct dma_pte {int dummy; } ;


 int dma_clear_pte (struct dma_pte*) ;
 int dma_pte_addr (struct dma_pte*) ;
 int dma_pte_present (struct dma_pte*) ;
 scalar_t__ dma_pte_superpage (struct dma_pte*) ;
 int domain_flush_cache (struct dmar_domain*,struct dma_pte*,int) ;
 int first_pte_in_page (struct dma_pte*) ;
 int free_pgtable_page (struct dma_pte*) ;
 unsigned long level_mask (int) ;
 unsigned long level_size (int) ;
 unsigned long max (unsigned long,unsigned long) ;
 size_t pfn_level_offset (unsigned long,int) ;
 struct dma_pte* phys_to_virt (int ) ;

__attribute__((used)) static void dma_pte_free_level(struct dmar_domain *domain, int level,
          int retain_level, struct dma_pte *pte,
          unsigned long pfn, unsigned long start_pfn,
          unsigned long last_pfn)
{
 pfn = max(start_pfn, pfn);
 pte = &pte[pfn_level_offset(pfn, level)];

 do {
  unsigned long level_pfn;
  struct dma_pte *level_pte;

  if (!dma_pte_present(pte) || dma_pte_superpage(pte))
   goto next;

  level_pfn = pfn & level_mask(level);
  level_pte = phys_to_virt(dma_pte_addr(pte));

  if (level > 2) {
   dma_pte_free_level(domain, level - 1, retain_level,
        level_pte, level_pfn, start_pfn,
        last_pfn);
  }





  if (level < retain_level && !(start_pfn > level_pfn ||
        last_pfn < level_pfn + level_size(level) - 1)) {
   dma_clear_pte(pte);
   domain_flush_cache(domain, pte, sizeof(*pte));
   free_pgtable_page(level_pte);
  }
next:
  pfn += level_size(level);
 } while (!first_pte_in_page(++pte) && pfn <= last_pfn);
}
