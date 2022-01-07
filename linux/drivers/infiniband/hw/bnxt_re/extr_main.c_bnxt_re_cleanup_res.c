
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rcfw; } ;
struct bnxt_re_dev {int num_msix; TYPE_1__ qplib_res; int * nq; } ;


 int bnxt_qplib_cleanup_res (TYPE_1__*) ;
 int bnxt_qplib_disable_nq (int *) ;

__attribute__((used)) static void bnxt_re_cleanup_res(struct bnxt_re_dev *rdev)
{
 int i;

 for (i = 1; i < rdev->num_msix; i++)
  bnxt_qplib_disable_nq(&rdev->nq[i - 1]);

 if (rdev->qplib_res.rcfw)
  bnxt_qplib_cleanup_res(&rdev->qplib_res);
}
