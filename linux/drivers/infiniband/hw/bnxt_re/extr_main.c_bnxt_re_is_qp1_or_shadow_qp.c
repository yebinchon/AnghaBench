
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ qp_type; } ;
struct bnxt_re_qp {TYPE_1__ ib_qp; } ;
struct bnxt_re_dev {struct bnxt_re_qp* qp1_sqp; } ;


 scalar_t__ IB_QPT_GSI ;

__attribute__((used)) static bool bnxt_re_is_qp1_or_shadow_qp(struct bnxt_re_dev *rdev,
     struct bnxt_re_qp *qp)
{
 return (qp->ib_qp.qp_type == IB_QPT_GSI) || (qp == rdev->qp1_sqp);
}
