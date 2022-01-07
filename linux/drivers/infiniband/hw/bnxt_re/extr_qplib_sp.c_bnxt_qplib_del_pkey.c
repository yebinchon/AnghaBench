
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct bnxt_qplib_res {TYPE_1__* pdev; } ;
struct bnxt_qplib_pkey_tbl {int max; int active; int * tbl; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int dev_err (int *,char*,...) ;
 int memcmp (int *,int *,int) ;
 int memset (int *,int ,int) ;

int bnxt_qplib_del_pkey(struct bnxt_qplib_res *res,
   struct bnxt_qplib_pkey_tbl *pkey_tbl, u16 *pkey,
   bool update)
{
 int i, rc = 0;

 if (!pkey_tbl) {
  dev_err(&res->pdev->dev, "PKEY table not allocated\n");
  return -EINVAL;
 }


 if (!pkey_tbl->active) {
  dev_err(&res->pdev->dev, "PKEY table has no active entries\n");
  return -ENOMEM;
 }
 for (i = 0; i < pkey_tbl->max; i++) {
  if (!memcmp(&pkey_tbl->tbl[i], pkey, sizeof(*pkey)))
   break;
 }
 if (i == pkey_tbl->max) {
  dev_err(&res->pdev->dev,
   "PKEY 0x%04x not found in the pkey table\n", *pkey);
  return -ENOMEM;
 }
 memset(&pkey_tbl->tbl[i], 0, sizeof(*pkey));
 pkey_tbl->active--;


 return rc;
}
