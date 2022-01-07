
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_list {struct page_list* next; int * page; } ;


 int GFP_KERNEL ;
 int __GFP_ZERO ;
 int * alloc_page (int) ;
 int dm_integrity_free_page_list (struct page_list*) ;
 struct page_list* kvmalloc_array (unsigned int,int,int) ;

__attribute__((used)) static struct page_list *dm_integrity_alloc_page_list(unsigned n_pages)
{
 struct page_list *pl;
 unsigned i;

 pl = kvmalloc_array(n_pages + 1, sizeof(struct page_list), GFP_KERNEL | __GFP_ZERO);
 if (!pl)
  return ((void*)0);

 for (i = 0; i < n_pages; i++) {
  pl[i].page = alloc_page(GFP_KERNEL);
  if (!pl[i].page) {
   dm_integrity_free_page_list(pl);
   return ((void*)0);
  }
  if (i)
   pl[i - 1].next = &pl[i];
 }
 pl[i].page = ((void*)0);
 pl[i].next = ((void*)0);

 return pl;
}
