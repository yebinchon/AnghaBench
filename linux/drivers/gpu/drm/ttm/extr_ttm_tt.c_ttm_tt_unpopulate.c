
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ttm_tt {scalar_t__ state; TYPE_2__* bdev; } ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct TYPE_3__ {int (* ttm_tt_unpopulate ) (struct ttm_tt*) ;} ;


 int stub1 (struct ttm_tt*) ;
 scalar_t__ tt_unpopulated ;
 int ttm_pool_unpopulate (struct ttm_tt*) ;
 int ttm_tt_clear_mapping (struct ttm_tt*) ;

void ttm_tt_unpopulate(struct ttm_tt *ttm)
{
 if (ttm->state == tt_unpopulated)
  return;

 ttm_tt_clear_mapping(ttm);
 if (ttm->bdev->driver->ttm_tt_unpopulate)
  ttm->bdev->driver->ttm_tt_unpopulate(ttm);
 else
  ttm_pool_unpopulate(ttm);
}
