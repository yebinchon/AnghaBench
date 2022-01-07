
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt_qplib_sgid_tbl {scalar_t__ active; scalar_t__ max; int * vlan; int * ctx; int * hw_id; int * tbl; } ;
struct bnxt_qplib_res {int dummy; } ;


 int kfree (int *) ;

__attribute__((used)) static void bnxt_qplib_free_sgid_tbl(struct bnxt_qplib_res *res,
         struct bnxt_qplib_sgid_tbl *sgid_tbl)
{
 kfree(sgid_tbl->tbl);
 kfree(sgid_tbl->hw_id);
 kfree(sgid_tbl->ctx);
 kfree(sgid_tbl->vlan);
 sgid_tbl->tbl = ((void*)0);
 sgid_tbl->hw_id = ((void*)0);
 sgid_tbl->ctx = ((void*)0);
 sgid_tbl->vlan = ((void*)0);
 sgid_tbl->max = 0;
 sgid_tbl->active = 0;
}
