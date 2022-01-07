
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct dpages {unsigned int context_u; int context_ptr; } ;


 unsigned long PAGE_SIZE ;
 struct page* vmalloc_to_page (int ) ;

__attribute__((used)) static void vm_get_page(struct dpages *dp,
   struct page **p, unsigned long *len, unsigned *offset)
{
 *p = vmalloc_to_page(dp->context_ptr);
 *offset = dp->context_u;
 *len = PAGE_SIZE - dp->context_u;
}
