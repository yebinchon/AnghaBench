
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {struct page* freelist; } ;


 int free_page (unsigned long) ;
 scalar_t__ page_address (struct page*) ;

__attribute__((used)) static void free_page_list(struct page *freelist)
{
 while (freelist != ((void*)0)) {
  unsigned long p = (unsigned long)page_address(freelist);
  freelist = freelist->freelist;
  free_page(p);
 }
}
