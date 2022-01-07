
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_tt {int * pages; } ;


 int kvfree (int *) ;

void ttm_tt_fini(struct ttm_tt *ttm)
{
 kvfree(ttm->pages);
 ttm->pages = ((void*)0);
}
