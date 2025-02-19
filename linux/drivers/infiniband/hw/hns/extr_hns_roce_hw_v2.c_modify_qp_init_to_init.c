
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ib_qp_attr {int qp_access_flags; } ;
struct ib_qp {scalar_t__ srq; int send_cq; int recv_cq; int pd; } ;
struct hns_roce_v2_qp_context {int byte_56_dqpn_err; int byte_4_sqpn_tst; int byte_76_srqn_op_en; int byte_252_err_txcqn; int byte_80_rnr_rx_cqn; int byte_16_buf_ba_pg_sz; } ;
struct TYPE_5__ {int qp_type; } ;
struct hns_roce_qp {int access_flags; int qpn; TYPE_1__ ibqp; } ;
struct TYPE_8__ {int cqn; } ;
struct TYPE_7__ {int pdn; } ;
struct TYPE_6__ {int srqn; } ;


 int IB_ACCESS_REMOTE_ATOMIC ;
 int IB_ACCESS_REMOTE_READ ;
 int IB_ACCESS_REMOTE_WRITE ;
 int IB_QP_ACCESS_FLAGS ;
 int IB_QP_DEST_QPN ;
 int V2_QPC_BYTE_16_PD_M ;
 int V2_QPC_BYTE_16_PD_S ;
 int V2_QPC_BYTE_252_TX_CQN_M ;
 int V2_QPC_BYTE_252_TX_CQN_S ;
 int V2_QPC_BYTE_4_SQPN_M ;
 int V2_QPC_BYTE_4_SQPN_S ;
 int V2_QPC_BYTE_4_TST_M ;
 int V2_QPC_BYTE_4_TST_S ;
 int V2_QPC_BYTE_56_DQPN_M ;
 int V2_QPC_BYTE_56_DQPN_S ;
 int V2_QPC_BYTE_76_ATE_S ;
 int V2_QPC_BYTE_76_RRE_S ;
 int V2_QPC_BYTE_76_RWE_S ;
 int V2_QPC_BYTE_76_SRQN_M ;
 int V2_QPC_BYTE_76_SRQN_S ;
 int V2_QPC_BYTE_76_SRQ_EN_S ;
 int V2_QPC_BYTE_80_RX_CQN_M ;
 int V2_QPC_BYTE_80_RX_CQN_S ;
 int roce_set_bit (int ,int ,int) ;
 int roce_set_field (int ,int ,int ,int ) ;
 TYPE_4__* to_hr_cq (int ) ;
 TYPE_3__* to_hr_pd (int ) ;
 struct hns_roce_qp* to_hr_qp (struct ib_qp*) ;
 int to_hr_qp_type (int ) ;
 TYPE_2__* to_hr_srq (scalar_t__) ;

__attribute__((used)) static void modify_qp_init_to_init(struct ib_qp *ibqp,
       const struct ib_qp_attr *attr, int attr_mask,
       struct hns_roce_v2_qp_context *context,
       struct hns_roce_v2_qp_context *qpc_mask)
{
 struct hns_roce_qp *hr_qp = to_hr_qp(ibqp);







 roce_set_field(context->byte_4_sqpn_tst, V2_QPC_BYTE_4_TST_M,
         V2_QPC_BYTE_4_TST_S, to_hr_qp_type(hr_qp->ibqp.qp_type));
 roce_set_field(qpc_mask->byte_4_sqpn_tst, V2_QPC_BYTE_4_TST_M,
         V2_QPC_BYTE_4_TST_S, 0);

