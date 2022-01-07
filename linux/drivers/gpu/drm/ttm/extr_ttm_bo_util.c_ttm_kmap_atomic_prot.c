
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int pgprot_t ;


 int PAGE_KERNEL ;
 void* __ttm_kmap_atomic_prot (struct page*,int ) ;
 void* kmap_atomic (struct page*) ;
 scalar_t__ pgprot_val (int ) ;

void *ttm_kmap_atomic_prot(struct page *page, pgprot_t prot)
{
 if (pgprot_val(prot) == pgprot_val(PAGE_KERNEL))
  return kmap_atomic(page);
 else
  return __ttm_kmap_atomic_prot(page, prot);
}
