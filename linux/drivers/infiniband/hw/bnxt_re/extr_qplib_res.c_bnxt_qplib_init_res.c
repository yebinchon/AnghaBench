
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt_qplib_res {int pkey_tbl; int netdev; int sgid_tbl; } ;


 int bnxt_qplib_init_pkey_tbl (struct bnxt_qplib_res*,int *) ;
 int bnxt_qplib_init_sgid_tbl (int *,int ) ;

int bnxt_qplib_init_res(struct bnxt_qplib_res *res)
{
 bnxt_qplib_init_sgid_tbl(&res->sgid_tbl, res->netdev);
 bnxt_qplib_init_pkey_tbl(res, &res->pkey_tbl);

 return 0;
}
