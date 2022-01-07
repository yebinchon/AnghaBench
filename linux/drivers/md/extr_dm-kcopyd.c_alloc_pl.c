
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_list {int page; } ;
typedef int gfp_t ;


 int alloc_page (int ) ;
 int kfree (struct page_list*) ;
 struct page_list* kmalloc (int,int ) ;

__attribute__((used)) static struct page_list *alloc_pl(gfp_t gfp)
{
 struct page_list *pl;

 pl = kmalloc(sizeof(*pl), gfp);
 if (!pl)
  return ((void*)0);

 pl->page = alloc_page(gfp);
 if (!pl->page) {
  kfree(pl);
  return ((void*)0);
 }

 return pl;
}
