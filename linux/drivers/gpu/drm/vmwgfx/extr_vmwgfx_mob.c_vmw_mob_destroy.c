
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_mob {int * pt_bo; } ;


 int kfree (struct vmw_mob*) ;
 int ttm_bo_put (int *) ;

void vmw_mob_destroy(struct vmw_mob *mob)
{
 if (mob->pt_bo) {
  ttm_bo_put(mob->pt_bo);
  mob->pt_bo = ((void*)0);
 }
 kfree(mob);
}
