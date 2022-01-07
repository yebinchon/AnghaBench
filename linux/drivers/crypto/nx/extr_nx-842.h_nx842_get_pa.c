
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long __pa (void*) ;
 int is_vmalloc_addr (void*) ;
 unsigned long offset_in_page (void*) ;
 unsigned long page_to_phys (int ) ;
 int vmalloc_to_page (void*) ;

__attribute__((used)) static inline unsigned long nx842_get_pa(void *addr)
{
 if (!is_vmalloc_addr(addr))
  return __pa(addr);

 return page_to_phys(vmalloc_to_page(addr)) + offset_in_page(addr);
}
