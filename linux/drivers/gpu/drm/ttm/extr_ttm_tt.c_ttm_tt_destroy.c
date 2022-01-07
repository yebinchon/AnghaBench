
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttm_tt {scalar_t__ state; int page_flags; TYPE_1__* func; int * swap_storage; } ;
struct TYPE_2__ {int (* destroy ) (struct ttm_tt*) ;} ;


 int TTM_PAGE_FLAG_PERSISTENT_SWAP ;
 int fput (int *) ;
 int stub1 (struct ttm_tt*) ;
 scalar_t__ tt_unbound ;
 int ttm_tt_unbind (struct ttm_tt*) ;
 int ttm_tt_unpopulate (struct ttm_tt*) ;

void ttm_tt_destroy(struct ttm_tt *ttm)
{
 if (ttm == ((void*)0))
  return;

 ttm_tt_unbind(ttm);

 if (ttm->state == tt_unbound)
  ttm_tt_unpopulate(ttm);

 if (!(ttm->page_flags & TTM_PAGE_FLAG_PERSISTENT_SWAP) &&
     ttm->swap_storage)
  fput(ttm->swap_storage);

 ttm->swap_storage = ((void*)0);
 ttm->func->destroy(ttm);
}
