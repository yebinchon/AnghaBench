
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bnxt_qplib_sgid_tbl {int max; TYPE_2__* tbl; } ;
struct bnxt_qplib_res {TYPE_1__* pdev; } ;
struct bnxt_qplib_gid {int dummy; } ;
struct TYPE_4__ {int gid; } ;
struct TYPE_3__ {int dev; } ;


 int EINVAL ;
 int dev_err (int *,char*,int,int) ;
 int memcpy (struct bnxt_qplib_gid*,int *,int) ;

int bnxt_qplib_get_sgid(struct bnxt_qplib_res *res,
   struct bnxt_qplib_sgid_tbl *sgid_tbl, int index,
   struct bnxt_qplib_gid *gid)
{
 if (index >= sgid_tbl->max) {
  dev_err(&res->pdev->dev,
   "Index %d exceeded SGID table max (%d)\n",
   index, sgid_tbl->max);
  return -EINVAL;
 }
 memcpy(gid, &sgid_tbl->tbl[index].gid, sizeof(*gid));
 return 0;
}
