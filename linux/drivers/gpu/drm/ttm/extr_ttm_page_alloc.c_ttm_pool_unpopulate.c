
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_tt {int num_pages; } ;


 int ttm_pool_unpopulate_helper (struct ttm_tt*,int ) ;

void ttm_pool_unpopulate(struct ttm_tt *ttm)
{
 ttm_pool_unpopulate_helper(ttm, ttm->num_pages);
}
