
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt_qplib_res {int * pdev; int * netdev; int dpi_tbl; int pd_tbl; int sgid_tbl; int pkey_tbl; } ;


 int bnxt_qplib_free_dpi_tbl (struct bnxt_qplib_res*,int *) ;
 int bnxt_qplib_free_pd_tbl (int *) ;
 int bnxt_qplib_free_pkey_tbl (struct bnxt_qplib_res*,int *) ;
 int bnxt_qplib_free_sgid_tbl (struct bnxt_qplib_res*,int *) ;

void bnxt_qplib_free_res(struct bnxt_qplib_res *res)
{
 bnxt_qplib_free_pkey_tbl(res, &res->pkey_tbl);
 bnxt_qplib_free_sgid_tbl(res, &res->sgid_tbl);
 bnxt_qplib_free_pd_tbl(&res->pd_tbl);
 bnxt_qplib_free_dpi_tbl(res, &res->dpi_tbl);

 res->netdev = ((void*)0);
 res->pdev = ((void*)0);
}
