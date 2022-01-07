; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_v1_m_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_v1_m_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i64, i64, i64, i64, i32, i32 }
%struct.ib_qp_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i64 }
%struct.hns_roce_dev = type { i32, %struct.TYPE_35__, %struct.TYPE_34__, i64, i64, i64*, %struct.TYPE_30__, %struct.TYPE_29__, %struct.TYPE_28__* }
%struct.TYPE_35__ = type { i32* }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_28__ = type { %struct.device }
%struct.device = type { i32 }
%struct.hns_roce_qp = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_22__, %struct.TYPE_36__, i64, %struct.TYPE_27__, %struct.TYPE_31__ }
%struct.TYPE_22__ = type { i64, i64, i64 }
%struct.TYPE_36__ = type { i32, i64, i64, i64, i64 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_31__ = type { i32 }
%struct.hns_roce_qp_context = type { i32, i32, i8*, i32, i32, i64, i32, i32, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i64, i64, i64, i64, i32, i32, i64, i32, i8*, i32, i32, i32, i32*, i32, i32, i32, i8*, i32, i8*, i32, i32, i32, i32 }
%struct.ib_global_route = type { i32, i32, i32, %struct.TYPE_33__, i32 }
%struct.TYPE_33__ = type { i64* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_23__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"qp buf pa find failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"qp irrl_table find failed\0A\00", align 1
@IB_QPS_RESET = common dso_local global i32 0, align 4
@IB_QPS_INIT = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_4_TRANSPORT_SERVICE_TYPE_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_4_TRANSPORT_SERVICE_TYPE_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTE_4_ENABLE_FPMR_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTE_4_RDMA_READ_ENABLE_S = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTE_4_RDMA_WRITE_ENABLE_S = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTE_4_ATOMIC_OPERATION_ENABLE_S = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_ATOMIC = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTE_4_RDMAR_USE_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_4_SQ_WQE_SHIFT_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_4_SQ_WQE_SHIFT_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_4_RQ_WQE_SHIFT_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_4_RQ_WQE_SHIFT_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_4_PD_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_4_PD_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_8_TX_COMPLETION_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_8_TX_COMPLETION_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_8_RX_COMPLETION_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_8_RX_COMPLETION_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_12_SRQ_NUMBER_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_12_SRQ_NUMBER_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_12_P_KEY_INDEX_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_12_P_KEY_INDEX_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_16_QP_NUM_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_16_QP_NUM_S = common dso_local global i32 0, align 4
@IB_QP_ACCESS_FLAGS = common dso_local global i32 0, align 4
@IB_QP_PKEY_INDEX = common dso_local global i32 0, align 4
@IB_QPS_RTR = common dso_local global i32 0, align 4
@IB_QP_ALT_PATH = common dso_local global i32 0, align 4
@IB_QP_QKEY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"INIT2RTR attr_mask error\0A\00", align 1
@QP_CONTEXT_QPC_BYTES_24_SQ_RQ_BT_H_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_24_SQ_RQ_BT_H_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTE_24_REMOTE_ENABLE_E2E_CREDITS_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_24_MINIMUM_RNR_NAK_TIMER_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_24_MINIMUM_RNR_NAK_TIMER_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_32_IRRL_BA_H_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_32_IRRL_BA_H_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_32_MIG_STATE_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_32_MIG_STATE_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTE_32_LOCAL_ENABLE_E2E_CREDITS_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTE_32_SIGNALING_TYPE_S = common dso_local global i32 0, align 4
@IB_QP_PORT = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTE_32_LOOPBACK_INDICATOR_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTE_32_GLOBAL_HEADER_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_32_RESPONDER_RESOURCES_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_32_RESPONDER_RESOURCES_S = common dso_local global i32 0, align 4
@IB_QP_DEST_QPN = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_36_DEST_QP_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_36_DEST_QP_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_36_SGID_INDEX_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_36_SGID_INDEX_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_44_DMAC_H_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_44_DMAC_H_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_44_MAXIMUM_STATIC_RATE_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_44_MAXIMUM_STATIC_RATE_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_44_HOPLMT_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_44_HOPLMT_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_48_FLOWLABEL_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_48_FLOWLABEL_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_48_TCLASS_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_48_TCLASS_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_48_MTU_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_48_MTU_S = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"dmac:%x :%lx\0A\00", align 1
@QP_CONTEXT_QPC_BYTES_68_RQ_HEAD_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_68_RQ_HEAD_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_68_RQ_CUR_INDEX_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_68_RQ_CUR_INDEX_S = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_76_CUR_RQ_WQE_BA_H_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_76_CUR_RQ_WQE_BA_H_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_76_RX_REQ_MSN_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_76_RX_REQ_MSN_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_84_LAST_ACK_PSN_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_84_LAST_ACK_PSN_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_84_TRRL_HEAD_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_84_TRRL_HEAD_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_88_RX_REQ_EPSN_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_88_RX_REQ_EPSN_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_88_RX_REQ_PSN_ERR_FLAG_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_88_RX_LAST_OPCODE_FLG_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_88_RQ_REQ_LAST_OPERATION_TYPE_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_88_RQ_REQ_LAST_OPERATION_TYPE_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_88_RQ_REQ_RDMA_WR_FLAG_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_88_RQ_REQ_RDMA_WR_FLAG_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_108_TRRL_SDB_PSN_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_108_TRRL_SDB_PSN_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_108_TRRL_SDB_PSN_FLG_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_108_TRRL_TDB_PSN_FLG_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_112_TRRL_TDB_PSN_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_112_TRRL_TDB_PSN_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_112_TRRL_TAIL_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_112_TRRL_TAIL_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_156_PORT_NUM_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_156_PORT_NUM_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_156_SL_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_156_SL_S = common dso_local global i32 0, align 4
@IB_QPS_RTS = common dso_local global i32 0, align 4
@IB_QP_PATH_MIG_STATE = common dso_local global i32 0, align 4
@IB_QP_CUR_STATE = common dso_local global i32 0, align 4
@IB_QP_MIN_RNR_TIMER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"RTR2RTS attr_mask error\0A\00", align 1
@QP_CONTEXT_QPC_BYTES_120_RX_CUR_SQ_WQE_BA_H_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_120_RX_CUR_SQ_WQE_BA_H_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_124_RX_ACK_MSN_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_124_RX_ACK_MSN_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_124_IRRL_MSG_IDX_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_124_IRRL_MSG_IDX_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_128_RX_ACK_EPSN_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_128_RX_ACK_EPSN_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_128_RX_ACK_PSN_ERR_FLG_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_128_ACK_LAST_OPERATION_TYPE_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_128_ACK_LAST_OPERATION_TYPE_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_128_IRRL_PSN_VLD_FLG_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_132_IRRL_PSN_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_132_IRRL_PSN_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_132_IRRL_TAIL_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_132_IRRL_TAIL_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_136_RETRY_MSG_PSN_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_136_RETRY_MSG_PSN_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_136_RETRY_MSG_FPKT_PSN_L_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_136_RETRY_MSG_FPKT_PSN_L_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_140_RETRY_MSG_FPKT_PSN_H_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_140_RETRY_MSG_FPKT_PSN_H_S = common dso_local global i32 0, align 4
@SQ_PSN_SHIFT = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_140_RETRY_MSG_MSN_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_140_RETRY_MSG_MSN_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_140_RNR_RETRY_FLG_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_148_CHECK_FLAG_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_148_CHECK_FLAG_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_148_RETRY_COUNT_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_148_RETRY_COUNT_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_148_RNR_RETRY_COUNT_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_148_RNR_RETRY_COUNT_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_148_LSN_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_148_LSN_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_156_RETRY_COUNT_INIT_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_156_RETRY_COUNT_INIT_S = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"ack timeout value(0x%x) must bigger than 0x12.\0A\00", align 1
@QP_CONTEXT_QPC_BYTES_156_ACK_TIMEOUT_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_156_ACK_TIMEOUT_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_156_RNR_RETRY_COUNT_INIT_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_156_RNR_RETRY_COUNT_INIT_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_156_INITIATOR_DEPTH_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_156_INITIATOR_DEPTH_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_156_ACK_REQ_IND_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_156_ACK_REQ_IND_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_164_SQ_PSN_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_164_SQ_PSN_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_164_IRRL_HEAD_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_164_IRRL_HEAD_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_168_RETRY_SQ_PSN_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_168_RETRY_SQ_PSN_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_168_SGE_USE_FLA_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_168_SGE_USE_FLA_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_168_DB_TYPE_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_168_DB_TYPE_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_168_MSG_LP_IND_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_168_CSDB_LP_IND_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_168_QP_ERR_FLG_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_176_DB_CUR_INDEX_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_176_DB_CUR_INDEX_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_176_RETRY_DB_CUR_INDEX_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_176_RETRY_DB_CUR_INDEX_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_180_SQ_CUR_INDEX_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_180_SQ_CUR_INDEX_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_180_SQ_HEAD_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_180_SQ_HEAD_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_188_TX_CUR_SQ_WQE_BA_H_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_188_TX_CUR_SQ_WQE_BA_H_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_188_PKT_RETRY_FLG_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_188_TX_RETRY_CUR_INDEX_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_188_TX_RETRY_CUR_INDEX_S = common dso_local global i32 0, align 4
@IB_QPS_ERR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"not support this status migration\0A\00", align 1
@QP_CONTEXT_QPC_BYTES_144_QP_STATE_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_144_QP_STATE_S = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"hns_roce_qp_modify failed\0A\00", align 1
@RQ_DOORBELL_U32_4_RQ_HEAD_M = common dso_local global i32 0, align 4
@RQ_DOORBELL_U32_4_RQ_HEAD_S = common dso_local global i32 0, align 4
@RQ_DOORBELL_U32_8_QPN_M = common dso_local global i32 0, align 4
@RQ_DOORBELL_U32_8_QPN_S = common dso_local global i32 0, align 4
@RQ_DOORBELL_U32_8_CMD_M = common dso_local global i32 0, align 4
@RQ_DOORBELL_U32_8_CMD_S = common dso_local global i32 0, align 4
@RQ_DOORBELL_U32_8_HW_SYNC_S = common dso_local global i32 0, align 4
@DB_REG_OFFSET = common dso_local global i32 0, align 4
@IB_QP_MAX_DEST_RD_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_qp*, %struct.ib_qp_attr*, i32, i32, i32)* @hns_roce_v1_m_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_v1_m_qp(%struct.ib_qp* %0, %struct.ib_qp_attr* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_qp*, align 8
  %8 = alloca %struct.ib_qp_attr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.hns_roce_dev*, align 8
  %13 = alloca %struct.hns_roce_qp*, align 8
  %14 = alloca %struct.device*, align 8
  %15 = alloca %struct.hns_roce_qp_context*, align 8
  %16 = alloca %struct.ib_global_route*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [2 x i32], align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64*, align 8
  %27 = alloca i64*, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %7, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %28 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %29 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.hns_roce_dev* @to_hr_dev(i32 %30)
  store %struct.hns_roce_dev* %31, %struct.hns_roce_dev** %12, align 8
  %32 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %33 = call %struct.hns_roce_qp* @to_hr_qp(%struct.ib_qp* %32)
  store %struct.hns_roce_qp* %33, %struct.hns_roce_qp** %13, align 8
  %34 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %12, align 8
  %35 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %34, i32 0, i32 8
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %36, i32 0, i32 0
  store %struct.device* %37, %struct.device** %14, align 8
  %38 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %39 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %38, i32 0, i32 13
  %40 = call %struct.ib_global_route* @rdma_ah_read_grh(%struct.TYPE_26__* %39)
  store %struct.ib_global_route* %40, %struct.ib_global_route** %16, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %41 = bitcast [2 x i32]* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %41, i8 0, i64 8, i1 false)
  store i32 0, i32* %20, align 4
  store i32* null, i32** %21, align 8
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %22, align 4
  store i32* null, i32** %23, align 8
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.hns_roce_qp_context* @kzalloc(i32 256, i32 %44)
  store %struct.hns_roce_qp_context* %45, %struct.hns_roce_qp_context** %15, align 8
  %46 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %47 = icmp ne %struct.hns_roce_qp_context* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %5
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %1518

51:                                               ; preds = %5
  %52 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %12, align 8
  %53 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %12, align 8
  %54 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %53, i32 0, i32 7
  %55 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %54, i32 0, i32 0
  %56 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %13, align 8
  %57 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %56, i32 0, i32 12
  %58 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32* @hns_roce_table_find(%struct.hns_roce_dev* %52, i32* %55, i32 %59, i32* %18)
  store i32* %60, i32** %23, align 8
  %61 = load i32*, i32** %23, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %51
  %64 = load %struct.device*, %struct.device** %14, align 8
  %65 = call i32 @dev_err(%struct.device* %64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %1514

66:                                               ; preds = %51
  %67 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %12, align 8
  %68 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %12, align 8
  %69 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %68, i32 0, i32 6
  %70 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %69, i32 0, i32 0
  %71 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %13, align 8
  %72 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32* @hns_roce_table_find(%struct.hns_roce_dev* %67, i32* %70, i32 %73, i32* %17)
  store i32* %74, i32** %21, align 8
  %75 = load i32*, i32** %21, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %66
  %78 = load %struct.device*, %struct.device** %14, align 8
  %79 = call i32 @dev_err(%struct.device* %78, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %1514

80:                                               ; preds = %66
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @IB_QPS_RESET, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %258

84:                                               ; preds = %80
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @IB_QPS_INIT, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %258

88:                                               ; preds = %84
  %89 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %90 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %89, i32 0, i32 43
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @QP_CONTEXT_QPC_BYTES_4_TRANSPORT_SERVICE_TYPE_M, align 4
  %93 = load i32, i32* @QP_CONTEXT_QPC_BYTES_4_TRANSPORT_SERVICE_TYPE_S, align 4
  %94 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %13, align 8
  %95 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %94, i32 0, i32 13
  %96 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @to_hr_qp_type(i32 %97)
  %99 = call i32 @roce_set_field(i32 %91, i32 %92, i32 %93, i32 %98)
  %100 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %101 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %100, i32 0, i32 43
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @QP_CONTEXT_QPC_BYTE_4_ENABLE_FPMR_S, align 4
  %104 = call i32 @roce_set_bit(i32 %102, i32 %103, i32 0)
  %105 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %106 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %105, i32 0, i32 43
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @QP_CONTEXT_QPC_BYTE_4_RDMA_READ_ENABLE_S, align 4
  %109 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %110 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  %115 = xor i1 %114, true
  %116 = xor i1 %115, true
  %117 = zext i1 %116 to i32
  %118 = call i32 @roce_set_bit(i32 %107, i32 %108, i32 %117)
  %119 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %120 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %119, i32 0, i32 43
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @QP_CONTEXT_QPC_BYTE_4_RDMA_WRITE_ENABLE_S, align 4
  %123 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %124 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  %129 = xor i1 %128, true
  %130 = xor i1 %129, true
  %131 = zext i1 %130 to i32
  %132 = call i32 @roce_set_bit(i32 %121, i32 %122, i32 %131)
  %133 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %134 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %133, i32 0, i32 43
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @QP_CONTEXT_QPC_BYTE_4_ATOMIC_OPERATION_ENABLE_S, align 4
  %137 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %138 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @IB_ACCESS_REMOTE_ATOMIC, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  %143 = xor i1 %142, true
  %144 = xor i1 %143, true
  %145 = zext i1 %144 to i32
  %146 = call i32 @roce_set_bit(i32 %135, i32 %136, i32 %145)
  %147 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %148 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %147, i32 0, i32 43
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @QP_CONTEXT_QPC_BYTE_4_RDMAR_USE_S, align 4
  %151 = call i32 @roce_set_bit(i32 %149, i32 %150, i32 1)
  %152 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %153 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %152, i32 0, i32 43
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @QP_CONTEXT_QPC_BYTES_4_SQ_WQE_SHIFT_M, align 4
  %156 = load i32, i32* @QP_CONTEXT_QPC_BYTES_4_SQ_WQE_SHIFT_S, align 4
  %157 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %13, align 8
  %158 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %157, i32 0, i32 9
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = trunc i64 %160 to i32
  %162 = call i32 @ilog2(i32 %161)
  %163 = call i32 @roce_set_field(i32 %154, i32 %155, i32 %156, i32 %162)
  %164 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %165 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %164, i32 0, i32 43
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @QP_CONTEXT_QPC_BYTES_4_RQ_WQE_SHIFT_M, align 4
  %168 = load i32, i32* @QP_CONTEXT_QPC_BYTES_4_RQ_WQE_SHIFT_S, align 4
  %169 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %13, align 8
  %170 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %169, i32 0, i32 10
  %171 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %170, i32 0, i32 4
  %172 = load i64, i64* %171, align 8
  %173 = trunc i64 %172 to i32
  %174 = call i32 @ilog2(i32 %173)
  %175 = call i32 @roce_set_field(i32 %166, i32 %167, i32 %168, i32 %174)
  %176 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %177 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %176, i32 0, i32 43
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @QP_CONTEXT_QPC_BYTES_4_PD_M, align 4
  %180 = load i32, i32* @QP_CONTEXT_QPC_BYTES_4_PD_S, align 4
  %181 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %182 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 8
  %184 = call %struct.TYPE_24__* @to_hr_pd(i32 %183)
  %185 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @roce_set_field(i32 %178, i32 %179, i32 %180, i32 %186)
  %188 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %189 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %13, align 8
  %192 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %191, i32 0, i32 1
  store i32 %190, i32* %192, align 4
  %193 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %194 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %193, i32 0, i32 42
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @QP_CONTEXT_QPC_BYTES_8_TX_COMPLETION_M, align 4
  %197 = load i32, i32* @QP_CONTEXT_QPC_BYTES_8_TX_COMPLETION_S, align 4
  %198 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %199 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = call %struct.TYPE_25__* @to_hr_cq(i64 %200)
  %202 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @roce_set_field(i32 %195, i32 %196, i32 %197, i32 %203)
  %205 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %206 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %205, i32 0, i32 42
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @QP_CONTEXT_QPC_BYTES_8_RX_COMPLETION_M, align 4
  %209 = load i32, i32* @QP_CONTEXT_QPC_BYTES_8_RX_COMPLETION_S, align 4
  %210 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %211 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = call %struct.TYPE_25__* @to_hr_cq(i64 %212)
  %214 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @roce_set_field(i32 %207, i32 %208, i32 %209, i32 %215)
  %217 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %218 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %234

221:                                              ; preds = %88
  %222 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %223 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %222, i32 0, i32 41
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* @QP_CONTEXT_QPC_BYTES_12_SRQ_NUMBER_M, align 4
  %226 = load i32, i32* @QP_CONTEXT_QPC_BYTES_12_SRQ_NUMBER_S, align 4
  %227 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %228 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = call %struct.TYPE_23__* @to_hr_srq(i64 %229)
  %231 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @roce_set_field(i32 %224, i32 %225, i32 %226, i32 %232)
  br label %234

234:                                              ; preds = %221, %88
  %235 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %236 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %235, i32 0, i32 41
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @QP_CONTEXT_QPC_BYTES_12_P_KEY_INDEX_M, align 4
  %239 = load i32, i32* @QP_CONTEXT_QPC_BYTES_12_P_KEY_INDEX_S, align 4
  %240 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %241 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @roce_set_field(i32 %237, i32 %238, i32 %239, i32 %242)
  %244 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %245 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %13, align 8
  %248 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %247, i32 0, i32 2
  store i32 %246, i32* %248, align 8
  %249 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %250 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %249, i32 0, i32 40
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @QP_CONTEXT_QPC_BYTES_16_QP_NUM_M, align 4
  %253 = load i32, i32* @QP_CONTEXT_QPC_BYTES_16_QP_NUM_S, align 4
  %254 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %13, align 8
  %255 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = call i32 @roce_set_field(i32 %251, i32 %252, i32 %253, i32 %256)
  br label %1325

258:                                              ; preds = %84, %80
  %259 = load i32, i32* %10, align 4
  %260 = load i32, i32* @IB_QPS_INIT, align 4
  %261 = icmp eq i32 %259, %260
  br i1 %261, label %262, label %463

262:                                              ; preds = %258
  %263 = load i32, i32* %11, align 4
  %264 = load i32, i32* @IB_QPS_INIT, align 4
  %265 = icmp eq i32 %263, %264
  br i1 %265, label %266, label %463

266:                                              ; preds = %262
  %267 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %268 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %267, i32 0, i32 43
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* @QP_CONTEXT_QPC_BYTES_4_TRANSPORT_SERVICE_TYPE_M, align 4
  %271 = load i32, i32* @QP_CONTEXT_QPC_BYTES_4_TRANSPORT_SERVICE_TYPE_S, align 4
  %272 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %13, align 8
  %273 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %272, i32 0, i32 13
  %274 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @to_hr_qp_type(i32 %275)
  %277 = call i32 @roce_set_field(i32 %269, i32 %270, i32 %271, i32 %276)
  %278 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %279 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %278, i32 0, i32 43
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* @QP_CONTEXT_QPC_BYTE_4_ENABLE_FPMR_S, align 4
  %282 = call i32 @roce_set_bit(i32 %280, i32 %281, i32 0)
  %283 = load i32, i32* %9, align 4
  %284 = load i32, i32* @IB_QP_ACCESS_FLAGS, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %316

287:                                              ; preds = %266
  %288 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %289 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %288, i32 0, i32 43
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* @QP_CONTEXT_QPC_BYTE_4_RDMA_READ_ENABLE_S, align 4
  %292 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %293 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %296 = and i32 %294, %295
  %297 = icmp ne i32 %296, 0
  %298 = xor i1 %297, true
  %299 = xor i1 %298, true
  %300 = zext i1 %299 to i32
  %301 = call i32 @roce_set_bit(i32 %290, i32 %291, i32 %300)
  %302 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %303 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %302, i32 0, i32 43
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* @QP_CONTEXT_QPC_BYTE_4_RDMA_WRITE_ENABLE_S, align 4
  %306 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %307 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %310 = and i32 %308, %309
  %311 = icmp ne i32 %310, 0
  %312 = xor i1 %311, true
  %313 = xor i1 %312, true
  %314 = zext i1 %313 to i32
  %315 = call i32 @roce_set_bit(i32 %304, i32 %305, i32 %314)
  br label %345

316:                                              ; preds = %266
  %317 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %318 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %317, i32 0, i32 43
  %319 = load i32, i32* %318, align 4
  %320 = load i32, i32* @QP_CONTEXT_QPC_BYTE_4_RDMA_READ_ENABLE_S, align 4
  %321 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %13, align 8
  %322 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %325 = and i32 %323, %324
  %326 = icmp ne i32 %325, 0
  %327 = xor i1 %326, true
  %328 = xor i1 %327, true
  %329 = zext i1 %328 to i32
  %330 = call i32 @roce_set_bit(i32 %319, i32 %320, i32 %329)
  %331 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %332 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %331, i32 0, i32 43
  %333 = load i32, i32* %332, align 4
  %334 = load i32, i32* @QP_CONTEXT_QPC_BYTE_4_RDMA_WRITE_ENABLE_S, align 4
  %335 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %13, align 8
  %336 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  %338 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %339 = and i32 %337, %338
  %340 = icmp ne i32 %339, 0
  %341 = xor i1 %340, true
  %342 = xor i1 %341, true
  %343 = zext i1 %342 to i32
  %344 = call i32 @roce_set_bit(i32 %333, i32 %334, i32 %343)
  br label %345

345:                                              ; preds = %316, %287
  %346 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %347 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %346, i32 0, i32 43
  %348 = load i32, i32* %347, align 4
  %349 = load i32, i32* @QP_CONTEXT_QPC_BYTE_4_RDMAR_USE_S, align 4
  %350 = call i32 @roce_set_bit(i32 %348, i32 %349, i32 1)
  %351 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %352 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %351, i32 0, i32 43
  %353 = load i32, i32* %352, align 4
  %354 = load i32, i32* @QP_CONTEXT_QPC_BYTES_4_SQ_WQE_SHIFT_M, align 4
  %355 = load i32, i32* @QP_CONTEXT_QPC_BYTES_4_SQ_WQE_SHIFT_S, align 4
  %356 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %13, align 8
  %357 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %356, i32 0, i32 9
  %358 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %357, i32 0, i32 2
  %359 = load i64, i64* %358, align 8
  %360 = trunc i64 %359 to i32
  %361 = call i32 @ilog2(i32 %360)
  %362 = call i32 @roce_set_field(i32 %353, i32 %354, i32 %355, i32 %361)
  %363 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %364 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %363, i32 0, i32 43
  %365 = load i32, i32* %364, align 4
  %366 = load i32, i32* @QP_CONTEXT_QPC_BYTES_4_RQ_WQE_SHIFT_M, align 4
  %367 = load i32, i32* @QP_CONTEXT_QPC_BYTES_4_RQ_WQE_SHIFT_S, align 4
  %368 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %13, align 8
  %369 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %368, i32 0, i32 10
  %370 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %369, i32 0, i32 4
  %371 = load i64, i64* %370, align 8
  %372 = trunc i64 %371 to i32
  %373 = call i32 @ilog2(i32 %372)
  %374 = call i32 @roce_set_field(i32 %365, i32 %366, i32 %367, i32 %373)
  %375 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %376 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %375, i32 0, i32 43
  %377 = load i32, i32* %376, align 4
  %378 = load i32, i32* @QP_CONTEXT_QPC_BYTES_4_PD_M, align 4
  %379 = load i32, i32* @QP_CONTEXT_QPC_BYTES_4_PD_S, align 4
  %380 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %381 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %380, i32 0, i32 4
  %382 = load i32, i32* %381, align 8
  %383 = call %struct.TYPE_24__* @to_hr_pd(i32 %382)
  %384 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 4
  %386 = call i32 @roce_set_field(i32 %377, i32 %378, i32 %379, i32 %385)
  %387 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %388 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %387, i32 0, i32 42
  %389 = load i32, i32* %388, align 8
  %390 = load i32, i32* @QP_CONTEXT_QPC_BYTES_8_TX_COMPLETION_M, align 4
  %391 = load i32, i32* @QP_CONTEXT_QPC_BYTES_8_TX_COMPLETION_S, align 4
  %392 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %393 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %392, i32 0, i32 0
  %394 = load i64, i64* %393, align 8
  %395 = call %struct.TYPE_25__* @to_hr_cq(i64 %394)
  %396 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 4
  %398 = call i32 @roce_set_field(i32 %389, i32 %390, i32 %391, i32 %397)
  %399 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %400 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %399, i32 0, i32 42
  %401 = load i32, i32* %400, align 8
  %402 = load i32, i32* @QP_CONTEXT_QPC_BYTES_8_RX_COMPLETION_M, align 4
  %403 = load i32, i32* @QP_CONTEXT_QPC_BYTES_8_RX_COMPLETION_S, align 4
  %404 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %405 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %404, i32 0, i32 1
  %406 = load i64, i64* %405, align 8
  %407 = call %struct.TYPE_25__* @to_hr_cq(i64 %406)
  %408 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 4
  %410 = call i32 @roce_set_field(i32 %401, i32 %402, i32 %403, i32 %409)
  %411 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %412 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %411, i32 0, i32 2
  %413 = load i64, i64* %412, align 8
  %414 = icmp ne i64 %413, 0
  br i1 %414, label %415, label %428

415:                                              ; preds = %345
  %416 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %417 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %416, i32 0, i32 41
  %418 = load i32, i32* %417, align 4
  %419 = load i32, i32* @QP_CONTEXT_QPC_BYTES_12_SRQ_NUMBER_M, align 4
  %420 = load i32, i32* @QP_CONTEXT_QPC_BYTES_12_SRQ_NUMBER_S, align 4
  %421 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %422 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %421, i32 0, i32 2
  %423 = load i64, i64* %422, align 8
  %424 = call %struct.TYPE_23__* @to_hr_srq(i64 %423)
  %425 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 4
  %427 = call i32 @roce_set_field(i32 %418, i32 %419, i32 %420, i32 %426)
  br label %428

428:                                              ; preds = %415, %345
  %429 = load i32, i32* %9, align 4
  %430 = load i32, i32* @IB_QP_PKEY_INDEX, align 4
  %431 = and i32 %429, %430
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %433, label %443

433:                                              ; preds = %428
  %434 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %435 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %434, i32 0, i32 41
  %436 = load i32, i32* %435, align 4
  %437 = load i32, i32* @QP_CONTEXT_QPC_BYTES_12_P_KEY_INDEX_M, align 4
  %438 = load i32, i32* @QP_CONTEXT_QPC_BYTES_12_P_KEY_INDEX_S, align 4
  %439 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %440 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %439, i32 0, i32 1
  %441 = load i32, i32* %440, align 4
  %442 = call i32 @roce_set_field(i32 %436, i32 %437, i32 %438, i32 %441)
  br label %453

443:                                              ; preds = %428
  %444 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %445 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %444, i32 0, i32 41
  %446 = load i32, i32* %445, align 4
  %447 = load i32, i32* @QP_CONTEXT_QPC_BYTES_12_P_KEY_INDEX_M, align 4
  %448 = load i32, i32* @QP_CONTEXT_QPC_BYTES_12_P_KEY_INDEX_S, align 4
  %449 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %13, align 8
  %450 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %449, i32 0, i32 2
  %451 = load i32, i32* %450, align 8
  %452 = call i32 @roce_set_field(i32 %446, i32 %447, i32 %448, i32 %451)
  br label %453

453:                                              ; preds = %443, %433
  %454 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %455 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %454, i32 0, i32 40
  %456 = load i32, i32* %455, align 8
  %457 = load i32, i32* @QP_CONTEXT_QPC_BYTES_16_QP_NUM_M, align 4
  %458 = load i32, i32* @QP_CONTEXT_QPC_BYTES_16_QP_NUM_S, align 4
  %459 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %13, align 8
  %460 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 8
  %462 = call i32 @roce_set_field(i32 %456, i32 %457, i32 %458, i32 %461)
  br label %1324

463:                                              ; preds = %262, %258
  %464 = load i32, i32* %10, align 4
  %465 = load i32, i32* @IB_QPS_INIT, align 4
  %466 = icmp eq i32 %464, %465
  br i1 %466, label %467, label %884

467:                                              ; preds = %463
  %468 = load i32, i32* %11, align 4
  %469 = load i32, i32* @IB_QPS_RTR, align 4
  %470 = icmp eq i32 %468, %469
  br i1 %470, label %471, label %884

471:                                              ; preds = %467
  %472 = load i32, i32* %9, align 4
  %473 = load i32, i32* @IB_QP_ALT_PATH, align 4
  %474 = and i32 %472, %473
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %491, label %476

476:                                              ; preds = %471
  %477 = load i32, i32* %9, align 4
  %478 = load i32, i32* @IB_QP_ACCESS_FLAGS, align 4
  %479 = and i32 %477, %478
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %491, label %481

481:                                              ; preds = %476
  %482 = load i32, i32* %9, align 4
  %483 = load i32, i32* @IB_QP_PKEY_INDEX, align 4
  %484 = and i32 %482, %483
  %485 = icmp ne i32 %484, 0
  br i1 %485, label %491, label %486

486:                                              ; preds = %481
  %487 = load i32, i32* %9, align 4
  %488 = load i32, i32* @IB_QP_QKEY, align 4
  %489 = and i32 %487, %488
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %491, label %494

491:                                              ; preds = %486, %481, %476, %471
  %492 = load %struct.device*, %struct.device** %14, align 8
  %493 = call i32 @dev_err(%struct.device* %492, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %1514

494:                                              ; preds = %486
  %495 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %496 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %495, i32 0, i32 13
  %497 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %496, i32 0, i32 0
  %498 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %497, i32 0, i32 0
  %499 = load i64, i64* %498, align 8
  %500 = inttoptr i64 %499 to i64*
  store i64* %500, i64** %26, align 8
  %501 = load i32, i32* %18, align 4
  %502 = call i8* @cpu_to_le32(i32 %501)
  %503 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %504 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %503, i32 0, i32 39
  store i8* %502, i8** %504, align 8
  %505 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %506 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %505, i32 0, i32 38
  %507 = load i32, i32* %506, align 8
  %508 = load i32, i32* @QP_CONTEXT_QPC_BYTES_24_SQ_RQ_BT_H_M, align 4
  %509 = load i32, i32* @QP_CONTEXT_QPC_BYTES_24_SQ_RQ_BT_H_S, align 4
  %510 = load i32, i32* %18, align 4
  %511 = ashr i32 %510, 32
  %512 = call i32 @roce_set_field(i32 %507, i32 %508, i32 %509, i32 %511)
  %513 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %514 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %513, i32 0, i32 38
  %515 = load i32, i32* %514, align 8
  %516 = load i32, i32* @QP_CONTEXT_QPC_BYTE_24_REMOTE_ENABLE_E2E_CREDITS_S, align 4
  %517 = call i32 @roce_set_bit(i32 %515, i32 %516, i32 1)
  %518 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %519 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %518, i32 0, i32 38
  %520 = load i32, i32* %519, align 8
  %521 = load i32, i32* @QP_CONTEXT_QPC_BYTES_24_MINIMUM_RNR_NAK_TIMER_M, align 4
  %522 = load i32, i32* @QP_CONTEXT_QPC_BYTES_24_MINIMUM_RNR_NAK_TIMER_S, align 4
  %523 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %524 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %523, i32 0, i32 2
  %525 = load i32, i32* %524, align 8
  %526 = call i32 @roce_set_field(i32 %520, i32 %521, i32 %522, i32 %525)
  %527 = load i32, i32* %17, align 4
  %528 = call i8* @cpu_to_le32(i32 %527)
  %529 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %530 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %529, i32 0, i32 37
  store i8* %528, i8** %530, align 8
  %531 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %532 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %531, i32 0, i32 36
  %533 = load i32, i32* %532, align 8
  %534 = load i32, i32* @QP_CONTEXT_QPC_BYTES_32_IRRL_BA_H_M, align 4
  %535 = load i32, i32* @QP_CONTEXT_QPC_BYTES_32_IRRL_BA_H_S, align 4
  %536 = load i32, i32* %17, align 4
  %537 = ashr i32 %536, 32
  %538 = load i32, i32* @QP_CONTEXT_QPC_BYTES_32_IRRL_BA_H_M, align 4
  %539 = and i32 %537, %538
  %540 = call i32 @roce_set_field(i32 %533, i32 %534, i32 %535, i32 %539)
  %541 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %542 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %541, i32 0, i32 36
  %543 = load i32, i32* %542, align 8
  %544 = load i32, i32* @QP_CONTEXT_QPC_BYTES_32_MIG_STATE_M, align 4
  %545 = load i32, i32* @QP_CONTEXT_QPC_BYTES_32_MIG_STATE_S, align 4
  %546 = call i32 @roce_set_field(i32 %543, i32 %544, i32 %545, i32 0)
  %547 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %548 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %547, i32 0, i32 36
  %549 = load i32, i32* %548, align 8
  %550 = load i32, i32* @QP_CONTEXT_QPC_BYTE_32_LOCAL_ENABLE_E2E_CREDITS_S, align 4
  %551 = call i32 @roce_set_bit(i32 %549, i32 %550, i32 1)
  %552 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %553 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %552, i32 0, i32 36
  %554 = load i32, i32* %553, align 8
  %555 = load i32, i32* @QP_CONTEXT_QPC_BYTE_32_SIGNALING_TYPE_S, align 4
  %556 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %13, align 8
  %557 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %556, i32 0, i32 3
  %558 = load i32, i32* %557, align 4
  %559 = call i32 @roce_set_bit(i32 %554, i32 %555, i32 %558)
  %560 = load i32, i32* %9, align 4
  %561 = load i32, i32* @IB_QP_PORT, align 4
  %562 = and i32 %560, %561
  %563 = icmp ne i32 %562, 0
  br i1 %563, label %564, label %569

564:                                              ; preds = %494
  %565 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %566 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %565, i32 0, i32 3
  %567 = load i32, i32* %566, align 4
  %568 = sub nsw i32 %567, 1
  br label %573

569:                                              ; preds = %494
  %570 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %13, align 8
  %571 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %570, i32 0, i32 4
  %572 = load i32, i32* %571, align 8
  br label %573

573:                                              ; preds = %569, %564
  %574 = phi i32 [ %568, %564 ], [ %572, %569 ]
  store i32 %574, i32* %24, align 4
  %575 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %12, align 8
  %576 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %575, i32 0, i32 5
  %577 = load i64*, i64** %576, align 8
  %578 = load i32, i32* %24, align 4
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds i64, i64* %577, i64 %579
  %581 = load i64, i64* %580, align 8
  %582 = inttoptr i64 %581 to i64*
  store i64* %582, i64** %27, align 8
  %583 = load i64*, i64** %26, align 8
  %584 = load i64*, i64** %27, align 8
  %585 = call i64 @ether_addr_equal_unaligned(i64* %583, i64* %584)
  %586 = icmp ne i64 %585, 0
  br i1 %586, label %592, label %587

587:                                              ; preds = %573
  %588 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %12, align 8
  %589 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %588, i32 0, i32 0
  %590 = load i32, i32* %589, align 8
  %591 = icmp eq i32 %590, 1
  br i1 %591, label %592, label %598

592:                                              ; preds = %587, %573
  %593 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %594 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %593, i32 0, i32 36
  %595 = load i32, i32* %594, align 8
  %596 = load i32, i32* @QP_CONTEXT_QPC_BYTE_32_LOOPBACK_INDICATOR_S, align 4
  %597 = call i32 @roce_set_bit(i32 %595, i32 %596, i32 1)
  br label %598

598:                                              ; preds = %592, %587
  %599 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %600 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %599, i32 0, i32 36
  %601 = load i32, i32* %600, align 8
  %602 = load i32, i32* @QP_CONTEXT_QPC_BYTE_32_GLOBAL_HEADER_S, align 4
  %603 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %604 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %603, i32 0, i32 13
  %605 = call i32 @rdma_ah_get_ah_flags(%struct.TYPE_26__* %604)
  %606 = call i32 @roce_set_bit(i32 %601, i32 %602, i32 %605)
  %607 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %608 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %607, i32 0, i32 36
  %609 = load i32, i32* %608, align 8
  %610 = load i32, i32* @QP_CONTEXT_QPC_BYTES_32_RESPONDER_RESOURCES_M, align 4
  %611 = load i32, i32* @QP_CONTEXT_QPC_BYTES_32_RESPONDER_RESOURCES_S, align 4
  %612 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %613 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %612, i32 0, i32 11
  %614 = load i64, i64* %613, align 8
  %615 = trunc i64 %614 to i32
  %616 = call i32 @ilog2(i32 %615)
  %617 = call i32 @roce_set_field(i32 %609, i32 %610, i32 %611, i32 %616)
  %618 = load i32, i32* %9, align 4
  %619 = load i32, i32* @IB_QP_DEST_QPN, align 4
  %620 = and i32 %618, %619
  %621 = icmp ne i32 %620, 0
  br i1 %621, label %622, label %632

622:                                              ; preds = %598
  %623 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %624 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %623, i32 0, i32 35
  %625 = load i32, i32* %624, align 4
  %626 = load i32, i32* @QP_CONTEXT_QPC_BYTES_36_DEST_QP_M, align 4
  %627 = load i32, i32* @QP_CONTEXT_QPC_BYTES_36_DEST_QP_S, align 4
  %628 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %629 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %628, i32 0, i32 4
  %630 = load i32, i32* %629, align 8
  %631 = call i32 @roce_set_field(i32 %625, i32 %626, i32 %627, i32 %630)
  br label %632

632:                                              ; preds = %622, %598
  %633 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %634 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %633, i32 0, i32 13
  %635 = call i64 @rdma_ah_get_port_num(%struct.TYPE_26__* %634)
  store i64 %635, i64* %25, align 8
  %636 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %637 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %636, i32 0, i32 35
  %638 = load i32, i32* %637, align 4
  %639 = load i32, i32* @QP_CONTEXT_QPC_BYTES_36_SGID_INDEX_M, align 4
  %640 = load i32, i32* @QP_CONTEXT_QPC_BYTES_36_SGID_INDEX_S, align 4
  %641 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %12, align 8
  %642 = load i64, i64* %25, align 8
  %643 = sub nsw i64 %642, 1
  %644 = load %struct.ib_global_route*, %struct.ib_global_route** %16, align 8
  %645 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %644, i32 0, i32 4
  %646 = load i32, i32* %645, align 8
  %647 = call i32 @hns_get_gid_index(%struct.hns_roce_dev* %641, i64 %643, i32 %646)
  %648 = call i32 @roce_set_field(i32 %638, i32 %639, i32 %640, i32 %647)
  %649 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %650 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %649, i32 0, i32 32
  %651 = load i64*, i64** %26, align 8
  %652 = call i32 @memcpy(i32* %650, i64* %651, i32 4)
  %653 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %654 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %653, i32 0, i32 31
  %655 = load i32, i32* %654, align 4
  %656 = load i32, i32* @QP_CONTEXT_QPC_BYTES_44_DMAC_H_M, align 4
  %657 = load i32, i32* @QP_CONTEXT_QPC_BYTES_44_DMAC_H_S, align 4
  %658 = load i64*, i64** %26, align 8
  %659 = getelementptr inbounds i64, i64* %658, i64 4
  %660 = bitcast i64* %659 to i32*
  %661 = load i32, i32* %660, align 4
  %662 = call i32 @roce_set_field(i32 %655, i32 %656, i32 %657, i32 %661)
  %663 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %664 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %663, i32 0, i32 31
  %665 = load i32, i32* %664, align 4
  %666 = load i32, i32* @QP_CONTEXT_QPC_BYTES_44_MAXIMUM_STATIC_RATE_M, align 4
  %667 = load i32, i32* @QP_CONTEXT_QPC_BYTES_44_MAXIMUM_STATIC_RATE_S, align 4
  %668 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %669 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %668, i32 0, i32 13
  %670 = call i32 @rdma_ah_get_static_rate(%struct.TYPE_26__* %669)
  %671 = call i32 @roce_set_field(i32 %665, i32 %666, i32 %667, i32 %670)
  %672 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %673 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %672, i32 0, i32 31
  %674 = load i32, i32* %673, align 4
  %675 = load i32, i32* @QP_CONTEXT_QPC_BYTES_44_HOPLMT_M, align 4
  %676 = load i32, i32* @QP_CONTEXT_QPC_BYTES_44_HOPLMT_S, align 4
  %677 = load %struct.ib_global_route*, %struct.ib_global_route** %16, align 8
  %678 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %677, i32 0, i32 0
  %679 = load i32, i32* %678, align 8
  %680 = call i32 @roce_set_field(i32 %674, i32 %675, i32 %676, i32 %679)
  %681 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %682 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %681, i32 0, i32 34
  %683 = load i32, i32* %682, align 8
  %684 = load i32, i32* @QP_CONTEXT_QPC_BYTES_48_FLOWLABEL_M, align 4
  %685 = load i32, i32* @QP_CONTEXT_QPC_BYTES_48_FLOWLABEL_S, align 4
  %686 = load %struct.ib_global_route*, %struct.ib_global_route** %16, align 8
  %687 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %686, i32 0, i32 1
  %688 = load i32, i32* %687, align 4
  %689 = call i32 @roce_set_field(i32 %683, i32 %684, i32 %685, i32 %688)
  %690 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %691 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %690, i32 0, i32 34
  %692 = load i32, i32* %691, align 8
  %693 = load i32, i32* @QP_CONTEXT_QPC_BYTES_48_TCLASS_M, align 4
  %694 = load i32, i32* @QP_CONTEXT_QPC_BYTES_48_TCLASS_S, align 4
  %695 = load %struct.ib_global_route*, %struct.ib_global_route** %16, align 8
  %696 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %695, i32 0, i32 2
  %697 = load i32, i32* %696, align 8
  %698 = call i32 @roce_set_field(i32 %692, i32 %693, i32 %694, i32 %697)
  %699 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %700 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %699, i32 0, i32 34
  %701 = load i32, i32* %700, align 8
  %702 = load i32, i32* @QP_CONTEXT_QPC_BYTES_48_MTU_M, align 4
  %703 = load i32, i32* @QP_CONTEXT_QPC_BYTES_48_MTU_S, align 4
  %704 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %705 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %704, i32 0, i32 5
  %706 = load i32, i32* %705, align 4
  %707 = call i32 @roce_set_field(i32 %701, i32 %702, i32 %703, i32 %706)
  %708 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %709 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %708, i32 0, i32 33
  %710 = load i32*, i32** %709, align 8
  %711 = load %struct.ib_global_route*, %struct.ib_global_route** %16, align 8
  %712 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %711, i32 0, i32 3
  %713 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %712, i32 0, i32 0
  %714 = load i64*, i64** %713, align 8
  %715 = call i32 @memcpy(i32* %710, i64* %714, i32 8)
  %716 = load %struct.device*, %struct.device** %14, align 8
  %717 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %718 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %717, i32 0, i32 32
  %719 = load i32, i32* %718, align 8
  %720 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %721 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %720, i32 0, i32 31
  %722 = load i32, i32* %721, align 4
  %723 = load i32, i32* @QP_CONTEXT_QPC_BYTES_44_DMAC_H_M, align 4
  %724 = load i32, i32* @QP_CONTEXT_QPC_BYTES_44_DMAC_H_S, align 4
  %725 = call i32 @roce_get_field(i32 %722, i32 %723, i32 %724)
  %726 = call i32 @dev_dbg(%struct.device* %716, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %719, i32 %725)
  %727 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %728 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %727, i32 0, i32 30
  %729 = load i32, i32* %728, align 8
  %730 = load i32, i32* @QP_CONTEXT_QPC_BYTES_68_RQ_HEAD_M, align 4
  %731 = load i32, i32* @QP_CONTEXT_QPC_BYTES_68_RQ_HEAD_S, align 4
  %732 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %13, align 8
  %733 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %732, i32 0, i32 10
  %734 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %733, i32 0, i32 0
  %735 = load i32, i32* %734, align 8
  %736 = call i32 @roce_set_field(i32 %729, i32 %730, i32 %731, i32 %735)
  %737 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %738 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %737, i32 0, i32 30
  %739 = load i32, i32* %738, align 8
  %740 = load i32, i32* @QP_CONTEXT_QPC_BYTES_68_RQ_CUR_INDEX_M, align 4
  %741 = load i32, i32* @QP_CONTEXT_QPC_BYTES_68_RQ_CUR_INDEX_S, align 4
  %742 = call i32 @roce_set_field(i32 %739, i32 %740, i32 %741, i32 0)
  %743 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %13, align 8
  %744 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %743, i32 0, i32 10
  %745 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %744, i32 0, i32 3
  %746 = load i64, i64* %745, align 8
  %747 = trunc i64 %746 to i32
  %748 = load i32, i32* @PAGE_SIZE, align 4
  %749 = sdiv i32 %747, %748
  store i32 %749, i32* %20, align 4
  %750 = load i32*, i32** %23, align 8
  %751 = load i32, i32* %20, align 4
  %752 = sext i32 %751 to i64
  %753 = getelementptr inbounds i32, i32* %750, i64 %752
  %754 = load i32, i32* %753, align 4
  %755 = call i8* @cpu_to_le32(i32 %754)
  %756 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %757 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %756, i32 0, i32 29
  store i8* %755, i8** %757, align 8
  %758 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %759 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %758, i32 0, i32 28
  %760 = load i32, i32* %759, align 8
  %761 = load i32, i32* @QP_CONTEXT_QPC_BYTES_76_CUR_RQ_WQE_BA_H_M, align 4
  %762 = load i32, i32* @QP_CONTEXT_QPC_BYTES_76_CUR_RQ_WQE_BA_H_S, align 4
  %763 = load i32*, i32** %23, align 8
  %764 = load i32, i32* %20, align 4
  %765 = sext i32 %764 to i64
  %766 = getelementptr inbounds i32, i32* %763, i64 %765
  %767 = load i32, i32* %766, align 4
  %768 = ashr i32 %767, 32
  %769 = call i32 @roce_set_field(i32 %760, i32 %761, i32 %762, i32 %768)
  %770 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %771 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %770, i32 0, i32 28
  %772 = load i32, i32* %771, align 8
  %773 = load i32, i32* @QP_CONTEXT_QPC_BYTES_76_RX_REQ_MSN_M, align 4
  %774 = load i32, i32* @QP_CONTEXT_QPC_BYTES_76_RX_REQ_MSN_S, align 4
  %775 = call i32 @roce_set_field(i32 %772, i32 %773, i32 %774, i32 0)
  %776 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %777 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %776, i32 0, i32 27
  store i64 0, i64* %777, align 8
  %778 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %779 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %778, i32 0, i32 26
  %780 = load i32, i32* %779, align 4
  %781 = load i32, i32* @QP_CONTEXT_QPC_BYTES_84_LAST_ACK_PSN_M, align 4
  %782 = load i32, i32* @QP_CONTEXT_QPC_BYTES_84_LAST_ACK_PSN_S, align 4
  %783 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %784 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %783, i32 0, i32 6
  %785 = load i32, i32* %784, align 8
  %786 = sub nsw i32 %785, 1
  %787 = call i32 @roce_set_field(i32 %780, i32 %781, i32 %782, i32 %786)
  %788 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %789 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %788, i32 0, i32 26
  %790 = load i32, i32* %789, align 4
  %791 = load i32, i32* @QP_CONTEXT_QPC_BYTES_84_TRRL_HEAD_M, align 4
  %792 = load i32, i32* @QP_CONTEXT_QPC_BYTES_84_TRRL_HEAD_S, align 4
  %793 = call i32 @roce_set_field(i32 %790, i32 %791, i32 %792, i32 0)
  %794 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %795 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %794, i32 0, i32 25
  %796 = load i32, i32* %795, align 8
  %797 = load i32, i32* @QP_CONTEXT_QPC_BYTES_88_RX_REQ_EPSN_M, align 4
  %798 = load i32, i32* @QP_CONTEXT_QPC_BYTES_88_RX_REQ_EPSN_S, align 4
  %799 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %800 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %799, i32 0, i32 6
  %801 = load i32, i32* %800, align 8
  %802 = call i32 @roce_set_field(i32 %796, i32 %797, i32 %798, i32 %801)
  %803 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %804 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %803, i32 0, i32 25
  %805 = load i32, i32* %804, align 8
  %806 = load i32, i32* @QP_CONTEXT_QPC_BYTES_88_RX_REQ_PSN_ERR_FLAG_S, align 4
  %807 = call i32 @roce_set_bit(i32 %805, i32 %806, i32 0)
  %808 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %809 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %808, i32 0, i32 25
  %810 = load i32, i32* %809, align 8
  %811 = load i32, i32* @QP_CONTEXT_QPC_BYTES_88_RX_LAST_OPCODE_FLG_S, align 4
  %812 = call i32 @roce_set_bit(i32 %810, i32 %811, i32 0)
  %813 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %814 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %813, i32 0, i32 25
  %815 = load i32, i32* %814, align 8
  %816 = load i32, i32* @QP_CONTEXT_QPC_BYTES_88_RQ_REQ_LAST_OPERATION_TYPE_M, align 4
  %817 = load i32, i32* @QP_CONTEXT_QPC_BYTES_88_RQ_REQ_LAST_OPERATION_TYPE_S, align 4
  %818 = call i32 @roce_set_field(i32 %815, i32 %816, i32 %817, i32 0)
  %819 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %820 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %819, i32 0, i32 25
  %821 = load i32, i32* %820, align 8
  %822 = load i32, i32* @QP_CONTEXT_QPC_BYTES_88_RQ_REQ_RDMA_WR_FLAG_M, align 4
  %823 = load i32, i32* @QP_CONTEXT_QPC_BYTES_88_RQ_REQ_RDMA_WR_FLAG_S, align 4
  %824 = call i32 @roce_set_field(i32 %821, i32 %822, i32 %823, i32 0)
  %825 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %826 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %825, i32 0, i32 24
  store i64 0, i64* %826, align 8
  %827 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %828 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %827, i32 0, i32 23
  store i64 0, i64* %828, align 8
  %829 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %830 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %829, i32 0, i32 22
  store i64 0, i64* %830, align 8
  %831 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %832 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %831, i32 0, i32 21
  store i64 0, i64* %832, align 8
  %833 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %834 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %833, i32 0, i32 20
  %835 = load i32, i32* %834, align 4
  %836 = load i32, i32* @QP_CONTEXT_QPC_BYTES_108_TRRL_SDB_PSN_M, align 4
  %837 = load i32, i32* @QP_CONTEXT_QPC_BYTES_108_TRRL_SDB_PSN_S, align 4
  %838 = call i32 @roce_set_field(i32 %835, i32 %836, i32 %837, i32 0)
  %839 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %840 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %839, i32 0, i32 20
  %841 = load i32, i32* %840, align 4
  %842 = load i32, i32* @QP_CONTEXT_QPC_BYTES_108_TRRL_SDB_PSN_FLG_S, align 4
  %843 = call i32 @roce_set_bit(i32 %841, i32 %842, i32 0)
  %844 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %845 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %844, i32 0, i32 20
  %846 = load i32, i32* %845, align 4
  %847 = load i32, i32* @QP_CONTEXT_QPC_BYTES_108_TRRL_TDB_PSN_FLG_S, align 4
  %848 = call i32 @roce_set_bit(i32 %846, i32 %847, i32 0)
  %849 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %850 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %849, i32 0, i32 19
  %851 = load i32, i32* %850, align 8
  %852 = load i32, i32* @QP_CONTEXT_QPC_BYTES_112_TRRL_TDB_PSN_M, align 4
  %853 = load i32, i32* @QP_CONTEXT_QPC_BYTES_112_TRRL_TDB_PSN_S, align 4
  %854 = call i32 @roce_set_field(i32 %851, i32 %852, i32 %853, i32 0)
  %855 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %856 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %855, i32 0, i32 19
  %857 = load i32, i32* %856, align 8
  %858 = load i32, i32* @QP_CONTEXT_QPC_BYTES_112_TRRL_TAIL_M, align 4
  %859 = load i32, i32* @QP_CONTEXT_QPC_BYTES_112_TRRL_TAIL_S, align 4
  %860 = call i32 @roce_set_field(i32 %857, i32 %858, i32 %859, i32 0)
  %861 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %862 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %861, i32 0, i32 9
  %863 = load i32, i32* %862, align 8
  %864 = load i32, i32* @QP_CONTEXT_QPC_BYTES_156_PORT_NUM_M, align 4
  %865 = load i32, i32* @QP_CONTEXT_QPC_BYTES_156_PORT_NUM_S, align 4
  %866 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %13, align 8
  %867 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %866, i32 0, i32 5
  %868 = load i32, i32* %867, align 4
  %869 = call i32 @roce_set_field(i32 %863, i32 %864, i32 %865, i32 %868)
  %870 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %871 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %870, i32 0, i32 9
  %872 = load i32, i32* %871, align 8
  %873 = load i32, i32* @QP_CONTEXT_QPC_BYTES_156_SL_M, align 4
  %874 = load i32, i32* @QP_CONTEXT_QPC_BYTES_156_SL_S, align 4
  %875 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %876 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %875, i32 0, i32 13
  %877 = call i32 @rdma_ah_get_sl(%struct.TYPE_26__* %876)
  %878 = call i32 @roce_set_field(i32 %872, i32 %873, i32 %874, i32 %877)
  %879 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %880 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %879, i32 0, i32 13
  %881 = call i32 @rdma_ah_get_sl(%struct.TYPE_26__* %880)
  %882 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %13, align 8
  %883 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %882, i32 0, i32 6
  store i32 %881, i32* %883, align 8
  br label %1323

884:                                              ; preds = %467, %463
  %885 = load i32, i32* %10, align 4
  %886 = load i32, i32* @IB_QPS_RTR, align 4
  %887 = icmp eq i32 %885, %886
  br i1 %887, label %888, label %1254

888:                                              ; preds = %884
  %889 = load i32, i32* %11, align 4
  %890 = load i32, i32* @IB_QPS_RTS, align 4
  %891 = icmp eq i32 %889, %890
  br i1 %891, label %892, label %1254

892:                                              ; preds = %888
  %893 = load i32, i32* %9, align 4
  %894 = load i32, i32* @IB_QP_ALT_PATH, align 4
  %895 = and i32 %893, %894
  %896 = icmp ne i32 %895, 0
  br i1 %896, label %922, label %897

897:                                              ; preds = %892
  %898 = load i32, i32* %9, align 4
  %899 = load i32, i32* @IB_QP_ACCESS_FLAGS, align 4
  %900 = and i32 %898, %899
  %901 = icmp ne i32 %900, 0
  br i1 %901, label %922, label %902

902:                                              ; preds = %897
  %903 = load i32, i32* %9, align 4
  %904 = load i32, i32* @IB_QP_QKEY, align 4
  %905 = and i32 %903, %904
  %906 = icmp ne i32 %905, 0
  br i1 %906, label %922, label %907

907:                                              ; preds = %902
  %908 = load i32, i32* %9, align 4
  %909 = load i32, i32* @IB_QP_PATH_MIG_STATE, align 4
  %910 = and i32 %908, %909
  %911 = icmp ne i32 %910, 0
  br i1 %911, label %922, label %912

912:                                              ; preds = %907
  %913 = load i32, i32* %9, align 4
  %914 = load i32, i32* @IB_QP_CUR_STATE, align 4
  %915 = and i32 %913, %914
  %916 = icmp ne i32 %915, 0
  br i1 %916, label %922, label %917

917:                                              ; preds = %912
  %918 = load i32, i32* %9, align 4
  %919 = load i32, i32* @IB_QP_MIN_RNR_TIMER, align 4
  %920 = and i32 %918, %919
  %921 = icmp ne i32 %920, 0
  br i1 %921, label %922, label %925

922:                                              ; preds = %917, %912, %907, %902, %897, %892
  %923 = load %struct.device*, %struct.device** %14, align 8
  %924 = call i32 @dev_err(%struct.device* %923, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %1514

925:                                              ; preds = %917
  %926 = load i32*, i32** %23, align 8
  %927 = getelementptr inbounds i32, i32* %926, i64 0
  %928 = load i32, i32* %927, align 4
  %929 = call i8* @cpu_to_le32(i32 %928)
  %930 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %931 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %930, i32 0, i32 18
  store i8* %929, i8** %931, align 8
  %932 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %933 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %932, i32 0, i32 17
  %934 = load i32, i32* %933, align 8
  %935 = load i32, i32* @QP_CONTEXT_QPC_BYTES_120_RX_CUR_SQ_WQE_BA_H_M, align 4
  %936 = load i32, i32* @QP_CONTEXT_QPC_BYTES_120_RX_CUR_SQ_WQE_BA_H_S, align 4
  %937 = load i32*, i32** %23, align 8
  %938 = getelementptr inbounds i32, i32* %937, i64 0
  %939 = load i32, i32* %938, align 4
  %940 = ashr i32 %939, 32
  %941 = call i32 @roce_set_field(i32 %934, i32 %935, i32 %936, i32 %940)
  %942 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %943 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %942, i32 0, i32 16
  %944 = load i32, i32* %943, align 4
  %945 = load i32, i32* @QP_CONTEXT_QPC_BYTES_124_RX_ACK_MSN_M, align 4
  %946 = load i32, i32* @QP_CONTEXT_QPC_BYTES_124_RX_ACK_MSN_S, align 4
  %947 = call i32 @roce_set_field(i32 %944, i32 %945, i32 %946, i32 0)
  %948 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %949 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %948, i32 0, i32 16
  %950 = load i32, i32* %949, align 4
  %951 = load i32, i32* @QP_CONTEXT_QPC_BYTES_124_IRRL_MSG_IDX_M, align 4
  %952 = load i32, i32* @QP_CONTEXT_QPC_BYTES_124_IRRL_MSG_IDX_S, align 4
  %953 = call i32 @roce_set_field(i32 %950, i32 %951, i32 %952, i32 0)
  %954 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %955 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %954, i32 0, i32 15
  %956 = load i32, i32* %955, align 8
  %957 = load i32, i32* @QP_CONTEXT_QPC_BYTES_128_RX_ACK_EPSN_M, align 4
  %958 = load i32, i32* @QP_CONTEXT_QPC_BYTES_128_RX_ACK_EPSN_S, align 4
  %959 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %960 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %959, i32 0, i32 7
  %961 = load i32, i32* %960, align 4
  %962 = call i32 @roce_set_field(i32 %956, i32 %957, i32 %958, i32 %961)
  %963 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %964 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %963, i32 0, i32 15
  %965 = load i32, i32* %964, align 8
  %966 = load i32, i32* @QP_CONTEXT_QPC_BYTES_128_RX_ACK_PSN_ERR_FLG_S, align 4
  %967 = call i32 @roce_set_bit(i32 %965, i32 %966, i32 0)
  %968 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %969 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %968, i32 0, i32 15
  %970 = load i32, i32* %969, align 8
  %971 = load i32, i32* @QP_CONTEXT_QPC_BYTES_128_ACK_LAST_OPERATION_TYPE_M, align 4
  %972 = load i32, i32* @QP_CONTEXT_QPC_BYTES_128_ACK_LAST_OPERATION_TYPE_S, align 4
  %973 = call i32 @roce_set_field(i32 %970, i32 %971, i32 %972, i32 0)
  %974 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %975 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %974, i32 0, i32 15
  %976 = load i32, i32* %975, align 8
  %977 = load i32, i32* @QP_CONTEXT_QPC_BYTES_128_IRRL_PSN_VLD_FLG_S, align 4
  %978 = call i32 @roce_set_bit(i32 %976, i32 %977, i32 0)
  %979 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %980 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %979, i32 0, i32 14
  %981 = load i32, i32* %980, align 4
  %982 = load i32, i32* @QP_CONTEXT_QPC_BYTES_132_IRRL_PSN_M, align 4
  %983 = load i32, i32* @QP_CONTEXT_QPC_BYTES_132_IRRL_PSN_S, align 4
  %984 = call i32 @roce_set_field(i32 %981, i32 %982, i32 %983, i32 0)
  %985 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %986 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %985, i32 0, i32 14
  %987 = load i32, i32* %986, align 4
  %988 = load i32, i32* @QP_CONTEXT_QPC_BYTES_132_IRRL_TAIL_M, align 4
  %989 = load i32, i32* @QP_CONTEXT_QPC_BYTES_132_IRRL_TAIL_S, align 4
  %990 = call i32 @roce_set_field(i32 %987, i32 %988, i32 %989, i32 0)
  %991 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %992 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %991, i32 0, i32 13
  %993 = load i32, i32* %992, align 8
  %994 = load i32, i32* @QP_CONTEXT_QPC_BYTES_136_RETRY_MSG_PSN_M, align 4
  %995 = load i32, i32* @QP_CONTEXT_QPC_BYTES_136_RETRY_MSG_PSN_S, align 4
  %996 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %997 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %996, i32 0, i32 7
  %998 = load i32, i32* %997, align 4
  %999 = call i32 @roce_set_field(i32 %993, i32 %994, i32 %995, i32 %998)
  %1000 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %1001 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %1000, i32 0, i32 13
  %1002 = load i32, i32* %1001, align 8
  %1003 = load i32, i32* @QP_CONTEXT_QPC_BYTES_136_RETRY_MSG_FPKT_PSN_L_M, align 4
  %1004 = load i32, i32* @QP_CONTEXT_QPC_BYTES_136_RETRY_MSG_FPKT_PSN_L_S, align 4
  %1005 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %1006 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %1005, i32 0, i32 7
  %1007 = load i32, i32* %1006, align 4
  %1008 = call i32 @roce_set_field(i32 %1002, i32 %1003, i32 %1004, i32 %1007)
  %1009 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %1010 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %1009, i32 0, i32 12
  %1011 = load i32, i32* %1010, align 4
  %1012 = load i32, i32* @QP_CONTEXT_QPC_BYTES_140_RETRY_MSG_FPKT_PSN_H_M, align 4
  %1013 = load i32, i32* @QP_CONTEXT_QPC_BYTES_140_RETRY_MSG_FPKT_PSN_H_S, align 4
  %1014 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %1015 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %1014, i32 0, i32 7
  %1016 = load i32, i32* %1015, align 4
  %1017 = load i32, i32* @SQ_PSN_SHIFT, align 4
  %1018 = ashr i32 %1016, %1017
  %1019 = call i32 @roce_set_field(i32 %1011, i32 %1012, i32 %1013, i32 %1018)
  %1020 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %1021 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %1020, i32 0, i32 12
  %1022 = load i32, i32* %1021, align 4
  %1023 = load i32, i32* @QP_CONTEXT_QPC_BYTES_140_RETRY_MSG_MSN_M, align 4
  %1024 = load i32, i32* @QP_CONTEXT_QPC_BYTES_140_RETRY_MSG_MSN_S, align 4
  %1025 = call i32 @roce_set_field(i32 %1022, i32 %1023, i32 %1024, i32 0)
  %1026 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %1027 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %1026, i32 0, i32 12
  %1028 = load i32, i32* %1027, align 4
  %1029 = load i32, i32* @QP_CONTEXT_QPC_BYTES_140_RNR_RETRY_FLG_S, align 4
  %1030 = call i32 @roce_set_bit(i32 %1028, i32 %1029, i32 0)
  %1031 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %1032 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %1031, i32 0, i32 11
  %1033 = load i32, i32* %1032, align 8
  %1034 = load i32, i32* @QP_CONTEXT_QPC_BYTES_148_CHECK_FLAG_M, align 4
  %1035 = load i32, i32* @QP_CONTEXT_QPC_BYTES_148_CHECK_FLAG_S, align 4
  %1036 = call i32 @roce_set_field(i32 %1033, i32 %1034, i32 %1035, i32 0)
  %1037 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %1038 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %1037, i32 0, i32 11
  %1039 = load i32, i32* %1038, align 8
  %1040 = load i32, i32* @QP_CONTEXT_QPC_BYTES_148_RETRY_COUNT_M, align 4
  %1041 = load i32, i32* @QP_CONTEXT_QPC_BYTES_148_RETRY_COUNT_S, align 4
  %1042 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %1043 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %1042, i32 0, i32 8
  %1044 = load i32, i32* %1043, align 8
  %1045 = call i32 @roce_set_field(i32 %1039, i32 %1040, i32 %1041, i32 %1044)
  %1046 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %1047 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %1046, i32 0, i32 11
  %1048 = load i32, i32* %1047, align 8
  %1049 = load i32, i32* @QP_CONTEXT_QPC_BYTES_148_RNR_RETRY_COUNT_M, align 4
  %1050 = load i32, i32* @QP_CONTEXT_QPC_BYTES_148_RNR_RETRY_COUNT_S, align 4
  %1051 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %1052 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %1051, i32 0, i32 9
  %1053 = load i32, i32* %1052, align 4
  %1054 = call i32 @roce_set_field(i32 %1048, i32 %1049, i32 %1050, i32 %1053)
  %1055 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %1056 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %1055, i32 0, i32 11
  %1057 = load i32, i32* %1056, align 8
  %1058 = load i32, i32* @QP_CONTEXT_QPC_BYTES_148_LSN_M, align 4
  %1059 = load i32, i32* @QP_CONTEXT_QPC_BYTES_148_LSN_S, align 4
  %1060 = call i32 @roce_set_field(i32 %1057, i32 %1058, i32 %1059, i32 256)
  %1061 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %1062 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %1061, i32 0, i32 10
  store i64 0, i64* %1062, align 8
  %1063 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %1064 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %1063, i32 0, i32 9
  %1065 = load i32, i32* %1064, align 8
  %1066 = load i32, i32* @QP_CONTEXT_QPC_BYTES_156_RETRY_COUNT_INIT_M, align 4
  %1067 = load i32, i32* @QP_CONTEXT_QPC_BYTES_156_RETRY_COUNT_INIT_S, align 4
  %1068 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %1069 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %1068, i32 0, i32 8
  %1070 = load i32, i32* %1069, align 8
  %1071 = call i32 @roce_set_field(i32 %1065, i32 %1066, i32 %1067, i32 %1070)
  %1072 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %1073 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %1072, i32 0, i32 10
  %1074 = load i32, i32* %1073, align 8
  %1075 = icmp slt i32 %1074, 18
  br i1 %1075, label %1076, label %1088

1076:                                             ; preds = %925
  %1077 = load %struct.device*, %struct.device** %14, align 8
  %1078 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %1079 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %1078, i32 0, i32 10
  %1080 = load i32, i32* %1079, align 8
  %1081 = call i32 @dev_info(%struct.device* %1077, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %1080)
  %1082 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %1083 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %1082, i32 0, i32 9
  %1084 = load i32, i32* %1083, align 8
  %1085 = load i32, i32* @QP_CONTEXT_QPC_BYTES_156_ACK_TIMEOUT_M, align 4
  %1086 = load i32, i32* @QP_CONTEXT_QPC_BYTES_156_ACK_TIMEOUT_S, align 4
  %1087 = call i32 @roce_set_field(i32 %1084, i32 %1085, i32 %1086, i32 18)
  br label %1098

1088:                                             ; preds = %925
  %1089 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %1090 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %1089, i32 0, i32 9
  %1091 = load i32, i32* %1090, align 8
  %1092 = load i32, i32* @QP_CONTEXT_QPC_BYTES_156_ACK_TIMEOUT_M, align 4
  %1093 = load i32, i32* @QP_CONTEXT_QPC_BYTES_156_ACK_TIMEOUT_S, align 4
  %1094 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %1095 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %1094, i32 0, i32 10
  %1096 = load i32, i32* %1095, align 8
  %1097 = call i32 @roce_set_field(i32 %1091, i32 %1092, i32 %1093, i32 %1096)
  br label %1098

1098:                                             ; preds = %1088, %1076
  %1099 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %1100 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %1099, i32 0, i32 9
  %1101 = load i32, i32* %1100, align 8
  %1102 = load i32, i32* @QP_CONTEXT_QPC_BYTES_156_RNR_RETRY_COUNT_INIT_M, align 4
  %1103 = load i32, i32* @QP_CONTEXT_QPC_BYTES_156_RNR_RETRY_COUNT_INIT_S, align 4
  %1104 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %1105 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %1104, i32 0, i32 9
  %1106 = load i32, i32* %1105, align 4
  %1107 = call i32 @roce_set_field(i32 %1101, i32 %1102, i32 %1103, i32 %1106)
  %1108 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %1109 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %1108, i32 0, i32 9
  %1110 = load i32, i32* %1109, align 8
  %1111 = load i32, i32* @QP_CONTEXT_QPC_BYTES_156_PORT_NUM_M, align 4
  %1112 = load i32, i32* @QP_CONTEXT_QPC_BYTES_156_PORT_NUM_S, align 4
  %1113 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %13, align 8
  %1114 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %1113, i32 0, i32 5
  %1115 = load i32, i32* %1114, align 4
  %1116 = call i32 @roce_set_field(i32 %1110, i32 %1111, i32 %1112, i32 %1115)
  %1117 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %1118 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %1117, i32 0, i32 9
  %1119 = load i32, i32* %1118, align 8
  %1120 = load i32, i32* @QP_CONTEXT_QPC_BYTES_156_SL_M, align 4
  %1121 = load i32, i32* @QP_CONTEXT_QPC_BYTES_156_SL_S, align 4
  %1122 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %1123 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %1122, i32 0, i32 13
  %1124 = call i32 @rdma_ah_get_sl(%struct.TYPE_26__* %1123)
  %1125 = call i32 @roce_set_field(i32 %1119, i32 %1120, i32 %1121, i32 %1124)
  %1126 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %1127 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %1126, i32 0, i32 13
  %1128 = call i32 @rdma_ah_get_sl(%struct.TYPE_26__* %1127)
  %1129 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %13, align 8
  %1130 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %1129, i32 0, i32 6
  store i32 %1128, i32* %1130, align 8
  %1131 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %1132 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %1131, i32 0, i32 9
  %1133 = load i32, i32* %1132, align 8
  %1134 = load i32, i32* @QP_CONTEXT_QPC_BYTES_156_INITIATOR_DEPTH_M, align 4
  %1135 = load i32, i32* @QP_CONTEXT_QPC_BYTES_156_INITIATOR_DEPTH_S, align 4
  %1136 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %1137 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %1136, i32 0, i32 12
  %1138 = load i64, i64* %1137, align 8
  %1139 = trunc i64 %1138 to i32
  %1140 = call i32 @ilog2(i32 %1139)
  %1141 = call i32 @roce_set_field(i32 %1133, i32 %1134, i32 %1135, i32 %1140)
  %1142 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %1143 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %1142, i32 0, i32 9
  %1144 = load i32, i32* %1143, align 8
  %1145 = load i32, i32* @QP_CONTEXT_QPC_BYTES_156_ACK_REQ_IND_M, align 4
  %1146 = load i32, i32* @QP_CONTEXT_QPC_BYTES_156_ACK_REQ_IND_S, align 4
  %1147 = call i32 @roce_set_field(i32 %1144, i32 %1145, i32 %1146, i32 0)
  %1148 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %1149 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %1148, i32 0, i32 8
  store i64 0, i64* %1149, align 8
  %1150 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %1151 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %1150, i32 0, i32 7
  %1152 = load i32, i32* %1151, align 4
  %1153 = load i32, i32* @QP_CONTEXT_QPC_BYTES_164_SQ_PSN_M, align 4
  %1154 = load i32, i32* @QP_CONTEXT_QPC_BYTES_164_SQ_PSN_S, align 4
  %1155 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %1156 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %1155, i32 0, i32 7
  %1157 = load i32, i32* %1156, align 4
  %1158 = call i32 @roce_set_field(i32 %1152, i32 %1153, i32 %1154, i32 %1157)
  %1159 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %1160 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %1159, i32 0, i32 7
  %1161 = load i32, i32* %1160, align 4
  %1162 = load i32, i32* @QP_CONTEXT_QPC_BYTES_164_IRRL_HEAD_M, align 4
  %1163 = load i32, i32* @QP_CONTEXT_QPC_BYTES_164_IRRL_HEAD_S, align 4
  %1164 = call i32 @roce_set_field(i32 %1161, i32 %1162, i32 %1163, i32 0)
  %1165 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %1166 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %1165, i32 0, i32 6
  %1167 = load i32, i32* %1166, align 8
  %1168 = load i32, i32* @QP_CONTEXT_QPC_BYTES_168_RETRY_SQ_PSN_M, align 4
  %1169 = load i32, i32* @QP_CONTEXT_QPC_BYTES_168_RETRY_SQ_PSN_S, align 4
  %1170 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %1171 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %1170, i32 0, i32 7
  %1172 = load i32, i32* %1171, align 4
  %1173 = call i32 @roce_set_field(i32 %1167, i32 %1168, i32 %1169, i32 %1172)
  %1174 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %1175 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %1174, i32 0, i32 6
  %1176 = load i32, i32* %1175, align 8
  %1177 = load i32, i32* @QP_CONTEXT_QPC_BYTES_168_SGE_USE_FLA_M, align 4
  %1178 = load i32, i32* @QP_CONTEXT_QPC_BYTES_168_SGE_USE_FLA_S, align 4
  %1179 = call i32 @roce_set_field(i32 %1176, i32 %1177, i32 %1178, i32 0)
  %1180 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %1181 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %1180, i32 0, i32 6
  %1182 = load i32, i32* %1181, align 8
  %1183 = load i32, i32* @QP_CONTEXT_QPC_BYTES_168_DB_TYPE_M, align 4
  %1184 = load i32, i32* @QP_CONTEXT_QPC_BYTES_168_DB_TYPE_S, align 4
  %1185 = call i32 @roce_set_field(i32 %1182, i32 %1183, i32 %1184, i32 0)
  %1186 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %1187 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %1186, i32 0, i32 6
  %1188 = load i32, i32* %1187, align 8
  %1189 = load i32, i32* @QP_CONTEXT_QPC_BYTES_168_MSG_LP_IND_S, align 4
  %1190 = call i32 @roce_set_bit(i32 %1188, i32 %1189, i32 0)
  %1191 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %1192 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %1191, i32 0, i32 6
  %1193 = load i32, i32* %1192, align 8
  %1194 = load i32, i32* @QP_CONTEXT_QPC_BYTES_168_CSDB_LP_IND_S, align 4
  %1195 = call i32 @roce_set_bit(i32 %1193, i32 %1194, i32 0)
  %1196 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %1197 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %1196, i32 0, i32 6
  %1198 = load i32, i32* %1197, align 8
  %1199 = load i32, i32* @QP_CONTEXT_QPC_BYTES_168_QP_ERR_FLG_S, align 4
  %1200 = call i32 @roce_set_bit(i32 %1198, i32 %1199, i32 0)
  %1201 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %1202 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %1201, i32 0, i32 5
  store i64 0, i64* %1202, align 8
  %1203 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %1204 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %1203, i32 0, i32 4
  %1205 = load i32, i32* %1204, align 4
  %1206 = load i32, i32* @QP_CONTEXT_QPC_BYTES_176_DB_CUR_INDEX_M, align 4
  %1207 = load i32, i32* @QP_CONTEXT_QPC_BYTES_176_DB_CUR_INDEX_S, align 4
  %1208 = call i32 @roce_set_field(i32 %1205, i32 %1206, i32 %1207, i32 0)
  %1209 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %1210 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %1209, i32 0, i32 4
  %1211 = load i32, i32* %1210, align 4
  %1212 = load i32, i32* @QP_CONTEXT_QPC_BYTES_176_RETRY_DB_CUR_INDEX_M, align 4
  %1213 = load i32, i32* @QP_CONTEXT_QPC_BYTES_176_RETRY_DB_CUR_INDEX_S, align 4
  %1214 = call i32 @roce_set_field(i32 %1211, i32 %1212, i32 %1213, i32 0)
  %1215 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %1216 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %1215, i32 0, i32 3
  %1217 = load i32, i32* %1216, align 8
  %1218 = load i32, i32* @QP_CONTEXT_QPC_BYTES_180_SQ_CUR_INDEX_M, align 4
  %1219 = load i32, i32* @QP_CONTEXT_QPC_BYTES_180_SQ_CUR_INDEX_S, align 4
  %1220 = call i32 @roce_set_field(i32 %1217, i32 %1218, i32 %1219, i32 0)
  %1221 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %1222 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %1221, i32 0, i32 3
  %1223 = load i32, i32* %1222, align 8
  %1224 = load i32, i32* @QP_CONTEXT_QPC_BYTES_180_SQ_HEAD_M, align 4
  %1225 = load i32, i32* @QP_CONTEXT_QPC_BYTES_180_SQ_HEAD_S, align 4
  %1226 = call i32 @roce_set_field(i32 %1223, i32 %1224, i32 %1225, i32 0)
  %1227 = load i32*, i32** %23, align 8
  %1228 = getelementptr inbounds i32, i32* %1227, i64 0
  %1229 = load i32, i32* %1228, align 4
  %1230 = call i8* @cpu_to_le32(i32 %1229)
  %1231 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %1232 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %1231, i32 0, i32 2
  store i8* %1230, i8** %1232, align 8
  %1233 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %1234 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %1233, i32 0, i32 1
  %1235 = load i32, i32* %1234, align 4
  %1236 = load i32, i32* @QP_CONTEXT_QPC_BYTES_188_TX_CUR_SQ_WQE_BA_H_M, align 4
  %1237 = load i32, i32* @QP_CONTEXT_QPC_BYTES_188_TX_CUR_SQ_WQE_BA_H_S, align 4
  %1238 = load i32*, i32** %23, align 8
  %1239 = getelementptr inbounds i32, i32* %1238, i64 0
  %1240 = load i32, i32* %1239, align 4
  %1241 = ashr i32 %1240, 32
  %1242 = call i32 @roce_set_field(i32 %1235, i32 %1236, i32 %1237, i32 %1241)
  %1243 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %1244 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %1243, i32 0, i32 1
  %1245 = load i32, i32* %1244, align 4
  %1246 = load i32, i32* @QP_CONTEXT_QPC_BYTES_188_PKT_RETRY_FLG_S, align 4
  %1247 = call i32 @roce_set_bit(i32 %1245, i32 %1246, i32 0)
  %1248 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %1249 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %1248, i32 0, i32 1
  %1250 = load i32, i32* %1249, align 4
  %1251 = load i32, i32* @QP_CONTEXT_QPC_BYTES_188_TX_RETRY_CUR_INDEX_M, align 4
  %1252 = load i32, i32* @QP_CONTEXT_QPC_BYTES_188_TX_RETRY_CUR_INDEX_S, align 4
  %1253 = call i32 @roce_set_field(i32 %1250, i32 %1251, i32 %1252, i32 0)
  br label %1322

1254:                                             ; preds = %888, %884
  %1255 = load i32, i32* %10, align 4
  %1256 = load i32, i32* @IB_QPS_INIT, align 4
  %1257 = icmp eq i32 %1255, %1256
  br i1 %1257, label %1258, label %1262

1258:                                             ; preds = %1254
  %1259 = load i32, i32* %11, align 4
  %1260 = load i32, i32* @IB_QPS_RESET, align 4
  %1261 = icmp eq i32 %1259, %1260
  br i1 %1261, label %1321, label %1262

1262:                                             ; preds = %1258, %1254
  %1263 = load i32, i32* %10, align 4
  %1264 = load i32, i32* @IB_QPS_INIT, align 4
  %1265 = icmp eq i32 %1263, %1264
  br i1 %1265, label %1266, label %1270

1266:                                             ; preds = %1262
  %1267 = load i32, i32* %11, align 4
  %1268 = load i32, i32* @IB_QPS_ERR, align 4
  %1269 = icmp eq i32 %1267, %1268
  br i1 %1269, label %1321, label %1270

1270:                                             ; preds = %1266, %1262
  %1271 = load i32, i32* %10, align 4
  %1272 = load i32, i32* @IB_QPS_RTR, align 4
  %1273 = icmp eq i32 %1271, %1272
  br i1 %1273, label %1274, label %1278

1274:                                             ; preds = %1270
  %1275 = load i32, i32* %11, align 4
  %1276 = load i32, i32* @IB_QPS_RESET, align 4
  %1277 = icmp eq i32 %1275, %1276
  br i1 %1277, label %1321, label %1278

1278:                                             ; preds = %1274, %1270
  %1279 = load i32, i32* %10, align 4
  %1280 = load i32, i32* @IB_QPS_RTR, align 4
  %1281 = icmp eq i32 %1279, %1280
  br i1 %1281, label %1282, label %1286

1282:                                             ; preds = %1278
  %1283 = load i32, i32* %11, align 4
  %1284 = load i32, i32* @IB_QPS_ERR, align 4
  %1285 = icmp eq i32 %1283, %1284
  br i1 %1285, label %1321, label %1286

1286:                                             ; preds = %1282, %1278
  %1287 = load i32, i32* %10, align 4
  %1288 = load i32, i32* @IB_QPS_RTS, align 4
  %1289 = icmp eq i32 %1287, %1288
  br i1 %1289, label %1290, label %1294

1290:                                             ; preds = %1286
  %1291 = load i32, i32* %11, align 4
  %1292 = load i32, i32* @IB_QPS_RESET, align 4
  %1293 = icmp eq i32 %1291, %1292
  br i1 %1293, label %1321, label %1294

1294:                                             ; preds = %1290, %1286
  %1295 = load i32, i32* %10, align 4
  %1296 = load i32, i32* @IB_QPS_RTS, align 4
  %1297 = icmp eq i32 %1295, %1296
  br i1 %1297, label %1298, label %1302

1298:                                             ; preds = %1294
  %1299 = load i32, i32* %11, align 4
  %1300 = load i32, i32* @IB_QPS_ERR, align 4
  %1301 = icmp eq i32 %1299, %1300
  br i1 %1301, label %1321, label %1302

1302:                                             ; preds = %1298, %1294
  %1303 = load i32, i32* %10, align 4
  %1304 = load i32, i32* @IB_QPS_ERR, align 4
  %1305 = icmp eq i32 %1303, %1304
  br i1 %1305, label %1306, label %1310

1306:                                             ; preds = %1302
  %1307 = load i32, i32* %11, align 4
  %1308 = load i32, i32* @IB_QPS_RESET, align 4
  %1309 = icmp eq i32 %1307, %1308
  br i1 %1309, label %1321, label %1310

1310:                                             ; preds = %1306, %1302
  %1311 = load i32, i32* %10, align 4
  %1312 = load i32, i32* @IB_QPS_ERR, align 4
  %1313 = icmp eq i32 %1311, %1312
  br i1 %1313, label %1314, label %1318

1314:                                             ; preds = %1310
  %1315 = load i32, i32* %11, align 4
  %1316 = load i32, i32* @IB_QPS_ERR, align 4
  %1317 = icmp eq i32 %1315, %1316
  br i1 %1317, label %1321, label %1318

1318:                                             ; preds = %1314, %1310
  %1319 = load %struct.device*, %struct.device** %14, align 8
  %1320 = call i32 @dev_err(%struct.device* %1319, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  br label %1514

1321:                                             ; preds = %1314, %1306, %1298, %1290, %1282, %1274, %1266, %1258
  br label %1322

1322:                                             ; preds = %1321, %1098
  br label %1323

1323:                                             ; preds = %1322, %632
  br label %1324

1324:                                             ; preds = %1323, %453
  br label %1325

1325:                                             ; preds = %1324, %234
  %1326 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %1327 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %1326, i32 0, i32 0
  %1328 = load i32, i32* %1327, align 8
  %1329 = load i32, i32* @QP_CONTEXT_QPC_BYTES_144_QP_STATE_M, align 4
  %1330 = load i32, i32* @QP_CONTEXT_QPC_BYTES_144_QP_STATE_S, align 4
  %1331 = load i32, i32* %11, align 4
  %1332 = call i32 @roce_set_field(i32 %1328, i32 %1329, i32 %1330, i32 %1331)
  %1333 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %12, align 8
  %1334 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %13, align 8
  %1335 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %1334, i32 0, i32 12
  %1336 = load i32, i32* %10, align 4
  %1337 = call i32 @to_hns_roce_state(i32 %1336)
  %1338 = load i32, i32* %11, align 4
  %1339 = call i32 @to_hns_roce_state(i32 %1338)
  %1340 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %1341 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %13, align 8
  %1342 = call i32 @hns_roce_v1_qp_modify(%struct.hns_roce_dev* %1333, %struct.TYPE_27__* %1335, i32 %1337, i32 %1339, %struct.hns_roce_qp_context* %1340, %struct.hns_roce_qp* %1341)
  store i32 %1342, i32* %22, align 4
  %1343 = load i32, i32* %22, align 4
  %1344 = icmp ne i32 %1343, 0
  br i1 %1344, label %1345, label %1348

1345:                                             ; preds = %1325
  %1346 = load %struct.device*, %struct.device** %14, align 8
  %1347 = call i32 @dev_err(%struct.device* %1346, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  br label %1514

1348:                                             ; preds = %1325
  %1349 = load i32, i32* %10, align 4
  %1350 = load i32, i32* @IB_QPS_INIT, align 4
  %1351 = icmp eq i32 %1349, %1350
  br i1 %1351, label %1352, label %1414

1352:                                             ; preds = %1348
  %1353 = load i32, i32* %11, align 4
  %1354 = load i32, i32* @IB_QPS_INIT, align 4
  %1355 = icmp eq i32 %1353, %1354
  br i1 %1355, label %1356, label %1414

1356:                                             ; preds = %1352
  %1357 = call i32 (...) @wmb()
  %1358 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  %1359 = load i32, i32* %1358, align 4
  %1360 = load i32, i32* @RQ_DOORBELL_U32_4_RQ_HEAD_M, align 4
  %1361 = load i32, i32* @RQ_DOORBELL_U32_4_RQ_HEAD_S, align 4
  %1362 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %13, align 8
  %1363 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %1362, i32 0, i32 10
  %1364 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %1363, i32 0, i32 0
  %1365 = load i32, i32* %1364, align 8
  %1366 = call i32 @roce_set_field(i32 %1359, i32 %1360, i32 %1361, i32 %1365)
  %1367 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 1
  %1368 = load i32, i32* %1367, align 4
  %1369 = load i32, i32* @RQ_DOORBELL_U32_8_QPN_M, align 4
  %1370 = load i32, i32* @RQ_DOORBELL_U32_8_QPN_S, align 4
  %1371 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %13, align 8
  %1372 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %1371, i32 0, i32 0
  %1373 = load i32, i32* %1372, align 8
  %1374 = call i32 @roce_set_field(i32 %1368, i32 %1369, i32 %1370, i32 %1373)
  %1375 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 1
  %1376 = load i32, i32* %1375, align 4
  %1377 = load i32, i32* @RQ_DOORBELL_U32_8_CMD_M, align 4
  %1378 = load i32, i32* @RQ_DOORBELL_U32_8_CMD_S, align 4
  %1379 = call i32 @roce_set_field(i32 %1376, i32 %1377, i32 %1378, i32 1)
  %1380 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 1
  %1381 = load i32, i32* %1380, align 4
  %1382 = load i32, i32* @RQ_DOORBELL_U32_8_HW_SYNC_S, align 4
  %1383 = call i32 @roce_set_bit(i32 %1381, i32 %1382, i32 1)
  %1384 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %1385 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %1384, i32 0, i32 3
  %1386 = load i64, i64* %1385, align 8
  %1387 = icmp ne i64 %1386, 0
  br i1 %1387, label %1388, label %1407

1388:                                             ; preds = %1356
  %1389 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %12, align 8
  %1390 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %1389, i32 0, i32 4
  %1391 = load i64, i64* %1390, align 8
  %1392 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %12, align 8
  %1393 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %1392, i32 0, i32 3
  %1394 = load i64, i64* %1393, align 8
  %1395 = add nsw i64 %1391, %1394
  %1396 = load i32, i32* @DB_REG_OFFSET, align 4
  %1397 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %12, align 8
  %1398 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %1397, i32 0, i32 2
  %1399 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %1398, i32 0, i32 0
  %1400 = load i32, i32* %1399, align 8
  %1401 = mul nsw i32 %1396, %1400
  %1402 = sext i32 %1401 to i64
  %1403 = add nsw i64 %1395, %1402
  %1404 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %13, align 8
  %1405 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %1404, i32 0, i32 10
  %1406 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %1405, i32 0, i32 2
  store i64 %1403, i64* %1406, align 8
  br label %1407

1407:                                             ; preds = %1388, %1356
  %1408 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  %1409 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %13, align 8
  %1410 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %1409, i32 0, i32 10
  %1411 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %1410, i32 0, i32 2
  %1412 = load i64, i64* %1411, align 8
  %1413 = call i32 @hns_roce_write64_k(i32* %1408, i64 %1412)
  br label %1414

1414:                                             ; preds = %1407, %1352, %1348
  %1415 = load i32, i32* %11, align 4
  %1416 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %13, align 8
  %1417 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %1416, i32 0, i32 7
  store i32 %1415, i32* %1417, align 4
  %1418 = load i32, i32* %9, align 4
  %1419 = load i32, i32* @IB_QP_MAX_DEST_RD_ATOMIC, align 4
  %1420 = and i32 %1418, %1419
  %1421 = icmp ne i32 %1420, 0
  br i1 %1421, label %1422, label %1428

1422:                                             ; preds = %1414
  %1423 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %1424 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %1423, i32 0, i32 11
  %1425 = load i64, i64* %1424, align 8
  %1426 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %13, align 8
  %1427 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %1426, i32 0, i32 11
  store i64 %1425, i64* %1427, align 8
  br label %1428

1428:                                             ; preds = %1422, %1414
  %1429 = load i32, i32* %9, align 4
  %1430 = load i32, i32* @IB_QP_PORT, align 4
  %1431 = and i32 %1429, %1430
  %1432 = icmp ne i32 %1431, 0
  br i1 %1432, label %1433, label %1452

1433:                                             ; preds = %1428
  %1434 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %1435 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %1434, i32 0, i32 3
  %1436 = load i32, i32* %1435, align 4
  %1437 = sub nsw i32 %1436, 1
  %1438 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %13, align 8
  %1439 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %1438, i32 0, i32 4
  store i32 %1437, i32* %1439, align 8
  %1440 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %12, align 8
  %1441 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %1440, i32 0, i32 1
  %1442 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %1441, i32 0, i32 0
  %1443 = load i32*, i32** %1442, align 8
  %1444 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %13, align 8
  %1445 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %1444, i32 0, i32 4
  %1446 = load i32, i32* %1445, align 8
  %1447 = sext i32 %1446 to i64
  %1448 = getelementptr inbounds i32, i32* %1443, i64 %1447
  %1449 = load i32, i32* %1448, align 4
  %1450 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %13, align 8
  %1451 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %1450, i32 0, i32 5
  store i32 %1449, i32* %1451, align 4
  br label %1452

1452:                                             ; preds = %1433, %1428
  %1453 = load i32, i32* %11, align 4
  %1454 = load i32, i32* @IB_QPS_RESET, align 4
  %1455 = icmp eq i32 %1453, %1454
  br i1 %1455, label %1456, label %1513

1456:                                             ; preds = %1452
  %1457 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %1458 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %1457, i32 0, i32 3
  %1459 = load i64, i64* %1458, align 8
  %1460 = icmp ne i64 %1459, 0
  br i1 %1460, label %1513, label %1461

1461:                                             ; preds = %1456
  %1462 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %1463 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %1462, i32 0, i32 1
  %1464 = load i64, i64* %1463, align 8
  %1465 = call %struct.TYPE_25__* @to_hr_cq(i64 %1464)
  %1466 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %13, align 8
  %1467 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %1466, i32 0, i32 0
  %1468 = load i32, i32* %1467, align 8
  %1469 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %1470 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %1469, i32 0, i32 2
  %1471 = load i64, i64* %1470, align 8
  %1472 = icmp ne i64 %1471, 0
  br i1 %1472, label %1473, label %1478

1473:                                             ; preds = %1461
  %1474 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %1475 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %1474, i32 0, i32 2
  %1476 = load i64, i64* %1475, align 8
  %1477 = call %struct.TYPE_23__* @to_hr_srq(i64 %1476)
  br label %1479

1478:                                             ; preds = %1461
  br label %1479

1479:                                             ; preds = %1478, %1473
  %1480 = phi %struct.TYPE_23__* [ %1477, %1473 ], [ null, %1478 ]
  %1481 = call i32 @hns_roce_v1_cq_clean(%struct.TYPE_25__* %1465, i32 %1468, %struct.TYPE_23__* %1480)
  %1482 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %1483 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %1482, i32 0, i32 0
  %1484 = load i64, i64* %1483, align 8
  %1485 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %1486 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %1485, i32 0, i32 1
  %1487 = load i64, i64* %1486, align 8
  %1488 = icmp ne i64 %1484, %1487
  br i1 %1488, label %1489, label %1498

1489:                                             ; preds = %1479
  %1490 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %1491 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %1490, i32 0, i32 0
  %1492 = load i64, i64* %1491, align 8
  %1493 = call %struct.TYPE_25__* @to_hr_cq(i64 %1492)
  %1494 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %13, align 8
  %1495 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %1494, i32 0, i32 0
  %1496 = load i32, i32* %1495, align 8
  %1497 = call i32 @hns_roce_v1_cq_clean(%struct.TYPE_25__* %1493, i32 %1496, %struct.TYPE_23__* null)
  br label %1498

1498:                                             ; preds = %1489, %1479
  %1499 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %13, align 8
  %1500 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %1499, i32 0, i32 10
  %1501 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %1500, i32 0, i32 0
  store i32 0, i32* %1501, align 8
  %1502 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %13, align 8
  %1503 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %1502, i32 0, i32 10
  %1504 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %1503, i32 0, i32 1
  store i64 0, i64* %1504, align 8
  %1505 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %13, align 8
  %1506 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %1505, i32 0, i32 9
  %1507 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1506, i32 0, i32 1
  store i64 0, i64* %1507, align 8
  %1508 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %13, align 8
  %1509 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %1508, i32 0, i32 9
  %1510 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1509, i32 0, i32 0
  store i64 0, i64* %1510, align 8
  %1511 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %13, align 8
  %1512 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %1511, i32 0, i32 8
  store i64 0, i64* %1512, align 8
  br label %1513

1513:                                             ; preds = %1498, %1456, %1452
  br label %1514

1514:                                             ; preds = %1513, %1345, %1318, %922, %491, %77, %63
  %1515 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %15, align 8
  %1516 = call i32 @kfree(%struct.hns_roce_qp_context* %1515)
  %1517 = load i32, i32* %22, align 4
  store i32 %1517, i32* %6, align 4
  br label %1518

1518:                                             ; preds = %1514, %48
  %1519 = load i32, i32* %6, align 4
  ret i32 %1519
}

declare dso_local %struct.hns_roce_dev* @to_hr_dev(i32) #1

declare dso_local %struct.hns_roce_qp* @to_hr_qp(%struct.ib_qp*) #1

declare dso_local %struct.ib_global_route* @rdma_ah_read_grh(%struct.TYPE_26__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.hns_roce_qp_context* @kzalloc(i32, i32) #1

declare dso_local i32* @hns_roce_table_find(%struct.hns_roce_dev*, i32*, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @roce_set_field(i32, i32, i32, i32) #1

declare dso_local i32 @to_hr_qp_type(i32) #1

declare dso_local i32 @roce_set_bit(i32, i32, i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local %struct.TYPE_24__* @to_hr_pd(i32) #1

declare dso_local %struct.TYPE_25__* @to_hr_cq(i64) #1

declare dso_local %struct.TYPE_23__* @to_hr_srq(i64) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i64 @ether_addr_equal_unaligned(i64*, i64*) #1

declare dso_local i32 @rdma_ah_get_ah_flags(%struct.TYPE_26__*) #1

declare dso_local i64 @rdma_ah_get_port_num(%struct.TYPE_26__*) #1

declare dso_local i32 @hns_get_gid_index(%struct.hns_roce_dev*, i64, i32) #1

declare dso_local i32 @memcpy(i32*, i64*, i32) #1

declare dso_local i32 @rdma_ah_get_static_rate(%struct.TYPE_26__*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @roce_get_field(i32, i32, i32) #1

declare dso_local i32 @rdma_ah_get_sl(%struct.TYPE_26__*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @hns_roce_v1_qp_modify(%struct.hns_roce_dev*, %struct.TYPE_27__*, i32, i32, %struct.hns_roce_qp_context*, %struct.hns_roce_qp*) #1

declare dso_local i32 @to_hns_roce_state(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @hns_roce_write64_k(i32*, i64) #1

declare dso_local i32 @hns_roce_v1_cq_clean(%struct.TYPE_25__*, i32, %struct.TYPE_23__*) #1

declare dso_local i32 @kfree(%struct.hns_roce_qp_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
