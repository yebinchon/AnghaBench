
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int state; int drop_msg; int goto_error; int * wqe; void* status; int psn; int aeth_syndrome; } ;
struct TYPE_5__ {int min_rnr_timer; } ;
struct TYPE_4__ {int device; } ;
struct rxe_qp {TYPE_3__ resp; int srq; TYPE_2__ attr; int valid; TYPE_1__ ibqp; } ;
struct rxe_pkt_info {int psn; } ;
struct rxe_dev {int dummy; } ;
typedef enum resp_states { ____Placeholder_resp_states } resp_states ;


 int AETH_ACK_UNLIMITED ;
 int AETH_NAK_INVALID_REQ ;
 int AETH_NAK_PSN_SEQ_ERROR ;
 int AETH_NAK_REM_ACC_ERR ;
 int AETH_NAK_REM_OP_ERR ;
 int AETH_RNR_NAK ;
 int AETH_TYPE_MASK ;
 int EAGAIN ;
 int EINVAL ;
 int IB_QPT_RC ;
 void* IB_WC_LOC_QP_OP_ERR ;
 void* IB_WC_REM_ACCESS_ERR ;
 void* IB_WC_REM_INV_REQ_ERR ;
 int RXE_CNT_SND_RNR ;
 int WARN_ON_ONCE (int) ;
 int acknowledge (struct rxe_qp*,struct rxe_pkt_info*) ;
 int check_length (struct rxe_qp*,struct rxe_pkt_info*) ;
 int check_op_seq (struct rxe_qp*,struct rxe_pkt_info*) ;
 int check_op_valid (struct rxe_qp*,struct rxe_pkt_info*) ;
 int check_psn (struct rxe_qp*,struct rxe_pkt_info*) ;
 int check_resource (struct rxe_qp*,struct rxe_pkt_info*) ;
 int check_rkey (struct rxe_qp*,struct rxe_pkt_info*) ;
 int cleanup (struct rxe_qp*,struct rxe_pkt_info*) ;
 int do_class_ac_error (struct rxe_qp*,int ,void*) ;
 int do_class_d1e_error (struct rxe_qp*) ;
 int do_complete (struct rxe_qp*,struct rxe_pkt_info*) ;
 int duplicate_request (struct rxe_qp*,struct rxe_pkt_info*) ;
 int execute (struct rxe_qp*,struct rxe_pkt_info*) ;
 int get_req (struct rxe_qp*,struct rxe_pkt_info**) ;
 int pr_debug (char*,int ,int ) ;
 int pr_warn (char*,int ) ;
 int qp_num (struct rxe_qp*) ;
 int qp_type (struct rxe_qp*) ;
 int read_reply (struct rxe_qp*,struct rxe_pkt_info*) ;
 int * resp_state_name ;
 int rxe_add_ref (struct rxe_qp*) ;
 int rxe_counter_inc (struct rxe_dev*,int ) ;
 int rxe_drain_req_pkts (struct rxe_qp*,int) ;
 int rxe_drop_ref (struct rxe_qp*) ;
 int rxe_qp_error (struct rxe_qp*) ;
 int send_ack (struct rxe_qp*,struct rxe_pkt_info*,int,int ) ;
 struct rxe_dev* to_rdev (int ) ;

int rxe_responder(void *arg)
{
 struct rxe_qp *qp = (struct rxe_qp *)arg;
 struct rxe_dev *rxe = to_rdev(qp->ibqp.device);
 enum resp_states state;
 struct rxe_pkt_info *pkt = ((void*)0);
 int ret = 0;

 rxe_add_ref(qp);

 qp->resp.aeth_syndrome = AETH_ACK_UNLIMITED;

 if (!qp->valid) {
  ret = -EINVAL;
  goto done;
 }

 switch (qp->resp.state) {
 case 157:
  state = 128;
  break;

 default:
  state = 130;
  break;
 }

 while (1) {
  pr_debug("qp#%d state = %s\n", qp_num(qp),
    resp_state_name[state]);
  switch (state) {
  case 130:
   state = get_req(qp, &pkt);
   break;
  case 152:
   state = check_psn(qp, pkt);
   break;
  case 154:
   state = check_op_seq(qp, pkt);
   break;
  case 153:
   state = check_op_valid(qp, pkt);
   break;
  case 151:
   state = check_resource(qp, pkt);
   break;
  case 155:
   state = check_length(qp, pkt);
   break;
  case 150:
   state = check_rkey(qp, pkt);
   break;
  case 132:
   state = execute(qp, pkt);
   break;
  case 148:
   state = do_complete(qp, pkt);
   break;
  case 129:
   state = read_reply(qp, pkt);
   break;
  case 156:
   state = acknowledge(qp, pkt);
   break;
  case 149:
   state = cleanup(qp, pkt);
   break;
  case 146:
   state = duplicate_request(qp, pkt);
   break;
  case 137:

   send_ack(qp, pkt, AETH_NAK_PSN_SEQ_ERROR, qp->resp.psn);
   state = 149;
   break;

  case 134:
  case 140:
  case 139:
  case 133:
  case 141:

   do_class_ac_error(qp, AETH_NAK_INVALID_REQ,
       IB_WC_REM_INV_REQ_ERR);
   state = 148;
   break;

  case 138:
   state = do_class_d1e_error(qp);
   break;
  case 135:
   if (qp_type(qp) == IB_QPT_RC) {
    rxe_counter_inc(rxe, RXE_CNT_SND_RNR);

    send_ack(qp, pkt, AETH_RNR_NAK |
      (~AETH_TYPE_MASK &
      qp->attr.min_rnr_timer),
      pkt->psn);
   } else {

    qp->resp.drop_msg = 1;
   }
   state = 149;
   break;

  case 136:
   if (qp_type(qp) == IB_QPT_RC) {

    do_class_ac_error(qp, AETH_NAK_REM_ACC_ERR,
        IB_WC_REM_ACCESS_ERR);
    state = 148;
   } else {
    qp->resp.drop_msg = 1;
    if (qp->srq) {

     qp->resp.status = IB_WC_REM_ACCESS_ERR;
     state = 148;
    } else {

     state = 149;
    }
   }
   break;

  case 143:
   if (qp_type(qp) == IB_QPT_RC) {

    do_class_ac_error(qp, AETH_NAK_INVALID_REQ,
        IB_WC_REM_INV_REQ_ERR);
    state = 148;
   } else if (qp->srq) {

    qp->resp.status = IB_WC_REM_INV_REQ_ERR;
    state = 148;
   } else {

    qp->resp.drop_msg = 1;
    state = 149;
   }
   break;

  case 142:

   do_class_ac_error(qp, AETH_NAK_REM_OP_ERR,
       IB_WC_LOC_QP_OP_ERR);
   state = 148;
   break;

  case 144:

   state = 145;
   break;

  case 147:
   if (qp->resp.goto_error) {
    state = 145;
    break;
   }

   goto done;

  case 131:
   if (qp->resp.goto_error) {
    state = 145;
    break;
   }

   goto exit;

  case 128:
   rxe_drain_req_pkts(qp, 0);
   qp->resp.wqe = ((void*)0);
   goto exit;

  case 145:
   qp->resp.goto_error = 0;
   pr_warn("qp#%d moved to error state\n", qp_num(qp));
   rxe_qp_error(qp);
   goto exit;

  default:
   WARN_ON_ONCE(1);
  }
 }

exit:
 ret = -EAGAIN;
done:
 rxe_drop_ref(qp);
 return ret;
}
