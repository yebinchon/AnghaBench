
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnxt_qplib_res {TYPE_1__* pdev; } ;
struct bnxt_qplib_pkey_tbl {scalar_t__ active; scalar_t__ max; int * tbl; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*) ;
 int kfree (int *) ;

__attribute__((used)) static void bnxt_qplib_free_pkey_tbl(struct bnxt_qplib_res *res,
         struct bnxt_qplib_pkey_tbl *pkey_tbl)
{
 if (!pkey_tbl->tbl)
  dev_dbg(&res->pdev->dev, "PKEY tbl not present\n");
 else
  kfree(pkey_tbl->tbl);

 pkey_tbl->tbl = ((void*)0);
 pkey_tbl->max = 0;
 pkey_tbl->active = 0;
}
