
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_list {scalar_t__ next; } ;
struct dpages {scalar_t__ context_u; scalar_t__ context_ptr; } ;



__attribute__((used)) static void list_next_page(struct dpages *dp)
{
 struct page_list *pl = (struct page_list *) dp->context_ptr;
 dp->context_ptr = pl->next;
 dp->context_u = 0;
}
