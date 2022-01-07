
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct bnxt_qplib_res {TYPE_1__* pdev; } ;
struct bnxt_qplib_pkey_tbl {int max; int * tbl; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int dev_err (int *,char*,int,int) ;
 int memcpy (int*,int *,int) ;

int bnxt_qplib_get_pkey(struct bnxt_qplib_res *res,
   struct bnxt_qplib_pkey_tbl *pkey_tbl, u16 index,
   u16 *pkey)
{
 if (index == 0xFFFF) {
  *pkey = 0xFFFF;
  return 0;
 }
 if (index >= pkey_tbl->max) {
  dev_err(&res->pdev->dev,
   "Index %d exceeded PKEY table max (%d)\n",
   index, pkey_tbl->max);
  return -EINVAL;
 }
 memcpy(pkey, &pkey_tbl->tbl[index], sizeof(*pkey));
 return 0;
}
