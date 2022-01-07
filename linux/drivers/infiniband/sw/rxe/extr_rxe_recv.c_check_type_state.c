
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ state; } ;
struct TYPE_3__ {scalar_t__ state; } ;
struct rxe_qp {TYPE_2__ req; TYPE_1__ resp; int valid; } ;
struct rxe_pkt_info {int opcode; int mask; } ;
struct rxe_dev {int dummy; } ;


 int EINVAL ;
 int IB_OPCODE_RC ;
 int IB_OPCODE_UC ;
 int IB_OPCODE_UD ;





 scalar_t__ QP_STATE_DRAINED ;
 scalar_t__ QP_STATE_READY ;
 int RXE_REQ_MASK ;
 int pr_warn_ratelimited (char*) ;
 int qp_type (struct rxe_qp*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int check_type_state(struct rxe_dev *rxe, struct rxe_pkt_info *pkt,
       struct rxe_qp *qp)
{
 if (unlikely(!qp->valid))
  goto err1;

 switch (qp_type(qp)) {
 case 131:
  if (unlikely((pkt->opcode & IB_OPCODE_RC) != 0)) {
   pr_warn_ratelimited("bad qp type\n");
   goto err1;
  }
  break;
 case 129:
  if (unlikely(!(pkt->opcode & IB_OPCODE_UC))) {
   pr_warn_ratelimited("bad qp type\n");
   goto err1;
  }
  break;
 case 128:
 case 130:
 case 132:
  if (unlikely(!(pkt->opcode & IB_OPCODE_UD))) {
   pr_warn_ratelimited("bad qp type\n");
   goto err1;
  }
  break;
 default:
  pr_warn_ratelimited("unsupported qp type\n");
  goto err1;
 }

 if (pkt->mask & RXE_REQ_MASK) {
  if (unlikely(qp->resp.state != QP_STATE_READY))
   goto err1;
 } else if (unlikely(qp->req.state < QP_STATE_READY ||
    qp->req.state > QP_STATE_DRAINED)) {
  goto err1;
 }

 return 0;

err1:
 return -EINVAL;
}
