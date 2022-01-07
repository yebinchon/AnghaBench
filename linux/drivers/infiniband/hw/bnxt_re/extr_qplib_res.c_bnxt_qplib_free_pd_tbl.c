
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt_qplib_pd_tbl {scalar_t__ max; int * tbl; } ;


 int kfree (int *) ;

__attribute__((used)) static void bnxt_qplib_free_pd_tbl(struct bnxt_qplib_pd_tbl *pdt)
{
 kfree(pdt->tbl);
 pdt->tbl = ((void*)0);
 pdt->max = 0;
}
