
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct bnxt_qplib_res {int dummy; } ;
struct bnxt_qplib_pkey_tbl {int max; int tbl; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kcalloc (int ,int,int ) ;

__attribute__((used)) static int bnxt_qplib_alloc_pkey_tbl(struct bnxt_qplib_res *res,
         struct bnxt_qplib_pkey_tbl *pkey_tbl,
         u16 max)
{
 pkey_tbl->tbl = kcalloc(max, sizeof(u16), GFP_KERNEL);
 if (!pkey_tbl->tbl)
  return -ENOMEM;

 pkey_tbl->max = max;
 return 0;
}
