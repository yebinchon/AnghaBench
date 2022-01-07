
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_7__ {scalar_t__ qp_type; scalar_t__ pd; } ;
struct rvt_qp {TYPE_2__ ibqp; int s_max_rd_atomic; } ;
struct rvt_operation_params {int length; int qpt_support; int flags; } ;
struct ib_ud_wr {int dummy; } ;
struct ib_send_wr {size_t opcode; scalar_t__ num_sge; TYPE_1__* sg_list; } ;
struct TYPE_10__ {scalar_t__ user; } ;
struct TYPE_9__ {TYPE_3__* ah; } ;
struct TYPE_8__ {scalar_t__ pd; } ;
struct TYPE_6__ {int length; int addr; } ;


 int BIT (scalar_t__) ;
 int EINVAL ;
 scalar_t__ IB_QPT_RC ;
 scalar_t__ IB_QPT_UC ;
 int RVT_OPERATION_ATOMIC ;
 int RVT_OPERATION_ATOMIC_SGE ;
 size_t RVT_OPERATION_MAX ;
 int RVT_OPERATION_PRIV ;
 TYPE_5__* ibpd_to_rvtpd (scalar_t__) ;
 TYPE_4__* ud_wr (struct ib_send_wr const*) ;

__attribute__((used)) static inline int rvt_qp_valid_operation(
 struct rvt_qp *qp,
 const struct rvt_operation_params *post_parms,
 const struct ib_send_wr *wr)
{
 int len;

 if (wr->opcode >= RVT_OPERATION_MAX || !post_parms[wr->opcode].length)
  return -EINVAL;
 if (!(post_parms[wr->opcode].qpt_support & BIT(qp->ibqp.qp_type)))
  return -EINVAL;
 if ((post_parms[wr->opcode].flags & RVT_OPERATION_PRIV) &&
     ibpd_to_rvtpd(qp->ibqp.pd)->user)
  return -EINVAL;
 if (post_parms[wr->opcode].flags & RVT_OPERATION_ATOMIC_SGE &&
     (wr->num_sge == 0 ||
      wr->sg_list[0].length < sizeof(u64) ||
      wr->sg_list[0].addr & (sizeof(u64) - 1)))
  return -EINVAL;
 if (post_parms[wr->opcode].flags & RVT_OPERATION_ATOMIC &&
     !qp->s_max_rd_atomic)
  return -EINVAL;
 len = post_parms[wr->opcode].length;

 if (qp->ibqp.qp_type != IB_QPT_UC &&
     qp->ibqp.qp_type != IB_QPT_RC) {
  if (qp->ibqp.pd != ud_wr(wr)->ah->pd)
   return -EINVAL;
  len = sizeof(struct ib_ud_wr);
 }
 return len;
}
