
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free_page (unsigned long) ;

void free_pgtable_page(void *vaddr)
{
 free_page((unsigned long)vaddr);
}
