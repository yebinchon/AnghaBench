
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct bnxt_re_dev {int num_msix; TYPE_1__* nq; int chip_ctx; } ;
struct TYPE_2__ {int * res; int ring_id; } ;


 int bnxt_qplib_free_nq (TYPE_1__*) ;
 int bnxt_qplib_get_ring_type (int *) ;
 int bnxt_re_net_ring_free (struct bnxt_re_dev*,int ,int ) ;

__attribute__((used)) static void bnxt_re_free_nq_res(struct bnxt_re_dev *rdev)
{
 u8 type;
 int i;

 for (i = 0; i < rdev->num_msix - 1; i++) {
  type = bnxt_qplib_get_ring_type(&rdev->chip_ctx);
  bnxt_re_net_ring_free(rdev, rdev->nq[i].ring_id, type);
  rdev->nq[i].res = ((void*)0);
  bnxt_qplib_free_nq(&rdev->nq[i]);
 }
}
