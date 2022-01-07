
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_tt {int dummy; } ;


 int kfree (struct ttm_tt*) ;
 int ttm_tt_fini (struct ttm_tt*) ;

__attribute__((used)) static void backend_func_destroy(struct ttm_tt *tt)
{
 ttm_tt_fini(tt);
 kfree(tt);
}
