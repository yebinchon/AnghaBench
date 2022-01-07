
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sysmmu_pte_t ;
struct iommu_domain {int dummy; } ;
struct exynos_iommu_domain {int pgtablelock; int pgtable; } ;
typedef scalar_t__ phys_addr_t ;
typedef int dma_addr_t ;


 scalar_t__ lpage_offs (int ) ;
 scalar_t__ lpage_phys (int *) ;
 scalar_t__ lv1ent_page (int *) ;
 scalar_t__ lv1ent_section (int *) ;
 scalar_t__ lv2ent_large (int *) ;
 scalar_t__ lv2ent_small (int *) ;
 int * page_entry (int *,int ) ;
 int * section_entry (int ,int ) ;
 scalar_t__ section_offs (int ) ;
 scalar_t__ section_phys (int *) ;
 scalar_t__ spage_offs (int ) ;
 scalar_t__ spage_phys (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct exynos_iommu_domain* to_exynos_domain (struct iommu_domain*) ;

__attribute__((used)) static phys_addr_t exynos_iommu_iova_to_phys(struct iommu_domain *iommu_domain,
       dma_addr_t iova)
{
 struct exynos_iommu_domain *domain = to_exynos_domain(iommu_domain);
 sysmmu_pte_t *entry;
 unsigned long flags;
 phys_addr_t phys = 0;

 spin_lock_irqsave(&domain->pgtablelock, flags);

 entry = section_entry(domain->pgtable, iova);

 if (lv1ent_section(entry)) {
  phys = section_phys(entry) + section_offs(iova);
 } else if (lv1ent_page(entry)) {
  entry = page_entry(entry, iova);

  if (lv2ent_large(entry))
   phys = lpage_phys(entry) + lpage_offs(iova);
  else if (lv2ent_small(entry))
   phys = spage_phys(entry) + spage_offs(iova);
 }

 spin_unlock_irqrestore(&domain->pgtablelock, flags);

 return phys;
}
