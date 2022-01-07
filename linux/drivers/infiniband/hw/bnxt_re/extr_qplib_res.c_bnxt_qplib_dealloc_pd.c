
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnxt_qplib_res {TYPE_1__* pdev; } ;
struct bnxt_qplib_pd_tbl {int tbl; } ;
struct bnxt_qplib_pd {scalar_t__ id; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int dev_warn (int *,char*,scalar_t__) ;
 scalar_t__ test_and_set_bit (scalar_t__,int ) ;

int bnxt_qplib_dealloc_pd(struct bnxt_qplib_res *res,
     struct bnxt_qplib_pd_tbl *pdt,
     struct bnxt_qplib_pd *pd)
{
 if (test_and_set_bit(pd->id, pdt->tbl)) {
  dev_warn(&res->pdev->dev, "Freeing an unused PD? pdn = %d\n",
    pd->id);
  return -EINVAL;
 }
 pd->id = 0;
 return 0;
}
