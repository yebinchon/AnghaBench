
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt_qplib_res {int sgid_tbl; int pkey_tbl; } ;


 int bnxt_qplib_cleanup_pkey_tbl (int *) ;
 int bnxt_qplib_cleanup_sgid_tbl (struct bnxt_qplib_res*,int *) ;

void bnxt_qplib_cleanup_res(struct bnxt_qplib_res *res)
{
 bnxt_qplib_cleanup_pkey_tbl(&res->pkey_tbl);
 bnxt_qplib_cleanup_sgid_tbl(res, &res->sgid_tbl);
}
