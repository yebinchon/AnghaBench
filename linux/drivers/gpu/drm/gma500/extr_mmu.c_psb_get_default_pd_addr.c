
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct psb_mmu_pd {int p; } ;
struct psb_mmu_driver {int dummy; } ;


 int PAGE_SHIFT ;
 int page_to_pfn (int ) ;
 struct psb_mmu_pd* psb_mmu_get_default_pd (struct psb_mmu_driver*) ;

uint32_t psb_get_default_pd_addr(struct psb_mmu_driver *driver)
{
 struct psb_mmu_pd *pd;

 pd = psb_mmu_get_default_pd(driver);
 return page_to_pfn(pd->p) << PAGE_SHIFT;
}
