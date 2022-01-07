
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_tt {scalar_t__ state; } ;
struct ttm_operation_ctx {int dummy; } ;


 scalar_t__ tt_unpopulated ;
 int ttm_pool_populate (struct ttm_tt*,struct ttm_operation_ctx*) ;

int ttm_agp_tt_populate(struct ttm_tt *ttm, struct ttm_operation_ctx *ctx)
{
 if (ttm->state != tt_unpopulated)
  return 0;

 return ttm_pool_populate(ttm, ctx);
}
