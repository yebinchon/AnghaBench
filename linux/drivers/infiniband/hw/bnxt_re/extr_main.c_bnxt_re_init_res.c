
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct bnxt_re_dev {int num_msix; int * nq; TYPE_2__* msix_entries; TYPE_1__* en_dev; int qplib_res; } ;
struct TYPE_4__ {int vector; } ;
struct TYPE_3__ {int pdev; } ;


 int bnxt_qplib_disable_nq (int *) ;
 int bnxt_qplib_enable_nq (int ,int *,int,int ,int ,int *,int *) ;
 int bnxt_qplib_init_res (int *) ;
 int bnxt_re_cqn_handler ;
 int bnxt_re_get_nqdb_offset (struct bnxt_re_dev*,int) ;
 int bnxt_re_srqn_handler ;
 int dev_err (int ,char*,int) ;
 int rdev_to_dev (struct bnxt_re_dev*) ;

__attribute__((used)) static int bnxt_re_init_res(struct bnxt_re_dev *rdev)
{
 int num_vec_enabled = 0;
 int rc = 0, i;
 u32 db_offt;

 bnxt_qplib_init_res(&rdev->qplib_res);

 for (i = 1; i < rdev->num_msix ; i++) {
  db_offt = bnxt_re_get_nqdb_offset(rdev, i);
  rc = bnxt_qplib_enable_nq(rdev->en_dev->pdev, &rdev->nq[i - 1],
       i - 1, rdev->msix_entries[i].vector,
       db_offt, &bnxt_re_cqn_handler,
       &bnxt_re_srqn_handler);
  if (rc) {
   dev_err(rdev_to_dev(rdev),
    "Failed to enable NQ with rc = 0x%x", rc);
   goto fail;
  }
  num_vec_enabled++;
 }
 return 0;
fail:
 for (i = num_vec_enabled; i >= 0; i--)
  bnxt_qplib_disable_nq(&rdev->nq[i]);
 return rc;
}
