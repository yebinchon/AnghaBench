
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvt_mr {int mr; } ;


 int kfree (struct rvt_mr*) ;
 int rvt_deinit_mregion (int *) ;
 int rvt_free_lkey (int *) ;

__attribute__((used)) static void __rvt_free_mr(struct rvt_mr *mr)
{
 rvt_free_lkey(&mr->mr);
 rvt_deinit_mregion(&mr->mr);
 kfree(mr);
}
