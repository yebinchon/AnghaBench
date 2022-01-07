
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgprot_t ;


 int PAGE_KERNEL ;
 int __ttm_kunmap_atomic (void*) ;
 int kunmap_atomic (void*) ;
 scalar_t__ pgprot_val (int ) ;

void ttm_kunmap_atomic_prot(void *addr, pgprot_t prot)
{
 if (pgprot_val(prot) == pgprot_val(PAGE_KERNEL))
  kunmap_atomic(addr);
 else
  __ttm_kunmap_atomic(addr);
}
