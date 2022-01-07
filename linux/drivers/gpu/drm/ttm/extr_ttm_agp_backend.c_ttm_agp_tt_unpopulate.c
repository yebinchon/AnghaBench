
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_tt {int dummy; } ;


 int ttm_pool_unpopulate (struct ttm_tt*) ;

void ttm_agp_tt_unpopulate(struct ttm_tt *ttm)
{
 ttm_pool_unpopulate(ttm);
}
