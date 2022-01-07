
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int drop_msg; } ;
struct TYPE_4__ {int qp_access_flags; } ;
struct rxe_qp {TYPE_1__ resp; TYPE_2__ attr; } ;
struct rxe_pkt_info {int mask; } ;
typedef enum resp_states { ____Placeholder_resp_states } resp_states ;


 int IB_ACCESS_REMOTE_ATOMIC ;
 int IB_ACCESS_REMOTE_READ ;
 int IB_ACCESS_REMOTE_WRITE ;





 int RESPST_CHK_RESOURCE ;
 int RESPST_CLEANUP ;
 int RESPST_ERR_UNSUPPORTED_OPCODE ;
 int RXE_ATOMIC_MASK ;
 int RXE_READ_MASK ;
 int RXE_WRITE_MASK ;
 int WARN_ON_ONCE (int) ;
 int qp_type (struct rxe_qp*) ;

__attribute__((used)) static enum resp_states check_op_valid(struct rxe_qp *qp,
           struct rxe_pkt_info *pkt)
{
 switch (qp_type(qp)) {
 case 131:
  if (((pkt->mask & RXE_READ_MASK) &&
       !(qp->attr.qp_access_flags & IB_ACCESS_REMOTE_READ)) ||
      ((pkt->mask & RXE_WRITE_MASK) &&
       !(qp->attr.qp_access_flags & IB_ACCESS_REMOTE_WRITE)) ||
      ((pkt->mask & RXE_ATOMIC_MASK) &&
       !(qp->attr.qp_access_flags & IB_ACCESS_REMOTE_ATOMIC))) {
   return RESPST_ERR_UNSUPPORTED_OPCODE;
  }

  break;

 case 129:
  if ((pkt->mask & RXE_WRITE_MASK) &&
      !(qp->attr.qp_access_flags & IB_ACCESS_REMOTE_WRITE)) {
   qp->resp.drop_msg = 1;
   return RESPST_CLEANUP;
  }

  break;

 case 128:
 case 130:
 case 132:
  break;

 default:
  WARN_ON_ONCE(1);
  break;
 }

 return RESPST_CHK_RESOURCE;
}
