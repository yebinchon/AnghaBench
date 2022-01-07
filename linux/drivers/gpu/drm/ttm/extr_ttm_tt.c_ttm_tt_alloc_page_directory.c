
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_tt {int pages; int num_pages; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int __GFP_ZERO ;
 int kvmalloc_array (int ,int,int) ;

__attribute__((used)) static int ttm_tt_alloc_page_directory(struct ttm_tt *ttm)
{
 ttm->pages = kvmalloc_array(ttm->num_pages, sizeof(void*),
   GFP_KERNEL | __GFP_ZERO);
 if (!ttm->pages)
  return -ENOMEM;
 return 0;
}
