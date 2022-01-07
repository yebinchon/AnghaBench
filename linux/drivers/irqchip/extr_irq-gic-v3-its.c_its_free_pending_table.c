
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int LPI_PENDBASE_SZ ;
 int free_pages (unsigned long,int ) ;
 int get_order (int ) ;
 scalar_t__ page_address (struct page*) ;

__attribute__((used)) static void its_free_pending_table(struct page *pt)
{
 free_pages((unsigned long)page_address(pt), get_order(LPI_PENDBASE_SZ));
}
