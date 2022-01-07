
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct bnxt_qplib_res {TYPE_1__* pdev; } ;
struct bnxt_qplib_pkey_tbl {int active; int max; int * tbl; } ;
struct TYPE_2__ {int dev; } ;


 int EALREADY ;
 int EINVAL ;
 int ENOMEM ;
 int dev_err (int *,char*) ;
 int memcmp (int *,int *,int) ;
 int memcpy (int *,int *,int) ;

int bnxt_qplib_add_pkey(struct bnxt_qplib_res *res,
   struct bnxt_qplib_pkey_tbl *pkey_tbl, u16 *pkey,
   bool update)
{
 int i, free_idx, rc = 0;

 if (!pkey_tbl) {
  dev_err(&res->pdev->dev, "PKEY table not allocated\n");
  return -EINVAL;
 }


 if (pkey_tbl->active == pkey_tbl->max) {
  dev_err(&res->pdev->dev, "PKEY table is full\n");
  return -ENOMEM;
 }
 free_idx = pkey_tbl->max;
 for (i = 0; i < pkey_tbl->max; i++) {
  if (!memcmp(&pkey_tbl->tbl[i], pkey, sizeof(*pkey)))
   return -EALREADY;
  else if (!pkey_tbl->tbl[i] && free_idx == pkey_tbl->max)
   free_idx = i;
 }
 if (free_idx == pkey_tbl->max) {
  dev_err(&res->pdev->dev,
   "PKEY table is FULL but count is not MAX??\n");
  return -ENOMEM;
 }

 memcpy(&pkey_tbl->tbl[free_idx], pkey, sizeof(*pkey));
 pkey_tbl->active++;


 return rc;
}
