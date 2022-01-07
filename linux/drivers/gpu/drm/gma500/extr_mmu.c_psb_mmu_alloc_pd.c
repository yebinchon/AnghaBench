
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
struct psb_mmu_pt {int dummy; } ;
struct psb_mmu_pd {int hw_context; void* p; void* dummy_pt; void* dummy_page; struct psb_mmu_driver* driver; int pd_mask; int tables; void* invalid_pde; void* invalid_pte; } ;
struct psb_mmu_driver {int dummy; } ;


 int GFP_DMA32 ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int PSB_PTE_VALID ;
 int __free_page (void*) ;
 void* alloc_page (int ) ;
 int clear_page (void**) ;
 int kfree (struct psb_mmu_pd*) ;
 struct psb_mmu_pd* kmalloc (int,int ) ;
 void** kmap (void*) ;
 int kunmap (void*) ;
 int page_to_pfn (void*) ;
 void* psb_mmu_mask_pte (int ,int) ;
 int vmalloc_user (int) ;

struct psb_mmu_pd *psb_mmu_alloc_pd(struct psb_mmu_driver *driver,
        int trap_pagefaults, int invalid_type)
{
 struct psb_mmu_pd *pd = kmalloc(sizeof(*pd), GFP_KERNEL);
 uint32_t *v;
 int i;

 if (!pd)
  return ((void*)0);

 pd->p = alloc_page(GFP_DMA32);
 if (!pd->p)
  goto out_err1;
 pd->dummy_pt = alloc_page(GFP_DMA32);
 if (!pd->dummy_pt)
  goto out_err2;
 pd->dummy_page = alloc_page(GFP_DMA32);
 if (!pd->dummy_page)
  goto out_err3;

 if (!trap_pagefaults) {
  pd->invalid_pde = psb_mmu_mask_pte(page_to_pfn(pd->dummy_pt),
         invalid_type);
  pd->invalid_pte = psb_mmu_mask_pte(page_to_pfn(pd->dummy_page),
         invalid_type);
 } else {
  pd->invalid_pde = 0;
  pd->invalid_pte = 0;
 }

 v = kmap(pd->dummy_pt);
 for (i = 0; i < (PAGE_SIZE / sizeof(uint32_t)); ++i)
  v[i] = pd->invalid_pte;

 kunmap(pd->dummy_pt);

 v = kmap(pd->p);
 for (i = 0; i < (PAGE_SIZE / sizeof(uint32_t)); ++i)
  v[i] = pd->invalid_pde;

 kunmap(pd->p);

 clear_page(kmap(pd->dummy_page));
 kunmap(pd->dummy_page);

 pd->tables = vmalloc_user(sizeof(struct psb_mmu_pt *) * 1024);
 if (!pd->tables)
  goto out_err4;

 pd->hw_context = -1;
 pd->pd_mask = PSB_PTE_VALID;
 pd->driver = driver;

 return pd;

out_err4:
 __free_page(pd->dummy_page);
out_err3:
 __free_page(pd->dummy_pt);
out_err2:
 __free_page(pd->p);
out_err1:
 kfree(pd);
 return ((void*)0);
}
