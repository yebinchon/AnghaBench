
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int sent_psn_nak; int drop_msg; int psn; } ;
struct TYPE_3__ {int device; } ;
struct rxe_qp {TYPE_2__ resp; TYPE_1__ ibqp; } ;
struct rxe_pkt_info {int mask; int psn; } ;
struct rxe_dev {int dummy; } ;
typedef enum resp_states { ____Placeholder_resp_states } resp_states ;




 int RESPST_CHK_OP_SEQ ;
 int RESPST_CLEANUP ;
 int RESPST_DUPLICATE_REQUEST ;
 int RESPST_ERR_PSN_OUT_OF_SEQ ;
 int RXE_CNT_DUP_REQ ;
 int RXE_CNT_OUT_OF_SEQ_REQ ;
 int RXE_START_MASK ;
 int psn_compare (int ,int ) ;
 int qp_type (struct rxe_qp*) ;
 int rxe_counter_inc (struct rxe_dev*,int ) ;
 struct rxe_dev* to_rdev (int ) ;

__attribute__((used)) static enum resp_states check_psn(struct rxe_qp *qp,
      struct rxe_pkt_info *pkt)
{
 int diff = psn_compare(pkt->psn, qp->resp.psn);
 struct rxe_dev *rxe = to_rdev(qp->ibqp.device);

 switch (qp_type(qp)) {
 case 129:
  if (diff > 0) {
   if (qp->resp.sent_psn_nak)
    return RESPST_CLEANUP;

   qp->resp.sent_psn_nak = 1;
   rxe_counter_inc(rxe, RXE_CNT_OUT_OF_SEQ_REQ);
   return RESPST_ERR_PSN_OUT_OF_SEQ;

  } else if (diff < 0) {
   rxe_counter_inc(rxe, RXE_CNT_DUP_REQ);
   return RESPST_DUPLICATE_REQUEST;
  }

  if (qp->resp.sent_psn_nak)
   qp->resp.sent_psn_nak = 0;

  break;

 case 128:
  if (qp->resp.drop_msg || diff != 0) {
   if (pkt->mask & RXE_START_MASK) {
    qp->resp.drop_msg = 0;
    return RESPST_CHK_OP_SEQ;
   }

   qp->resp.drop_msg = 1;
   return RESPST_CLEANUP;
  }
  break;
 default:
  break;
 }

 return RESPST_CHK_OP_SEQ;
}
