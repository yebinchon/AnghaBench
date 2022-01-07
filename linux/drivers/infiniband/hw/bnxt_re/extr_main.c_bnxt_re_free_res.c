
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ max; } ;
struct TYPE_4__ {int * rcfw; TYPE_3__ dpi_tbl; } ;
struct bnxt_re_dev {TYPE_1__ qplib_res; int dpi_privileged; } ;


 int bnxt_qplib_dealloc_dpi (TYPE_1__*,TYPE_3__*,int *) ;
 int bnxt_qplib_free_res (TYPE_1__*) ;
 int bnxt_re_free_nq_res (struct bnxt_re_dev*) ;

__attribute__((used)) static void bnxt_re_free_res(struct bnxt_re_dev *rdev)
{
 bnxt_re_free_nq_res(rdev);

 if (rdev->qplib_res.dpi_tbl.max) {
  bnxt_qplib_dealloc_dpi(&rdev->qplib_res,
           &rdev->qplib_res.dpi_tbl,
           &rdev->dpi_privileged);
 }
 if (rdev->qplib_res.rcfw) {
  bnxt_qplib_free_res(&rdev->qplib_res);
  rdev->qplib_res.rcfw = ((void*)0);
 }
}
