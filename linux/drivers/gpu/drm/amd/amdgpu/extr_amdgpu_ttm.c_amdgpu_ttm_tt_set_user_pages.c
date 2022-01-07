
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_tt {unsigned long num_pages; struct page** pages; } ;
struct page {int dummy; } ;



void amdgpu_ttm_tt_set_user_pages(struct ttm_tt *ttm, struct page **pages)
{
 unsigned long i;

 for (i = 0; i < ttm->num_pages; ++i)
  ttm->pages[i] = pages ? pages[i] : ((void*)0);
}
