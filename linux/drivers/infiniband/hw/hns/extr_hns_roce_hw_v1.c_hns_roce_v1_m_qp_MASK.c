#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_36__   TYPE_9__ ;
typedef  struct TYPE_35__   TYPE_8__ ;
typedef  struct TYPE_34__   TYPE_7__ ;
typedef  struct TYPE_33__   TYPE_6__ ;
typedef  struct TYPE_32__   TYPE_5__ ;
typedef  struct TYPE_31__   TYPE_4__ ;
typedef  struct TYPE_30__   TYPE_3__ ;
typedef  struct TYPE_29__   TYPE_2__ ;
typedef  struct TYPE_28__   TYPE_1__ ;
typedef  struct TYPE_27__   TYPE_19__ ;
typedef  struct TYPE_26__   TYPE_14__ ;
typedef  struct TYPE_25__   TYPE_13__ ;
typedef  struct TYPE_24__   TYPE_12__ ;
typedef  struct TYPE_23__   TYPE_11__ ;
typedef  struct TYPE_22__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int u64 ;
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_32__ {scalar_t__ dmac; } ;
struct TYPE_26__ {TYPE_5__ roce; } ;
struct ib_qp_attr {int qp_access_flags; int pkey_index; int min_rnr_timer; int port_num; int dest_qp_num; int path_mtu; int rq_psn; int sq_psn; int retry_cnt; int rnr_retry; int timeout; scalar_t__ max_dest_rd_atomic; scalar_t__ max_rd_atomic; TYPE_14__ ah_attr; } ;
struct ib_qp {scalar_t__ send_cq; scalar_t__ recv_cq; scalar_t__ srq; scalar_t__ uobject; int /*<<< orphan*/  pd; int /*<<< orphan*/  device; } ;
struct TYPE_33__ {scalar_t__* raw; } ;
struct ib_global_route {int hop_limit; int flow_label; int traffic_class; TYPE_6__ dgid; int /*<<< orphan*/  sgid_index; } ;
struct hns_roce_qp_context {int /*<<< orphan*/  qpc_bytes_144; int /*<<< orphan*/  qpc_bytes_188; void* tx_cur_sq_wqe_ba_l; int /*<<< orphan*/  qpc_bytes_180; int /*<<< orphan*/  qpc_bytes_176; scalar_t__ sge_use_len; int /*<<< orphan*/  qpc_bytes_168; int /*<<< orphan*/  qpc_bytes_164; scalar_t__ pkt_use_len; int /*<<< orphan*/  qpc_bytes_156; scalar_t__ rnr_retry; int /*<<< orphan*/  qpc_bytes_148; int /*<<< orphan*/  qpc_bytes_140; int /*<<< orphan*/  qpc_bytes_136; int /*<<< orphan*/  qpc_bytes_132; int /*<<< orphan*/  qpc_bytes_128; int /*<<< orphan*/  qpc_bytes_124; int /*<<< orphan*/  qpc_bytes_120; void* rx_cur_sq_wqe_ba_l; int /*<<< orphan*/  qpc_bytes_112; int /*<<< orphan*/  qpc_bytes_108; scalar_t__ va_h; scalar_t__ va_l; scalar_t__ r_key; scalar_t__ dma_length; int /*<<< orphan*/  qpc_bytes_88; int /*<<< orphan*/  qpc_bytes_84; scalar_t__ rx_rnr_time; int /*<<< orphan*/  qpc_bytes_76; void* cur_rq_wqe_ba_l; int /*<<< orphan*/  qpc_bytes_68; int /*<<< orphan*/  qpc_bytes_44; int /*<<< orphan*/  dmac_l; int /*<<< orphan*/ * dgid; int /*<<< orphan*/  qpc_bytes_48; int /*<<< orphan*/  qpc_bytes_36; int /*<<< orphan*/  qpc_bytes_32; void* irrl_ba_l; int /*<<< orphan*/  qpc_bytes_24; void* sq_rq_bt_l; int /*<<< orphan*/  qpc_bytes_16; int /*<<< orphan*/  qpc_bytes_12; int /*<<< orphan*/  qpc_bytes_8; int /*<<< orphan*/  qpc_bytes_4; } ;
struct TYPE_22__ {scalar_t__ tail; scalar_t__ head; scalar_t__ wqe_cnt; } ;
struct TYPE_36__ {int head; scalar_t__ tail; scalar_t__ db_reg_l; scalar_t__ offset; scalar_t__ wqe_cnt; } ;
struct TYPE_27__ {int first_seg; } ;
struct TYPE_31__ {int /*<<< orphan*/  qp_type; } ;
struct hns_roce_qp {int qpn; int access_flags; int pkey_index; int sq_signal_bits; int port; int phy_port; int sl; int state; scalar_t__ sq_next_wqe; TYPE_10__ sq; TYPE_9__ rq; scalar_t__ resp_depth; TYPE_19__ mtt; TYPE_4__ ibqp; } ;
struct TYPE_35__ {int* phy_port; } ;
struct TYPE_34__ {int index; } ;
struct TYPE_30__ {int /*<<< orphan*/  irrl_table; } ;
struct TYPE_29__ {int /*<<< orphan*/  mtt_table; } ;
struct hns_roce_dev {int loop_idc; TYPE_8__ iboe; TYPE_7__ priv_uar; scalar_t__ odb_offset; scalar_t__ reg_base; scalar_t__* dev_addr; TYPE_3__ qp_table; TYPE_2__ mr_table; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
typedef  enum ib_qp_state { ____Placeholder_ib_qp_state } ib_qp_state ;
typedef  int dma_addr_t ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_28__ {struct device dev; } ;
struct TYPE_25__ {int cqn; } ;
struct TYPE_24__ {int pdn; } ;
struct TYPE_23__ {int srqn; } ;

/* Variables and functions */
 int DB_REG_OFFSET ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IB_ACCESS_REMOTE_ATOMIC ; 
 int IB_ACCESS_REMOTE_READ ; 
 int IB_ACCESS_REMOTE_WRITE ; 
 int IB_QPS_ERR ; 
 int IB_QPS_INIT ; 
 int IB_QPS_RESET ; 
 int IB_QPS_RTR ; 
 int IB_QPS_RTS ; 
 int IB_QP_ACCESS_FLAGS ; 
 int IB_QP_ALT_PATH ; 
 int IB_QP_CUR_STATE ; 
 int IB_QP_DEST_QPN ; 
 int IB_QP_MAX_DEST_RD_ATOMIC ; 
 int IB_QP_MIN_RNR_TIMER ; 
 int IB_QP_PATH_MIG_STATE ; 
 int IB_QP_PKEY_INDEX ; 
 int IB_QP_PORT ; 
 int IB_QP_QKEY ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_108_TRRL_SDB_PSN_FLG_S ; 
 int QP_CONTEXT_QPC_BYTES_108_TRRL_SDB_PSN_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_108_TRRL_SDB_PSN_S ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_108_TRRL_TDB_PSN_FLG_S ; 
 int QP_CONTEXT_QPC_BYTES_112_TRRL_TAIL_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_112_TRRL_TAIL_S ; 
 int QP_CONTEXT_QPC_BYTES_112_TRRL_TDB_PSN_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_112_TRRL_TDB_PSN_S ; 
 int QP_CONTEXT_QPC_BYTES_120_RX_CUR_SQ_WQE_BA_H_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_120_RX_CUR_SQ_WQE_BA_H_S ; 
 int QP_CONTEXT_QPC_BYTES_124_IRRL_MSG_IDX_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_124_IRRL_MSG_IDX_S ; 
 int QP_CONTEXT_QPC_BYTES_124_RX_ACK_MSN_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_124_RX_ACK_MSN_S ; 
 int QP_CONTEXT_QPC_BYTES_128_ACK_LAST_OPERATION_TYPE_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_128_ACK_LAST_OPERATION_TYPE_S ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_128_IRRL_PSN_VLD_FLG_S ; 
 int QP_CONTEXT_QPC_BYTES_128_RX_ACK_EPSN_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_128_RX_ACK_EPSN_S ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_128_RX_ACK_PSN_ERR_FLG_S ; 
 int QP_CONTEXT_QPC_BYTES_12_P_KEY_INDEX_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_12_P_KEY_INDEX_S ; 
 int QP_CONTEXT_QPC_BYTES_12_SRQ_NUMBER_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_12_SRQ_NUMBER_S ; 
 int QP_CONTEXT_QPC_BYTES_132_IRRL_PSN_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_132_IRRL_PSN_S ; 
 int QP_CONTEXT_QPC_BYTES_132_IRRL_TAIL_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_132_IRRL_TAIL_S ; 
 int QP_CONTEXT_QPC_BYTES_136_RETRY_MSG_FPKT_PSN_L_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_136_RETRY_MSG_FPKT_PSN_L_S ; 
 int QP_CONTEXT_QPC_BYTES_136_RETRY_MSG_PSN_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_136_RETRY_MSG_PSN_S ; 
 int QP_CONTEXT_QPC_BYTES_140_RETRY_MSG_FPKT_PSN_H_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_140_RETRY_MSG_FPKT_PSN_H_S ; 
 int QP_CONTEXT_QPC_BYTES_140_RETRY_MSG_MSN_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_140_RETRY_MSG_MSN_S ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_140_RNR_RETRY_FLG_S ; 
 int QP_CONTEXT_QPC_BYTES_144_QP_STATE_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_144_QP_STATE_S ; 
 int QP_CONTEXT_QPC_BYTES_148_CHECK_FLAG_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_148_CHECK_FLAG_S ; 
 int QP_CONTEXT_QPC_BYTES_148_LSN_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_148_LSN_S ; 
 int QP_CONTEXT_QPC_BYTES_148_RETRY_COUNT_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_148_RETRY_COUNT_S ; 
 int QP_CONTEXT_QPC_BYTES_148_RNR_RETRY_COUNT_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_148_RNR_RETRY_COUNT_S ; 
 int QP_CONTEXT_QPC_BYTES_156_ACK_REQ_IND_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_156_ACK_REQ_IND_S ; 
 int QP_CONTEXT_QPC_BYTES_156_ACK_TIMEOUT_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_156_ACK_TIMEOUT_S ; 
 int QP_CONTEXT_QPC_BYTES_156_INITIATOR_DEPTH_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_156_INITIATOR_DEPTH_S ; 
 int QP_CONTEXT_QPC_BYTES_156_PORT_NUM_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_156_PORT_NUM_S ; 
 int QP_CONTEXT_QPC_BYTES_156_RETRY_COUNT_INIT_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_156_RETRY_COUNT_INIT_S ; 
 int QP_CONTEXT_QPC_BYTES_156_RNR_RETRY_COUNT_INIT_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_156_RNR_RETRY_COUNT_INIT_S ; 
 int QP_CONTEXT_QPC_BYTES_156_SL_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_156_SL_S ; 
 int QP_CONTEXT_QPC_BYTES_164_IRRL_HEAD_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_164_IRRL_HEAD_S ; 
 int QP_CONTEXT_QPC_BYTES_164_SQ_PSN_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_164_SQ_PSN_S ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_168_CSDB_LP_IND_S ; 
 int QP_CONTEXT_QPC_BYTES_168_DB_TYPE_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_168_DB_TYPE_S ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_168_MSG_LP_IND_S ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_168_QP_ERR_FLG_S ; 
 int QP_CONTEXT_QPC_BYTES_168_RETRY_SQ_PSN_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_168_RETRY_SQ_PSN_S ; 
 int QP_CONTEXT_QPC_BYTES_168_SGE_USE_FLA_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_168_SGE_USE_FLA_S ; 
 int QP_CONTEXT_QPC_BYTES_16_QP_NUM_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_16_QP_NUM_S ; 
 int QP_CONTEXT_QPC_BYTES_176_DB_CUR_INDEX_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_176_DB_CUR_INDEX_S ; 
 int QP_CONTEXT_QPC_BYTES_176_RETRY_DB_CUR_INDEX_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_176_RETRY_DB_CUR_INDEX_S ; 
 int QP_CONTEXT_QPC_BYTES_180_SQ_CUR_INDEX_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_180_SQ_CUR_INDEX_S ; 
 int QP_CONTEXT_QPC_BYTES_180_SQ_HEAD_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_180_SQ_HEAD_S ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_188_PKT_RETRY_FLG_S ; 
 int QP_CONTEXT_QPC_BYTES_188_TX_CUR_SQ_WQE_BA_H_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_188_TX_CUR_SQ_WQE_BA_H_S ; 
 int QP_CONTEXT_QPC_BYTES_188_TX_RETRY_CUR_INDEX_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_188_TX_RETRY_CUR_INDEX_S ; 
 int QP_CONTEXT_QPC_BYTES_24_MINIMUM_RNR_NAK_TIMER_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_24_MINIMUM_RNR_NAK_TIMER_S ; 
 int QP_CONTEXT_QPC_BYTES_24_SQ_RQ_BT_H_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_24_SQ_RQ_BT_H_S ; 
 int QP_CONTEXT_QPC_BYTES_32_IRRL_BA_H_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_32_IRRL_BA_H_S ; 
 int QP_CONTEXT_QPC_BYTES_32_MIG_STATE_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_32_MIG_STATE_S ; 
 int QP_CONTEXT_QPC_BYTES_32_RESPONDER_RESOURCES_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_32_RESPONDER_RESOURCES_S ; 
 int QP_CONTEXT_QPC_BYTES_36_DEST_QP_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_36_DEST_QP_S ; 
 int QP_CONTEXT_QPC_BYTES_36_SGID_INDEX_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_36_SGID_INDEX_S ; 
 int QP_CONTEXT_QPC_BYTES_44_DMAC_H_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_44_DMAC_H_S ; 
 int QP_CONTEXT_QPC_BYTES_44_HOPLMT_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_44_HOPLMT_S ; 
 int QP_CONTEXT_QPC_BYTES_44_MAXIMUM_STATIC_RATE_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_44_MAXIMUM_STATIC_RATE_S ; 
 int QP_CONTEXT_QPC_BYTES_48_FLOWLABEL_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_48_FLOWLABEL_S ; 
 int QP_CONTEXT_QPC_BYTES_48_MTU_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_48_MTU_S ; 
 int QP_CONTEXT_QPC_BYTES_48_TCLASS_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_48_TCLASS_S ; 
 int QP_CONTEXT_QPC_BYTES_4_PD_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_4_PD_S ; 
 int QP_CONTEXT_QPC_BYTES_4_RQ_WQE_SHIFT_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_4_RQ_WQE_SHIFT_S ; 
 int QP_CONTEXT_QPC_BYTES_4_SQ_WQE_SHIFT_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_4_SQ_WQE_SHIFT_S ; 
 int QP_CONTEXT_QPC_BYTES_4_TRANSPORT_SERVICE_TYPE_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_4_TRANSPORT_SERVICE_TYPE_S ; 
 int QP_CONTEXT_QPC_BYTES_68_RQ_CUR_INDEX_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_68_RQ_CUR_INDEX_S ; 
 int QP_CONTEXT_QPC_BYTES_68_RQ_HEAD_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_68_RQ_HEAD_S ; 
 int QP_CONTEXT_QPC_BYTES_76_CUR_RQ_WQE_BA_H_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_76_CUR_RQ_WQE_BA_H_S ; 
 int QP_CONTEXT_QPC_BYTES_76_RX_REQ_MSN_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_76_RX_REQ_MSN_S ; 
 int QP_CONTEXT_QPC_BYTES_84_LAST_ACK_PSN_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_84_LAST_ACK_PSN_S ; 
 int QP_CONTEXT_QPC_BYTES_84_TRRL_HEAD_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_84_TRRL_HEAD_S ; 
 int QP_CONTEXT_QPC_BYTES_88_RQ_REQ_LAST_OPERATION_TYPE_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_88_RQ_REQ_LAST_OPERATION_TYPE_S ; 
 int QP_CONTEXT_QPC_BYTES_88_RQ_REQ_RDMA_WR_FLAG_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_88_RQ_REQ_RDMA_WR_FLAG_S ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_88_RX_LAST_OPCODE_FLG_S ; 
 int QP_CONTEXT_QPC_BYTES_88_RX_REQ_EPSN_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_88_RX_REQ_EPSN_S ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_88_RX_REQ_PSN_ERR_FLAG_S ; 
 int QP_CONTEXT_QPC_BYTES_8_RX_COMPLETION_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_8_RX_COMPLETION_S ; 
 int QP_CONTEXT_QPC_BYTES_8_TX_COMPLETION_M ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTES_8_TX_COMPLETION_S ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTE_24_REMOTE_ENABLE_E2E_CREDITS_S ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTE_32_GLOBAL_HEADER_S ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTE_32_LOCAL_ENABLE_E2E_CREDITS_S ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTE_32_LOOPBACK_INDICATOR_S ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTE_32_SIGNALING_TYPE_S ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTE_4_ATOMIC_OPERATION_ENABLE_S ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTE_4_ENABLE_FPMR_S ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTE_4_RDMAR_USE_S ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTE_4_RDMA_READ_ENABLE_S ; 
 int /*<<< orphan*/  QP_CONTEXT_QPC_BYTE_4_RDMA_WRITE_ENABLE_S ; 
 int RQ_DOORBELL_U32_4_RQ_HEAD_M ; 
 int /*<<< orphan*/  RQ_DOORBELL_U32_4_RQ_HEAD_S ; 
 int RQ_DOORBELL_U32_8_CMD_M ; 
 int /*<<< orphan*/  RQ_DOORBELL_U32_8_CMD_S ; 
 int /*<<< orphan*/  RQ_DOORBELL_U32_8_HW_SYNC_S ; 
 int RQ_DOORBELL_U32_8_QPN_M ; 
 int /*<<< orphan*/  RQ_DOORBELL_U32_8_QPN_S ; 
 int SQ_PSN_SHIFT ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 scalar_t__ FUNC4 (scalar_t__*,scalar_t__*) ; 
 int FUNC5 (struct hns_roce_dev*,scalar_t__,int /*<<< orphan*/ ) ; 
 int* FUNC6 (struct hns_roce_dev*,int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_13__*,int,TYPE_11__*) ; 
 int FUNC8 (struct hns_roce_dev*,TYPE_19__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hns_roce_qp_context*,struct hns_roce_qp*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC10 (unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct hns_roce_qp_context*) ; 
 struct hns_roce_qp_context* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,scalar_t__*,int) ; 
 int FUNC14 (TYPE_14__*) ; 
 scalar_t__ FUNC15 (TYPE_14__*) ; 
 int FUNC16 (TYPE_14__*) ; 
 int FUNC17 (TYPE_14__*) ; 
 struct ib_global_route* FUNC18 (TYPE_14__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 TYPE_13__* FUNC23 (scalar_t__) ; 
 struct hns_roce_dev* FUNC24 (int /*<<< orphan*/ ) ; 
 TYPE_12__* FUNC25 (int /*<<< orphan*/ ) ; 
 struct hns_roce_qp* FUNC26 (struct ib_qp*) ; 
 int FUNC27 (int /*<<< orphan*/ ) ; 
 TYPE_11__* FUNC28 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC29 () ; 

__attribute__((used)) static int FUNC30(struct ib_qp *ibqp, const struct ib_qp_attr *attr,
			    int attr_mask, enum ib_qp_state cur_state,
			    enum ib_qp_state new_state)
{
	struct hns_roce_dev *hr_dev = FUNC24(ibqp->device);
	struct hns_roce_qp *hr_qp = FUNC26(ibqp);
	struct device *dev = &hr_dev->pdev->dev;
	struct hns_roce_qp_context *context;
	const struct ib_global_route *grh = FUNC18(&attr->ah_attr);
	dma_addr_t dma_handle_2 = 0;
	dma_addr_t dma_handle = 0;
	__le32 doorbell[2] = {0};
	int rq_pa_start = 0;
	u64 *mtts_2 = NULL;
	int ret = -EINVAL;
	u64 *mtts = NULL;
	int port;
	u8 port_num;
	u8 *dmac;
	u8 *smac;

	context = FUNC12(sizeof(*context), GFP_KERNEL);
	if (!context)
		return -ENOMEM;

	/* Search qp buf's mtts */
	mtts = FUNC6(hr_dev, &hr_dev->mr_table.mtt_table,
				   hr_qp->mtt.first_seg, &dma_handle);
	if (mtts == NULL) {
		FUNC2(dev, "qp buf pa find failed\n");
		goto out;
	}

	/* Search IRRL's mtts */
	mtts_2 = FUNC6(hr_dev, &hr_dev->qp_table.irrl_table,
				     hr_qp->qpn, &dma_handle_2);
	if (mtts_2 == NULL) {
		FUNC2(dev, "qp irrl_table find failed\n");
		goto out;
	}

	/*
	 * Reset to init
	 *	Mandatory param:
	 *	IB_QP_STATE | IB_QP_PKEY_INDEX | IB_QP_PORT | IB_QP_ACCESS_FLAGS
	 *	Optional param: NA
	 */
	if (cur_state == IB_QPS_RESET && new_state == IB_QPS_INIT) {
		FUNC21(context->qpc_bytes_4,
			       QP_CONTEXT_QPC_BYTES_4_TRANSPORT_SERVICE_TYPE_M,
			       QP_CONTEXT_QPC_BYTES_4_TRANSPORT_SERVICE_TYPE_S,
			       FUNC27(hr_qp->ibqp.qp_type));

		FUNC20(context->qpc_bytes_4,
			     QP_CONTEXT_QPC_BYTE_4_ENABLE_FPMR_S, 0);
		FUNC20(context->qpc_bytes_4,
			     QP_CONTEXT_QPC_BYTE_4_RDMA_READ_ENABLE_S,
			     !!(attr->qp_access_flags & IB_ACCESS_REMOTE_READ));
		FUNC20(context->qpc_bytes_4,
			     QP_CONTEXT_QPC_BYTE_4_RDMA_WRITE_ENABLE_S,
			     !!(attr->qp_access_flags & IB_ACCESS_REMOTE_WRITE)
			     );
		FUNC20(context->qpc_bytes_4,
			     QP_CONTEXT_QPC_BYTE_4_ATOMIC_OPERATION_ENABLE_S,
			     !!(attr->qp_access_flags & IB_ACCESS_REMOTE_ATOMIC)
			     );
		FUNC20(context->qpc_bytes_4,
			     QP_CONTEXT_QPC_BYTE_4_RDMAR_USE_S, 1);
		FUNC21(context->qpc_bytes_4,
			       QP_CONTEXT_QPC_BYTES_4_SQ_WQE_SHIFT_M,
			       QP_CONTEXT_QPC_BYTES_4_SQ_WQE_SHIFT_S,
			       FUNC10((unsigned int)hr_qp->sq.wqe_cnt));
		FUNC21(context->qpc_bytes_4,
			       QP_CONTEXT_QPC_BYTES_4_RQ_WQE_SHIFT_M,
			       QP_CONTEXT_QPC_BYTES_4_RQ_WQE_SHIFT_S,
			       FUNC10((unsigned int)hr_qp->rq.wqe_cnt));
		FUNC21(context->qpc_bytes_4,
			       QP_CONTEXT_QPC_BYTES_4_PD_M,
			       QP_CONTEXT_QPC_BYTES_4_PD_S,
			       FUNC25(ibqp->pd)->pdn);
		hr_qp->access_flags = attr->qp_access_flags;
		FUNC21(context->qpc_bytes_8,
			       QP_CONTEXT_QPC_BYTES_8_TX_COMPLETION_M,
			       QP_CONTEXT_QPC_BYTES_8_TX_COMPLETION_S,
			       FUNC23(ibqp->send_cq)->cqn);
		FUNC21(context->qpc_bytes_8,
			       QP_CONTEXT_QPC_BYTES_8_RX_COMPLETION_M,
			       QP_CONTEXT_QPC_BYTES_8_RX_COMPLETION_S,
			       FUNC23(ibqp->recv_cq)->cqn);

		if (ibqp->srq)
			FUNC21(context->qpc_bytes_12,
				       QP_CONTEXT_QPC_BYTES_12_SRQ_NUMBER_M,
				       QP_CONTEXT_QPC_BYTES_12_SRQ_NUMBER_S,
				       FUNC28(ibqp->srq)->srqn);

		FUNC21(context->qpc_bytes_12,
			       QP_CONTEXT_QPC_BYTES_12_P_KEY_INDEX_M,
			       QP_CONTEXT_QPC_BYTES_12_P_KEY_INDEX_S,
			       attr->pkey_index);
		hr_qp->pkey_index = attr->pkey_index;
		FUNC21(context->qpc_bytes_16,
			       QP_CONTEXT_QPC_BYTES_16_QP_NUM_M,
			       QP_CONTEXT_QPC_BYTES_16_QP_NUM_S, hr_qp->qpn);

	} else if (cur_state == IB_QPS_INIT && new_state == IB_QPS_INIT) {
		FUNC21(context->qpc_bytes_4,
			       QP_CONTEXT_QPC_BYTES_4_TRANSPORT_SERVICE_TYPE_M,
			       QP_CONTEXT_QPC_BYTES_4_TRANSPORT_SERVICE_TYPE_S,
			       FUNC27(hr_qp->ibqp.qp_type));
		FUNC20(context->qpc_bytes_4,
			     QP_CONTEXT_QPC_BYTE_4_ENABLE_FPMR_S, 0);
		if (attr_mask & IB_QP_ACCESS_FLAGS) {
			FUNC20(context->qpc_bytes_4,
				     QP_CONTEXT_QPC_BYTE_4_RDMA_READ_ENABLE_S,
				     !!(attr->qp_access_flags &
				     IB_ACCESS_REMOTE_READ));
			FUNC20(context->qpc_bytes_4,
				     QP_CONTEXT_QPC_BYTE_4_RDMA_WRITE_ENABLE_S,
				     !!(attr->qp_access_flags &
				     IB_ACCESS_REMOTE_WRITE));
		} else {
			FUNC20(context->qpc_bytes_4,
				     QP_CONTEXT_QPC_BYTE_4_RDMA_READ_ENABLE_S,
				     !!(hr_qp->access_flags &
				     IB_ACCESS_REMOTE_READ));
			FUNC20(context->qpc_bytes_4,
				     QP_CONTEXT_QPC_BYTE_4_RDMA_WRITE_ENABLE_S,
				     !!(hr_qp->access_flags &
				     IB_ACCESS_REMOTE_WRITE));
		}

		FUNC20(context->qpc_bytes_4,
			     QP_CONTEXT_QPC_BYTE_4_RDMAR_USE_S, 1);
		FUNC21(context->qpc_bytes_4,
			       QP_CONTEXT_QPC_BYTES_4_SQ_WQE_SHIFT_M,
			       QP_CONTEXT_QPC_BYTES_4_SQ_WQE_SHIFT_S,
			       FUNC10((unsigned int)hr_qp->sq.wqe_cnt));
		FUNC21(context->qpc_bytes_4,
			       QP_CONTEXT_QPC_BYTES_4_RQ_WQE_SHIFT_M,
			       QP_CONTEXT_QPC_BYTES_4_RQ_WQE_SHIFT_S,
			       FUNC10((unsigned int)hr_qp->rq.wqe_cnt));
		FUNC21(context->qpc_bytes_4,
			       QP_CONTEXT_QPC_BYTES_4_PD_M,
			       QP_CONTEXT_QPC_BYTES_4_PD_S,
			       FUNC25(ibqp->pd)->pdn);

		FUNC21(context->qpc_bytes_8,
			       QP_CONTEXT_QPC_BYTES_8_TX_COMPLETION_M,
			       QP_CONTEXT_QPC_BYTES_8_TX_COMPLETION_S,
			       FUNC23(ibqp->send_cq)->cqn);
		FUNC21(context->qpc_bytes_8,
			       QP_CONTEXT_QPC_BYTES_8_RX_COMPLETION_M,
			       QP_CONTEXT_QPC_BYTES_8_RX_COMPLETION_S,
			       FUNC23(ibqp->recv_cq)->cqn);

		if (ibqp->srq)
			FUNC21(context->qpc_bytes_12,
				       QP_CONTEXT_QPC_BYTES_12_SRQ_NUMBER_M,
				       QP_CONTEXT_QPC_BYTES_12_SRQ_NUMBER_S,
				       FUNC28(ibqp->srq)->srqn);
		if (attr_mask & IB_QP_PKEY_INDEX)
			FUNC21(context->qpc_bytes_12,
				       QP_CONTEXT_QPC_BYTES_12_P_KEY_INDEX_M,
				       QP_CONTEXT_QPC_BYTES_12_P_KEY_INDEX_S,
				       attr->pkey_index);
		else
			FUNC21(context->qpc_bytes_12,
				       QP_CONTEXT_QPC_BYTES_12_P_KEY_INDEX_M,
				       QP_CONTEXT_QPC_BYTES_12_P_KEY_INDEX_S,
				       hr_qp->pkey_index);

		FUNC21(context->qpc_bytes_16,
			       QP_CONTEXT_QPC_BYTES_16_QP_NUM_M,
			       QP_CONTEXT_QPC_BYTES_16_QP_NUM_S, hr_qp->qpn);
	} else if (cur_state == IB_QPS_INIT && new_state == IB_QPS_RTR) {
		if ((attr_mask & IB_QP_ALT_PATH) ||
		    (attr_mask & IB_QP_ACCESS_FLAGS) ||
		    (attr_mask & IB_QP_PKEY_INDEX) ||
		    (attr_mask & IB_QP_QKEY)) {
			FUNC2(dev, "INIT2RTR attr_mask error\n");
			goto out;
		}

		dmac = (u8 *)attr->ah_attr.roce.dmac;

		context->sq_rq_bt_l = FUNC0((u32)(dma_handle));
		FUNC21(context->qpc_bytes_24,
			       QP_CONTEXT_QPC_BYTES_24_SQ_RQ_BT_H_M,
			       QP_CONTEXT_QPC_BYTES_24_SQ_RQ_BT_H_S,
			       ((u32)(dma_handle >> 32)));
		FUNC20(context->qpc_bytes_24,
			     QP_CONTEXT_QPC_BYTE_24_REMOTE_ENABLE_E2E_CREDITS_S,
			     1);
		FUNC21(context->qpc_bytes_24,
			       QP_CONTEXT_QPC_BYTES_24_MINIMUM_RNR_NAK_TIMER_M,
			       QP_CONTEXT_QPC_BYTES_24_MINIMUM_RNR_NAK_TIMER_S,
			       attr->min_rnr_timer);
		context->irrl_ba_l = FUNC0((u32)(dma_handle_2));
		FUNC21(context->qpc_bytes_32,
			       QP_CONTEXT_QPC_BYTES_32_IRRL_BA_H_M,
			       QP_CONTEXT_QPC_BYTES_32_IRRL_BA_H_S,
			       ((u32)(dma_handle_2 >> 32)) &
				QP_CONTEXT_QPC_BYTES_32_IRRL_BA_H_M);
		FUNC21(context->qpc_bytes_32,
			       QP_CONTEXT_QPC_BYTES_32_MIG_STATE_M,
			       QP_CONTEXT_QPC_BYTES_32_MIG_STATE_S, 0);
		FUNC20(context->qpc_bytes_32,
			     QP_CONTEXT_QPC_BYTE_32_LOCAL_ENABLE_E2E_CREDITS_S,
			     1);
		FUNC20(context->qpc_bytes_32,
			     QP_CONTEXT_QPC_BYTE_32_SIGNALING_TYPE_S,
			     hr_qp->sq_signal_bits);

		port = (attr_mask & IB_QP_PORT) ? (attr->port_num - 1) :
			hr_qp->port;
		smac = (u8 *)hr_dev->dev_addr[port];
		/* when dmac equals smac or loop_idc is 1, it should loopback */
		if (FUNC4(dmac, smac) ||
		    hr_dev->loop_idc == 0x1)
			FUNC20(context->qpc_bytes_32,
			      QP_CONTEXT_QPC_BYTE_32_LOOPBACK_INDICATOR_S, 1);

		FUNC20(context->qpc_bytes_32,
			     QP_CONTEXT_QPC_BYTE_32_GLOBAL_HEADER_S,
			     FUNC14(&attr->ah_attr));
		FUNC21(context->qpc_bytes_32,
			       QP_CONTEXT_QPC_BYTES_32_RESPONDER_RESOURCES_M,
			       QP_CONTEXT_QPC_BYTES_32_RESPONDER_RESOURCES_S,
			       FUNC10((unsigned int)attr->max_dest_rd_atomic));

		if (attr_mask & IB_QP_DEST_QPN)
			FUNC21(context->qpc_bytes_36,
				       QP_CONTEXT_QPC_BYTES_36_DEST_QP_M,
				       QP_CONTEXT_QPC_BYTES_36_DEST_QP_S,
				       attr->dest_qp_num);

		/* Configure GID index */
		port_num = FUNC15(&attr->ah_attr);
		FUNC21(context->qpc_bytes_36,
			       QP_CONTEXT_QPC_BYTES_36_SGID_INDEX_M,
			       QP_CONTEXT_QPC_BYTES_36_SGID_INDEX_S,
				FUNC5(hr_dev,
						  port_num - 1,
						  grh->sgid_index));

		FUNC13(&(context->dmac_l), dmac, 4);

		FUNC21(context->qpc_bytes_44,
			       QP_CONTEXT_QPC_BYTES_44_DMAC_H_M,
			       QP_CONTEXT_QPC_BYTES_44_DMAC_H_S,
			       *((u16 *)(&dmac[4])));
		FUNC21(context->qpc_bytes_44,
			       QP_CONTEXT_QPC_BYTES_44_MAXIMUM_STATIC_RATE_M,
			       QP_CONTEXT_QPC_BYTES_44_MAXIMUM_STATIC_RATE_S,
			       FUNC17(&attr->ah_attr));
		FUNC21(context->qpc_bytes_44,
			       QP_CONTEXT_QPC_BYTES_44_HOPLMT_M,
			       QP_CONTEXT_QPC_BYTES_44_HOPLMT_S,
			       grh->hop_limit);

		FUNC21(context->qpc_bytes_48,
			       QP_CONTEXT_QPC_BYTES_48_FLOWLABEL_M,
			       QP_CONTEXT_QPC_BYTES_48_FLOWLABEL_S,
			       grh->flow_label);
		FUNC21(context->qpc_bytes_48,
			       QP_CONTEXT_QPC_BYTES_48_TCLASS_M,
			       QP_CONTEXT_QPC_BYTES_48_TCLASS_S,
			       grh->traffic_class);
		FUNC21(context->qpc_bytes_48,
			       QP_CONTEXT_QPC_BYTES_48_MTU_M,
			       QP_CONTEXT_QPC_BYTES_48_MTU_S, attr->path_mtu);

		FUNC13(context->dgid, grh->dgid.raw,
		       sizeof(grh->dgid.raw));

		FUNC1(dev, "dmac:%x :%lx\n", context->dmac_l,
			FUNC19(context->qpc_bytes_44,
				       QP_CONTEXT_QPC_BYTES_44_DMAC_H_M,
				       QP_CONTEXT_QPC_BYTES_44_DMAC_H_S));

		FUNC21(context->qpc_bytes_68,
			       QP_CONTEXT_QPC_BYTES_68_RQ_HEAD_M,
			       QP_CONTEXT_QPC_BYTES_68_RQ_HEAD_S,
			       hr_qp->rq.head);
		FUNC21(context->qpc_bytes_68,
			       QP_CONTEXT_QPC_BYTES_68_RQ_CUR_INDEX_M,
			       QP_CONTEXT_QPC_BYTES_68_RQ_CUR_INDEX_S, 0);

		rq_pa_start = (u32)hr_qp->rq.offset / PAGE_SIZE;
		context->cur_rq_wqe_ba_l =
				FUNC0((u32)(mtts[rq_pa_start]));

		FUNC21(context->qpc_bytes_76,
			QP_CONTEXT_QPC_BYTES_76_CUR_RQ_WQE_BA_H_M,
			QP_CONTEXT_QPC_BYTES_76_CUR_RQ_WQE_BA_H_S,
			mtts[rq_pa_start] >> 32);
		FUNC21(context->qpc_bytes_76,
			       QP_CONTEXT_QPC_BYTES_76_RX_REQ_MSN_M,
			       QP_CONTEXT_QPC_BYTES_76_RX_REQ_MSN_S, 0);

		context->rx_rnr_time = 0;

		FUNC21(context->qpc_bytes_84,
			       QP_CONTEXT_QPC_BYTES_84_LAST_ACK_PSN_M,
			       QP_CONTEXT_QPC_BYTES_84_LAST_ACK_PSN_S,
			       attr->rq_psn - 1);
		FUNC21(context->qpc_bytes_84,
			       QP_CONTEXT_QPC_BYTES_84_TRRL_HEAD_M,
			       QP_CONTEXT_QPC_BYTES_84_TRRL_HEAD_S, 0);

		FUNC21(context->qpc_bytes_88,
			       QP_CONTEXT_QPC_BYTES_88_RX_REQ_EPSN_M,
			       QP_CONTEXT_QPC_BYTES_88_RX_REQ_EPSN_S,
			       attr->rq_psn);
		FUNC20(context->qpc_bytes_88,
			     QP_CONTEXT_QPC_BYTES_88_RX_REQ_PSN_ERR_FLAG_S, 0);
		FUNC20(context->qpc_bytes_88,
			     QP_CONTEXT_QPC_BYTES_88_RX_LAST_OPCODE_FLG_S, 0);
		FUNC21(context->qpc_bytes_88,
			QP_CONTEXT_QPC_BYTES_88_RQ_REQ_LAST_OPERATION_TYPE_M,
			QP_CONTEXT_QPC_BYTES_88_RQ_REQ_LAST_OPERATION_TYPE_S,
			0);
		FUNC21(context->qpc_bytes_88,
			       QP_CONTEXT_QPC_BYTES_88_RQ_REQ_RDMA_WR_FLAG_M,
			       QP_CONTEXT_QPC_BYTES_88_RQ_REQ_RDMA_WR_FLAG_S,
			       0);

		context->dma_length = 0;
		context->r_key = 0;
		context->va_l = 0;
		context->va_h = 0;

		FUNC21(context->qpc_bytes_108,
			       QP_CONTEXT_QPC_BYTES_108_TRRL_SDB_PSN_M,
			       QP_CONTEXT_QPC_BYTES_108_TRRL_SDB_PSN_S, 0);
		FUNC20(context->qpc_bytes_108,
			     QP_CONTEXT_QPC_BYTES_108_TRRL_SDB_PSN_FLG_S, 0);
		FUNC20(context->qpc_bytes_108,
			     QP_CONTEXT_QPC_BYTES_108_TRRL_TDB_PSN_FLG_S, 0);

		FUNC21(context->qpc_bytes_112,
			       QP_CONTEXT_QPC_BYTES_112_TRRL_TDB_PSN_M,
			       QP_CONTEXT_QPC_BYTES_112_TRRL_TDB_PSN_S, 0);
		FUNC21(context->qpc_bytes_112,
			       QP_CONTEXT_QPC_BYTES_112_TRRL_TAIL_M,
			       QP_CONTEXT_QPC_BYTES_112_TRRL_TAIL_S, 0);

		/* For chip resp ack */
		FUNC21(context->qpc_bytes_156,
			       QP_CONTEXT_QPC_BYTES_156_PORT_NUM_M,
			       QP_CONTEXT_QPC_BYTES_156_PORT_NUM_S,
			       hr_qp->phy_port);
		FUNC21(context->qpc_bytes_156,
			       QP_CONTEXT_QPC_BYTES_156_SL_M,
			       QP_CONTEXT_QPC_BYTES_156_SL_S,
			       FUNC16(&attr->ah_attr));
		hr_qp->sl = FUNC16(&attr->ah_attr);
	} else if (cur_state == IB_QPS_RTR &&
		new_state == IB_QPS_RTS) {
		/* If exist optional param, return error */
		if ((attr_mask & IB_QP_ALT_PATH) ||
		    (attr_mask & IB_QP_ACCESS_FLAGS) ||
		    (attr_mask & IB_QP_QKEY) ||
		    (attr_mask & IB_QP_PATH_MIG_STATE) ||
		    (attr_mask & IB_QP_CUR_STATE) ||
		    (attr_mask & IB_QP_MIN_RNR_TIMER)) {
			FUNC2(dev, "RTR2RTS attr_mask error\n");
			goto out;
		}

		context->rx_cur_sq_wqe_ba_l = FUNC0((u32)(mtts[0]));

		FUNC21(context->qpc_bytes_120,
			       QP_CONTEXT_QPC_BYTES_120_RX_CUR_SQ_WQE_BA_H_M,
			       QP_CONTEXT_QPC_BYTES_120_RX_CUR_SQ_WQE_BA_H_S,
			       (mtts[0]) >> 32);

		FUNC21(context->qpc_bytes_124,
			       QP_CONTEXT_QPC_BYTES_124_RX_ACK_MSN_M,
			       QP_CONTEXT_QPC_BYTES_124_RX_ACK_MSN_S, 0);
		FUNC21(context->qpc_bytes_124,
			       QP_CONTEXT_QPC_BYTES_124_IRRL_MSG_IDX_M,
			       QP_CONTEXT_QPC_BYTES_124_IRRL_MSG_IDX_S, 0);

		FUNC21(context->qpc_bytes_128,
			       QP_CONTEXT_QPC_BYTES_128_RX_ACK_EPSN_M,
			       QP_CONTEXT_QPC_BYTES_128_RX_ACK_EPSN_S,
			       attr->sq_psn);
		FUNC20(context->qpc_bytes_128,
			     QP_CONTEXT_QPC_BYTES_128_RX_ACK_PSN_ERR_FLG_S, 0);
		FUNC21(context->qpc_bytes_128,
			     QP_CONTEXT_QPC_BYTES_128_ACK_LAST_OPERATION_TYPE_M,
			     QP_CONTEXT_QPC_BYTES_128_ACK_LAST_OPERATION_TYPE_S,
			     0);
		FUNC20(context->qpc_bytes_128,
			     QP_CONTEXT_QPC_BYTES_128_IRRL_PSN_VLD_FLG_S, 0);

		FUNC21(context->qpc_bytes_132,
			       QP_CONTEXT_QPC_BYTES_132_IRRL_PSN_M,
			       QP_CONTEXT_QPC_BYTES_132_IRRL_PSN_S, 0);
		FUNC21(context->qpc_bytes_132,
			       QP_CONTEXT_QPC_BYTES_132_IRRL_TAIL_M,
			       QP_CONTEXT_QPC_BYTES_132_IRRL_TAIL_S, 0);

		FUNC21(context->qpc_bytes_136,
			       QP_CONTEXT_QPC_BYTES_136_RETRY_MSG_PSN_M,
			       QP_CONTEXT_QPC_BYTES_136_RETRY_MSG_PSN_S,
			       attr->sq_psn);
		FUNC21(context->qpc_bytes_136,
			       QP_CONTEXT_QPC_BYTES_136_RETRY_MSG_FPKT_PSN_L_M,
			       QP_CONTEXT_QPC_BYTES_136_RETRY_MSG_FPKT_PSN_L_S,
			       attr->sq_psn);

		FUNC21(context->qpc_bytes_140,
			       QP_CONTEXT_QPC_BYTES_140_RETRY_MSG_FPKT_PSN_H_M,
			       QP_CONTEXT_QPC_BYTES_140_RETRY_MSG_FPKT_PSN_H_S,
			       (attr->sq_psn >> SQ_PSN_SHIFT));
		FUNC21(context->qpc_bytes_140,
			       QP_CONTEXT_QPC_BYTES_140_RETRY_MSG_MSN_M,
			       QP_CONTEXT_QPC_BYTES_140_RETRY_MSG_MSN_S, 0);
		FUNC20(context->qpc_bytes_140,
			     QP_CONTEXT_QPC_BYTES_140_RNR_RETRY_FLG_S, 0);

		FUNC21(context->qpc_bytes_148,
			       QP_CONTEXT_QPC_BYTES_148_CHECK_FLAG_M,
			       QP_CONTEXT_QPC_BYTES_148_CHECK_FLAG_S, 0);
		FUNC21(context->qpc_bytes_148,
			       QP_CONTEXT_QPC_BYTES_148_RETRY_COUNT_M,
			       QP_CONTEXT_QPC_BYTES_148_RETRY_COUNT_S,
			       attr->retry_cnt);
		FUNC21(context->qpc_bytes_148,
			       QP_CONTEXT_QPC_BYTES_148_RNR_RETRY_COUNT_M,
			       QP_CONTEXT_QPC_BYTES_148_RNR_RETRY_COUNT_S,
			       attr->rnr_retry);
		FUNC21(context->qpc_bytes_148,
			       QP_CONTEXT_QPC_BYTES_148_LSN_M,
			       QP_CONTEXT_QPC_BYTES_148_LSN_S, 0x100);

		context->rnr_retry = 0;

		FUNC21(context->qpc_bytes_156,
			       QP_CONTEXT_QPC_BYTES_156_RETRY_COUNT_INIT_M,
			       QP_CONTEXT_QPC_BYTES_156_RETRY_COUNT_INIT_S,
			       attr->retry_cnt);
		if (attr->timeout < 0x12) {
			FUNC3(dev, "ack timeout value(0x%x) must bigger than 0x12.\n",
				 attr->timeout);
			FUNC21(context->qpc_bytes_156,
				       QP_CONTEXT_QPC_BYTES_156_ACK_TIMEOUT_M,
				       QP_CONTEXT_QPC_BYTES_156_ACK_TIMEOUT_S,
				       0x12);
		} else {
			FUNC21(context->qpc_bytes_156,
				       QP_CONTEXT_QPC_BYTES_156_ACK_TIMEOUT_M,
				       QP_CONTEXT_QPC_BYTES_156_ACK_TIMEOUT_S,
				       attr->timeout);
		}
		FUNC21(context->qpc_bytes_156,
			       QP_CONTEXT_QPC_BYTES_156_RNR_RETRY_COUNT_INIT_M,
			       QP_CONTEXT_QPC_BYTES_156_RNR_RETRY_COUNT_INIT_S,
			       attr->rnr_retry);
		FUNC21(context->qpc_bytes_156,
			       QP_CONTEXT_QPC_BYTES_156_PORT_NUM_M,
			       QP_CONTEXT_QPC_BYTES_156_PORT_NUM_S,
			       hr_qp->phy_port);
		FUNC21(context->qpc_bytes_156,
			       QP_CONTEXT_QPC_BYTES_156_SL_M,
			       QP_CONTEXT_QPC_BYTES_156_SL_S,
			       FUNC16(&attr->ah_attr));
		hr_qp->sl = FUNC16(&attr->ah_attr);
		FUNC21(context->qpc_bytes_156,
			       QP_CONTEXT_QPC_BYTES_156_INITIATOR_DEPTH_M,
			       QP_CONTEXT_QPC_BYTES_156_INITIATOR_DEPTH_S,
			       FUNC10((unsigned int)attr->max_rd_atomic));
		FUNC21(context->qpc_bytes_156,
			       QP_CONTEXT_QPC_BYTES_156_ACK_REQ_IND_M,
			       QP_CONTEXT_QPC_BYTES_156_ACK_REQ_IND_S, 0);
		context->pkt_use_len = 0;

		FUNC21(context->qpc_bytes_164,
			       QP_CONTEXT_QPC_BYTES_164_SQ_PSN_M,
			       QP_CONTEXT_QPC_BYTES_164_SQ_PSN_S, attr->sq_psn);
		FUNC21(context->qpc_bytes_164,
			       QP_CONTEXT_QPC_BYTES_164_IRRL_HEAD_M,
			       QP_CONTEXT_QPC_BYTES_164_IRRL_HEAD_S, 0);

		FUNC21(context->qpc_bytes_168,
			       QP_CONTEXT_QPC_BYTES_168_RETRY_SQ_PSN_M,
			       QP_CONTEXT_QPC_BYTES_168_RETRY_SQ_PSN_S,
			       attr->sq_psn);
		FUNC21(context->qpc_bytes_168,
			       QP_CONTEXT_QPC_BYTES_168_SGE_USE_FLA_M,
			       QP_CONTEXT_QPC_BYTES_168_SGE_USE_FLA_S, 0);
		FUNC21(context->qpc_bytes_168,
			       QP_CONTEXT_QPC_BYTES_168_DB_TYPE_M,
			       QP_CONTEXT_QPC_BYTES_168_DB_TYPE_S, 0);
		FUNC20(context->qpc_bytes_168,
			     QP_CONTEXT_QPC_BYTES_168_MSG_LP_IND_S, 0);
		FUNC20(context->qpc_bytes_168,
			     QP_CONTEXT_QPC_BYTES_168_CSDB_LP_IND_S, 0);
		FUNC20(context->qpc_bytes_168,
			     QP_CONTEXT_QPC_BYTES_168_QP_ERR_FLG_S, 0);
		context->sge_use_len = 0;

		FUNC21(context->qpc_bytes_176,
			       QP_CONTEXT_QPC_BYTES_176_DB_CUR_INDEX_M,
			       QP_CONTEXT_QPC_BYTES_176_DB_CUR_INDEX_S, 0);
		FUNC21(context->qpc_bytes_176,
			       QP_CONTEXT_QPC_BYTES_176_RETRY_DB_CUR_INDEX_M,
			       QP_CONTEXT_QPC_BYTES_176_RETRY_DB_CUR_INDEX_S,
			       0);
		FUNC21(context->qpc_bytes_180,
			       QP_CONTEXT_QPC_BYTES_180_SQ_CUR_INDEX_M,
			       QP_CONTEXT_QPC_BYTES_180_SQ_CUR_INDEX_S, 0);
		FUNC21(context->qpc_bytes_180,
			       QP_CONTEXT_QPC_BYTES_180_SQ_HEAD_M,
			       QP_CONTEXT_QPC_BYTES_180_SQ_HEAD_S, 0);

		context->tx_cur_sq_wqe_ba_l = FUNC0((u32)(mtts[0]));

		FUNC21(context->qpc_bytes_188,
			       QP_CONTEXT_QPC_BYTES_188_TX_CUR_SQ_WQE_BA_H_M,
			       QP_CONTEXT_QPC_BYTES_188_TX_CUR_SQ_WQE_BA_H_S,
			       (mtts[0]) >> 32);
		FUNC20(context->qpc_bytes_188,
			     QP_CONTEXT_QPC_BYTES_188_PKT_RETRY_FLG_S, 0);
		FUNC21(context->qpc_bytes_188,
			       QP_CONTEXT_QPC_BYTES_188_TX_RETRY_CUR_INDEX_M,
			       QP_CONTEXT_QPC_BYTES_188_TX_RETRY_CUR_INDEX_S,
			       0);
	} else if (!((cur_state == IB_QPS_INIT && new_state == IB_QPS_RESET) ||
		   (cur_state == IB_QPS_INIT && new_state == IB_QPS_ERR) ||
		   (cur_state == IB_QPS_RTR && new_state == IB_QPS_RESET) ||
		   (cur_state == IB_QPS_RTR && new_state == IB_QPS_ERR) ||
		   (cur_state == IB_QPS_RTS && new_state == IB_QPS_RESET) ||
		   (cur_state == IB_QPS_RTS && new_state == IB_QPS_ERR) ||
		   (cur_state == IB_QPS_ERR && new_state == IB_QPS_RESET) ||
		   (cur_state == IB_QPS_ERR && new_state == IB_QPS_ERR))) {
		FUNC2(dev, "not support this status migration\n");
		goto out;
	}

	/* Every status migrate must change state */
	FUNC21(context->qpc_bytes_144,
		       QP_CONTEXT_QPC_BYTES_144_QP_STATE_M,
		       QP_CONTEXT_QPC_BYTES_144_QP_STATE_S, new_state);

	/* SW pass context to HW */
	ret = FUNC8(hr_dev, &hr_qp->mtt,
				    FUNC22(cur_state),
				    FUNC22(new_state), context,
				    hr_qp);
	if (ret) {
		FUNC2(dev, "hns_roce_qp_modify failed\n");
		goto out;
	}

	/*
	 * Use rst2init to instead of init2init with drv,
	 * need to hw to flash RQ HEAD by DB again
	 */
	if (cur_state == IB_QPS_INIT && new_state == IB_QPS_INIT) {
		/* Memory barrier */
		FUNC29();

		FUNC21(doorbell[0], RQ_DOORBELL_U32_4_RQ_HEAD_M,
			       RQ_DOORBELL_U32_4_RQ_HEAD_S, hr_qp->rq.head);
		FUNC21(doorbell[1], RQ_DOORBELL_U32_8_QPN_M,
			       RQ_DOORBELL_U32_8_QPN_S, hr_qp->qpn);
		FUNC21(doorbell[1], RQ_DOORBELL_U32_8_CMD_M,
			       RQ_DOORBELL_U32_8_CMD_S, 1);
		FUNC20(doorbell[1], RQ_DOORBELL_U32_8_HW_SYNC_S, 1);

		if (ibqp->uobject) {
			hr_qp->rq.db_reg_l = hr_dev->reg_base +
				     hr_dev->odb_offset +
				     DB_REG_OFFSET * hr_dev->priv_uar.index;
		}

		FUNC9(doorbell, hr_qp->rq.db_reg_l);
	}

	hr_qp->state = new_state;

	if (attr_mask & IB_QP_MAX_DEST_RD_ATOMIC)
		hr_qp->resp_depth = attr->max_dest_rd_atomic;
	if (attr_mask & IB_QP_PORT) {
		hr_qp->port = attr->port_num - 1;
		hr_qp->phy_port = hr_dev->iboe.phy_port[hr_qp->port];
	}

	if (new_state == IB_QPS_RESET && !ibqp->uobject) {
		FUNC7(FUNC23(ibqp->recv_cq), hr_qp->qpn,
				     ibqp->srq ? FUNC28(ibqp->srq) : NULL);
		if (ibqp->send_cq != ibqp->recv_cq)
			FUNC7(FUNC23(ibqp->send_cq),
					     hr_qp->qpn, NULL);

		hr_qp->rq.head = 0;
		hr_qp->rq.tail = 0;
		hr_qp->sq.head = 0;
		hr_qp->sq.tail = 0;
		hr_qp->sq_next_wqe = 0;
	}
out:
	FUNC11(context);
	return ret;
}