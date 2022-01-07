
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int GFP_ATOMIC ;
 int __GFP_ZERO ;
 struct page* alloc_pages_node (int,int,int ) ;
 void* page_address (struct page*) ;

void *alloc_pgtable_page(int node)
{
 struct page *page;
 void *vaddr = ((void*)0);

 page = alloc_pages_node(node, GFP_ATOMIC | __GFP_ZERO, 0);
 if (page)
  vaddr = page_address(page);
 return vaddr;
}
