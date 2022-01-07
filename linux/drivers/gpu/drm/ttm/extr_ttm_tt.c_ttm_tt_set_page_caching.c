
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef enum ttm_caching_state { ____Placeholder_ttm_caching_state } ttm_caching_state ;


 scalar_t__ PageHighMem (struct page*) ;
 int tt_cached ;
 int tt_uncached ;
 int tt_wc ;
 int ttm_set_pages_uc (struct page*,int) ;
 int ttm_set_pages_wb (struct page*,int) ;
 int ttm_set_pages_wc (struct page*,int) ;

__attribute__((used)) static int ttm_tt_set_page_caching(struct page *p,
       enum ttm_caching_state c_old,
       enum ttm_caching_state c_new)
{
 int ret = 0;

 if (PageHighMem(p))
  return 0;

 if (c_old != tt_cached) {



  ret = ttm_set_pages_wb(p, 1);
  if (ret)
   return ret;
 }

 if (c_new == tt_wc)
  ret = ttm_set_pages_wc(p, 1);
 else if (c_new == tt_uncached)
  ret = ttm_set_pages_uc(p, 1);

 return ret;
}
