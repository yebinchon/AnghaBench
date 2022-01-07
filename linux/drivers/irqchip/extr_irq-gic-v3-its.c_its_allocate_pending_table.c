
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int gfp_t ;


 int LPI_PENDBASE_SZ ;
 int __GFP_ZERO ;
 struct page* alloc_pages (int,int ) ;
 int get_order (int ) ;
 int gic_flush_dcache_to_poc (int ,int ) ;
 int page_address (struct page*) ;

__attribute__((used)) static struct page *its_allocate_pending_table(gfp_t gfp_flags)
{
 struct page *pend_page;

 pend_page = alloc_pages(gfp_flags | __GFP_ZERO,
    get_order(LPI_PENDBASE_SZ));
 if (!pend_page)
  return ((void*)0);


 gic_flush_dcache_to_poc(page_address(pend_page), LPI_PENDBASE_SZ);

 return pend_page;
}