 if (attr_mask & IB_QP_ACCESS_FLAGS) {
  roce_set_bit(context->byte_76_srqn_op_en, V2_QPC_BYTE_76_RRE_S,
        !!(attr->qp_access_flags & IB_ACCESS_REMOTE_READ));
  roce_set_bit(qpc_mask->byte_76_srqn_op_en, V2_QPC_BYTE_76_RRE_S,
        0);

  roce_set_bit(context->byte_76_srqn_op_en, V2_QPC_BYTE_76_RWE_S,
        !!(attr->qp_access_flags &
        IB_ACCESS_REMOTE_WRITE));
  roce_set_bit(qpc_mask->byte_76_srqn_op_en, V2_QPC_BYTE_76_RWE_S,
        0);

  roce_set_bit(context->byte_76_srqn_op_en, V2_QPC_BYTE_76_ATE_S,
        !!(attr->qp_access_flags &
        IB_ACCESS_REMOTE_ATOMIC));
  roce_set_bit(qpc_mask->byte_76_srqn_op_en, V2_QPC_BYTE_76_ATE_S,
        0);
 } else {
  roce_set_bit(context->byte_76_srqn_op_en, V2_QPC_BYTE_76_RRE_S,
        !!(hr_qp->access_flags & IB_ACCESS_REMOTE_READ));
  roce_set_bit(qpc_mask->byte_76_srqn_op_en, V2_QPC_BYTE_76_RRE_S,
        0);

  roce_set_bit(context->byte_76_srqn_op_en, V2_QPC_BYTE_76_RWE_S,
        !!(hr_qp->access_flags & IB_ACCESS_REMOTE_WRITE));
  roce_set_bit(qpc_mask->byte_76_srqn_op_en, V2_QPC_BYTE_76_RWE_S,
        0);

  roce_set_bit(context->byte_76_srqn_op_en, V2_QPC_BYTE_76_ATE_S,
        !!(hr_qp->access_flags & IB_ACCESS_REMOTE_ATOMIC));
  roce_set_bit(qpc_mask->byte_76_srqn_op_en, V2_QPC_BYTE_76_ATE_S,
        0);
 }

 roce_set_field(context->byte_16_buf_ba_pg_sz, V2_QPC_BYTE_16_PD_M,
         V2_QPC_BYTE_16_PD_S, to_hr_pd(ibqp->pd)->pdn);
 roce_set_field(qpc_mask->byte_16_buf_ba_pg_sz, V2_QPC_BYTE_16_PD_M,
         V2_QPC_BYTE_16_PD_S, 0);

 roce_set_field(context->byte_80_rnr_rx_cqn, V2_QPC_BYTE_80_RX_CQN_M,
         V2_QPC_BYTE_80_RX_CQN_S, to_hr_cq(ibqp->recv_cq)->cqn);
 roce_set_field(qpc_mask->byte_80_rnr_rx_cqn, V2_QPC_BYTE_80_RX_CQN_M,
         V2_QPC_BYTE_80_RX_CQN_S, 0);

 roce_set_field(context->byte_252_err_txcqn, V2_QPC_BYTE_252_TX_CQN_M,
         V2_QPC_BYTE_252_TX_CQN_S, to_hr_cq(ibqp->send_cq)->cqn);
 roce_set_field(qpc_mask->byte_252_err_txcqn, V2_QPC_BYTE_252_TX_CQN_M,
         V2_QPC_BYTE_252_TX_CQN_S, 0);

 if (ibqp->srq) {
  roce_set_bit(context->byte_76_srqn_op_en,
        V2_QPC_BYTE_76_SRQ_EN_S, 1);
  roce_set_bit(qpc_mask->byte_76_srqn_op_en,
        V2_QPC_BYTE_76_SRQ_EN_S, 0);
  roce_set_field(context->byte_76_srqn_op_en,
          V2_QPC_BYTE_76_SRQN_M, V2_QPC_BYTE_76_SRQN_S,
          to_hr_srq(ibqp->srq)->srqn);
  roce_set_field(qpc_mask->byte_76_srqn_op_en,
          V2_QPC_BYTE_76_SRQN_M, V2_QPC_BYTE_76_SRQN_S, 0);
 }

 roce_set_field(context->byte_4_sqpn_tst, V2_QPC_BYTE_4_SQPN_M,
         V2_QPC_BYTE_4_SQPN_S, hr_qp->qpn);
 roce_set_field(qpc_mask->byte_4_sqpn_tst, V2_QPC_BYTE_4_SQPN_M,
         V2_QPC_BYTE_4_SQPN_S, 0);

 if (attr_mask & IB_QP_DEST_QPN) {
  roce_set_field(context->byte_56_dqpn_err, V2_QPC_BYTE_56_DQPN_M,
          V2_QPC_BYTE_56_DQPN_S, hr_qp->qpn);
  roce_set_field(qpc_mask->byte_56_dqpn_err,
          V2_QPC_BYTE_56_DQPN_M, V2_QPC_BYTE_56_DQPN_S, 0);
 }
}
