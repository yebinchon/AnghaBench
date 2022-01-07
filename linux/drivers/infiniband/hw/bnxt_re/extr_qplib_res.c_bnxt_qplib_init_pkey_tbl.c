
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct bnxt_qplib_res {int dummy; } ;
struct bnxt_qplib_pkey_tbl {int max; int tbl; } ;


 int bnxt_qplib_add_pkey (struct bnxt_qplib_res*,struct bnxt_qplib_pkey_tbl*,int*,int) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void bnxt_qplib_init_pkey_tbl(struct bnxt_qplib_res *res,
         struct bnxt_qplib_pkey_tbl *pkey_tbl)
{
 u16 pkey = 0xFFFF;

 memset(pkey_tbl->tbl, 0, sizeof(u16) * pkey_tbl->max);


 bnxt_qplib_add_pkey(res, pkey_tbl, &pkey, 0);
}
