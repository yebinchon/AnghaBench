; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_post_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_post_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i64, i32, i32 }
%struct.ib_send_wr = type { i32, i32, i32, %struct.TYPE_18__*, %struct.TYPE_15__, i32, %struct.ib_send_wr* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.hns_roce_dev = type { i64*, %struct.device* }
%struct.device = type { i32 }
%struct.hns_roce_ah = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32*, i32, i32, i32, i32, i32*, i32, i64, i32 }
%struct.hns_roce_v2_ud_send_wqe = type { i64, i64, i8*, i8*, i8*, i8*, i8*, i32*, i64, i64, i64, i64, i8*, i64, i64, i64 }
%struct.hns_roce_v2_rc_send_wqe = type { i64, i64, i8*, i8*, i8*, i8*, i8*, i32*, i64, i64, i64, i64, i8*, i64, i64, i64 }
%struct.hns_roce_qp = type { i64, i32, i32, i64, i32, i32, i32, %struct.TYPE_21__, %struct.TYPE_12__, i32, %struct.TYPE_13__ }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, i32* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.hns_roce_wqe_frmr_seg = type { i32 }
%struct.hns_roce_v2_db = type { i64, i64 }
%struct.ib_qp_attr = type { i64 }
%struct.hns_roce_v2_wqe_data_seg = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }

@IB_QPT_RC = common dso_local global i64 0, align 8
@IB_QPT_GSI = common dso_local global i64 0, align 8
@IB_QPT_UD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Not supported QP(0x%x)type!\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IB_QPS_RESET = common dso_local global i64 0, align 8
@IB_QPS_INIT = common dso_local global i64 0, align 8
@IB_QPS_RTR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Post WQE fail, QP state %d err!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"num_sge=%d > qp->sq.max_gs=%d\0A\00", align 1
@V2_UD_SEND_WQE_DMAC_0_M = common dso_local global i32 0, align 4
@V2_UD_SEND_WQE_DMAC_0_S = common dso_local global i32 0, align 4
@V2_UD_SEND_WQE_DMAC_1_M = common dso_local global i32 0, align 4
@V2_UD_SEND_WQE_DMAC_1_S = common dso_local global i32 0, align 4
@V2_UD_SEND_WQE_DMAC_2_M = common dso_local global i32 0, align 4
@V2_UD_SEND_WQE_DMAC_2_S = common dso_local global i32 0, align 4
@V2_UD_SEND_WQE_DMAC_3_M = common dso_local global i32 0, align 4
@V2_UD_SEND_WQE_DMAC_3_S = common dso_local global i32 0, align 4
@V2_UD_SEND_WQE_BYTE_48_DMAC_4_M = common dso_local global i32 0, align 4
@V2_UD_SEND_WQE_BYTE_48_DMAC_4_S = common dso_local global i32 0, align 4
@V2_UD_SEND_WQE_BYTE_48_DMAC_5_M = common dso_local global i32 0, align 4
@V2_UD_SEND_WQE_BYTE_48_DMAC_5_S = common dso_local global i32 0, align 4
@V2_UD_SEND_WQE_BYTE_40_LBI_S = common dso_local global i32 0, align 4
@V2_UD_SEND_WQE_BYTE_4_OPCODE_M = common dso_local global i32 0, align 4
@V2_UD_SEND_WQE_BYTE_4_OPCODE_S = common dso_local global i32 0, align 4
@HNS_ROCE_V2_WQE_OP_SEND = common dso_local global i32 0, align 4
@V2_UD_SEND_WQE_BYTE_4_CQE_S = common dso_local global i32 0, align 4
@IB_SEND_SIGNALED = common dso_local global i32 0, align 4
@V2_UD_SEND_WQE_BYTE_4_SE_S = common dso_local global i32 0, align 4
@IB_SEND_SOLICITED = common dso_local global i32 0, align 4
@V2_UD_SEND_WQE_BYTE_4_OWNER_S = common dso_local global i32 0, align 4
@V2_UD_SEND_WQE_BYTE_16_PD_M = common dso_local global i32 0, align 4
@V2_UD_SEND_WQE_BYTE_16_PD_S = common dso_local global i32 0, align 4
@V2_UD_SEND_WQE_BYTE_16_SGE_NUM_M = common dso_local global i32 0, align 4
@V2_UD_SEND_WQE_BYTE_16_SGE_NUM_S = common dso_local global i32 0, align 4
@V2_UD_SEND_WQE_BYTE_20_MSG_START_SGE_IDX_M = common dso_local global i32 0, align 4
@V2_UD_SEND_WQE_BYTE_20_MSG_START_SGE_IDX_S = common dso_local global i32 0, align 4
@V2_UD_SEND_WQE_BYTE_24_UDPSPN_M = common dso_local global i32 0, align 4
@V2_UD_SEND_WQE_BYTE_24_UDPSPN_S = common dso_local global i32 0, align 4
@V2_UD_SEND_WQE_BYTE_32_DQPN_M = common dso_local global i32 0, align 4
@V2_UD_SEND_WQE_BYTE_32_DQPN_S = common dso_local global i32 0, align 4
@V2_UD_SEND_WQE_BYTE_36_VLAN_M = common dso_local global i32 0, align 4
@V2_UD_SEND_WQE_BYTE_36_VLAN_S = common dso_local global i32 0, align 4
@V2_UD_SEND_WQE_BYTE_36_HOPLIMIT_M = common dso_local global i32 0, align 4
@V2_UD_SEND_WQE_BYTE_36_HOPLIMIT_S = common dso_local global i32 0, align 4
@V2_UD_SEND_WQE_BYTE_36_TCLASS_M = common dso_local global i32 0, align 4
@V2_UD_SEND_WQE_BYTE_36_TCLASS_S = common dso_local global i32 0, align 4
@V2_UD_SEND_WQE_BYTE_40_FLOW_LABEL_M = common dso_local global i32 0, align 4
@V2_UD_SEND_WQE_BYTE_40_FLOW_LABEL_S = common dso_local global i32 0, align 4
@V2_UD_SEND_WQE_BYTE_40_SL_M = common dso_local global i32 0, align 4
@V2_UD_SEND_WQE_BYTE_40_SL_S = common dso_local global i32 0, align 4
@V2_UD_SEND_WQE_BYTE_40_PORTN_M = common dso_local global i32 0, align 4
@V2_UD_SEND_WQE_BYTE_40_PORTN_S = common dso_local global i32 0, align 4
@V2_UD_SEND_WQE_BYTE_40_UD_VLAN_EN_S = common dso_local global i32 0, align 4
@V2_UD_SEND_WQE_BYTE_48_SGID_INDX_M = common dso_local global i32 0, align 4
@V2_UD_SEND_WQE_BYTE_48_SGID_INDX_S = common dso_local global i32 0, align 4
@GID_LEN_V2 = common dso_local global i32 0, align 4
@V2_RC_SEND_WQE_BYTE_4_FENCE_S = common dso_local global i32 0, align 4
@IB_SEND_FENCE = common dso_local global i32 0, align 4
@V2_RC_SEND_WQE_BYTE_4_SE_S = common dso_local global i32 0, align 4
@V2_RC_SEND_WQE_BYTE_4_CQE_S = common dso_local global i32 0, align 4
@V2_RC_SEND_WQE_BYTE_4_OWNER_S = common dso_local global i32 0, align 4
@HNS_ROCE_V2_WQE_OP_RDMA_READ = common dso_local global i32 0, align 4
@HNS_ROCE_V2_WQE_OP_RDMA_WRITE = common dso_local global i32 0, align 4
@HNS_ROCE_V2_WQE_OP_RDMA_WRITE_WITH_IMM = common dso_local global i32 0, align 4
@HNS_ROCE_V2_WQE_OP_SEND_WITH_INV = common dso_local global i32 0, align 4
@HNS_ROCE_V2_WQE_OP_SEND_WITH_IMM = common dso_local global i32 0, align 4
@HNS_ROCE_V2_WQE_OP_LOCAL_INV = common dso_local global i32 0, align 4
@V2_RC_SEND_WQE_BYTE_4_SO_S = common dso_local global i32 0, align 4
@HNS_ROCE_V2_WQE_OP_FAST_REG_PMR = common dso_local global i32 0, align 4
@HNS_ROCE_V2_WQE_OP_ATOM_CMP_AND_SWAP = common dso_local global i32 0, align 4
@HNS_ROCE_V2_WQE_OP_ATOM_FETCH_AND_ADD = common dso_local global i32 0, align 4
@HNS_ROCE_V2_WQE_OP_ATOM_MSK_CMP_AND_SWAP = common dso_local global i32 0, align 4
@HNS_ROCE_V2_WQE_OP_ATOM_MSK_FETCH_AND_ADD = common dso_local global i32 0, align 4
@HNS_ROCE_V2_WQE_OP_MASK = common dso_local global i32 0, align 4
@V2_RC_SEND_WQE_BYTE_4_OPCODE_M = common dso_local global i32 0, align 4
@V2_RC_SEND_WQE_BYTE_4_OPCODE_S = common dso_local global i32 0, align 4
@V2_RC_SEND_WQE_BYTE_16_SGE_NUM_M = common dso_local global i32 0, align 4
@V2_RC_SEND_WQE_BYTE_16_SGE_NUM_S = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Illegal qp_type(0x%x)\0A\00", align 1
@V2_DB_BYTE_4_TAG_M = common dso_local global i32 0, align 4
@V2_DB_BYTE_4_TAG_S = common dso_local global i32 0, align 4
@V2_DB_BYTE_4_CMD_M = common dso_local global i32 0, align 4
@V2_DB_BYTE_4_CMD_S = common dso_local global i32 0, align 4
@HNS_ROCE_V2_SQ_DB = common dso_local global i32 0, align 4
@V2_DB_PARAMETER_IDX_M = common dso_local global i32 0, align 4
@V2_DB_PARAMETER_IDX_S = common dso_local global i32 0, align 4
@V2_DB_PARAMETER_SL_M = common dso_local global i32 0, align 4
@V2_DB_PARAMETER_SL_S = common dso_local global i32 0, align 4
@IB_QPS_ERR = common dso_local global i64 0, align 8
@IB_QP_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_qp*, %struct.ib_send_wr*, %struct.ib_send_wr**)* @hns_roce_v2_post_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_v2_post_send(%struct.ib_qp* %0, %struct.ib_send_wr* %1, %struct.ib_send_wr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.ib_send_wr*, align 8
  %7 = alloca %struct.ib_send_wr**, align 8
  %8 = alloca %struct.hns_roce_dev*, align 8
  %9 = alloca %struct.hns_roce_ah*, align 8
  %10 = alloca %struct.hns_roce_v2_ud_send_wqe*, align 8
  %11 = alloca %struct.hns_roce_v2_rc_send_wqe*, align 8
  %12 = alloca %struct.hns_roce_qp*, align 8
  %13 = alloca %struct.hns_roce_wqe_frmr_seg*, align 8
  %14 = alloca %struct.device*, align 8
  %15 = alloca %struct.hns_roce_v2_db, align 8
  %16 = alloca %struct.ib_qp_attr, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.hns_roce_v2_wqe_data_seg*, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %struct.ib_send_wr* %1, %struct.ib_send_wr** %6, align 8
  store %struct.ib_send_wr** %2, %struct.ib_send_wr*** %7, align 8
  %31 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %32 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.hns_roce_dev* @to_hr_dev(i32 %33)
  store %struct.hns_roce_dev* %34, %struct.hns_roce_dev** %8, align 8
  %35 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %36 = call %struct.TYPE_16__* @ud_wr(%struct.ib_send_wr* %35)
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.hns_roce_ah* @to_hr_ah(i32 %38)
  store %struct.hns_roce_ah* %39, %struct.hns_roce_ah** %9, align 8
  %40 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %41 = call %struct.hns_roce_qp* @to_hr_qp(%struct.ib_qp* %40)
  store %struct.hns_roce_qp* %41, %struct.hns_roce_qp** %12, align 8
  %42 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %43 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %42, i32 0, i32 1
  %44 = load %struct.device*, %struct.device** %43, align 8
  store %struct.device* %44, %struct.device** %14, align 8
  store i8* null, i8** %21, align 8
  store i32 0, i32* %25, align 4
  %45 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %46 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @IB_QPT_RC, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %3
  %51 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %52 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @IB_QPT_GSI, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %58 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @IB_QPT_UD, align 8
  %61 = icmp ne i64 %59, %60
  br label %62

62:                                               ; preds = %56, %50, %3
  %63 = phi i1 [ false, %50 ], [ false, %3 ], [ %61, %56 ]
  %64 = zext i1 %63 to i32
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %62
  %68 = load %struct.device*, %struct.device** %14, align 8
  %69 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %70 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %68, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %71)
  %73 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %74 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  store %struct.ib_send_wr* %73, %struct.ib_send_wr** %74, align 8
  %75 = load i32, i32* @EOPNOTSUPP, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %996

77:                                               ; preds = %62
  %78 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %12, align 8
  %79 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @IB_QPS_RESET, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %95, label %83

83:                                               ; preds = %77
  %84 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %12, align 8
  %85 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @IB_QPS_INIT, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %95, label %89

89:                                               ; preds = %83
  %90 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %12, align 8
  %91 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @IB_QPS_RTR, align 8
  %94 = icmp eq i64 %92, %93
  br label %95

95:                                               ; preds = %89, %83, %77
  %96 = phi i1 [ true, %83 ], [ true, %77 ], [ %94, %89 ]
  %97 = zext i1 %96 to i32
  %98 = call i64 @unlikely(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %95
  %101 = load %struct.device*, %struct.device** %14, align 8
  %102 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %12, align 8
  %103 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %101, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %104)
  %106 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %107 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  store %struct.ib_send_wr* %106, %struct.ib_send_wr** %107, align 8
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %4, align 4
  br label %996

110:                                              ; preds = %95
  %111 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %12, align 8
  %112 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %111, i32 0, i32 7
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 3
  %114 = load i64, i64* %19, align 8
  %115 = call i32 @spin_lock_irqsave(i32* %113, i64 %114)
  %116 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %12, align 8
  %117 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  store i32 %118, i32* %20, align 4
  %119 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %12, align 8
  %120 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %17, align 4
  store i32 0, i32* %28, align 4
  br label %122

122:                                              ; preds = %887, %110
  %123 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %124 = icmp ne %struct.ib_send_wr* %123, null
  br i1 %124, label %125, label %893

125:                                              ; preds = %122
  %126 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %12, align 8
  %127 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %126, i32 0, i32 7
  %128 = load i32, i32* %28, align 4
  %129 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %12, align 8
  %130 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %129, i32 0, i32 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i64 @hns_roce_wq_overflow(%struct.TYPE_21__* %127, i32 %128, i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %125
  %136 = load i32, i32* @ENOMEM, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %25, align 4
  %138 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %139 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  store %struct.ib_send_wr* %138, %struct.ib_send_wr** %139, align 8
  br label %894

140:                                              ; preds = %125
  %141 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %142 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %12, align 8
  %145 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %144, i32 0, i32 7
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp sgt i32 %143, %147
  %149 = zext i1 %148 to i32
  %150 = call i64 @unlikely(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %167

152:                                              ; preds = %140
  %153 = load %struct.device*, %struct.device** %14, align 8
  %154 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %155 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = sext i32 %156 to i64
  %158 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %12, align 8
  %159 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %158, i32 0, i32 7
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %153, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %157, i32 %161)
  %163 = load i32, i32* @EINVAL, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %25, align 4
  %165 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %166 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  store %struct.ib_send_wr* %165, %struct.ib_send_wr** %166, align 8
  br label %894

167:                                              ; preds = %140
  %168 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %12, align 8
  %169 = load i32, i32* %20, align 4
  %170 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %12, align 8
  %171 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %170, i32 0, i32 7
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = sub nsw i32 %173, 1
  %175 = and i32 %169, %174
  %176 = call i8* @get_send_wqe(%struct.hns_roce_qp* %168, i32 %175)
  store i8* %176, i8** %21, align 8
  %177 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %178 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %12, align 8
  %181 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %180, i32 0, i32 7
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i32 0, i32 5
  %183 = load i32*, i32** %182, align 8
  %184 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %12, align 8
  %185 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %184, i32 0, i32 7
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* %28, align 4
  %189 = add nsw i32 %187, %188
  %190 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %12, align 8
  %191 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %190, i32 0, i32 7
  %192 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = sub nsw i32 %193, 1
  %195 = and i32 %189, %194
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %183, i64 %196
  store i32 %179, i32* %197, align 4
  %198 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %12, align 8
  %199 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %198, i32 0, i32 7
  %200 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* %28, align 4
  %203 = add nsw i32 %201, %202
  %204 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %12, align 8
  %205 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %204, i32 0, i32 7
  %206 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @ilog2(i32 %207)
  %209 = ashr i32 %203, %208
  %210 = and i32 %209, 1
  %211 = xor i32 %210, -1
  store i32 %211, i32* %18, align 4
  store i32 0, i32* %24, align 4
  %212 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %213 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @IB_QPT_GSI, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %577

217:                                              ; preds = %167
  %218 = load i8*, i8** %21, align 8
  %219 = bitcast i8* %218 to %struct.hns_roce_v2_ud_send_wqe*
  store %struct.hns_roce_v2_ud_send_wqe* %219, %struct.hns_roce_v2_ud_send_wqe** %10, align 8
  %220 = load %struct.hns_roce_v2_ud_send_wqe*, %struct.hns_roce_v2_ud_send_wqe** %10, align 8
  %221 = call i32 @memset(%struct.hns_roce_v2_ud_send_wqe* %220, i32 0, i32 128)
  %222 = load %struct.hns_roce_v2_ud_send_wqe*, %struct.hns_roce_v2_ud_send_wqe** %10, align 8
  %223 = getelementptr inbounds %struct.hns_roce_v2_ud_send_wqe, %struct.hns_roce_v2_ud_send_wqe* %222, i32 0, i32 15
  %224 = load i64, i64* %223, align 8
  %225 = load i32, i32* @V2_UD_SEND_WQE_DMAC_0_M, align 4
  %226 = load i32, i32* @V2_UD_SEND_WQE_DMAC_0_S, align 4
  %227 = load %struct.hns_roce_ah*, %struct.hns_roce_ah** %9, align 8
  %228 = getelementptr inbounds %struct.hns_roce_ah, %struct.hns_roce_ah* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 0
  %230 = load i32*, i32** %229, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 0
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @roce_set_field(i64 %224, i32 %225, i32 %226, i32 %232)
  %234 = load %struct.hns_roce_v2_ud_send_wqe*, %struct.hns_roce_v2_ud_send_wqe** %10, align 8
  %235 = getelementptr inbounds %struct.hns_roce_v2_ud_send_wqe, %struct.hns_roce_v2_ud_send_wqe* %234, i32 0, i32 15
  %236 = load i64, i64* %235, align 8
  %237 = load i32, i32* @V2_UD_SEND_WQE_DMAC_1_M, align 4
  %238 = load i32, i32* @V2_UD_SEND_WQE_DMAC_1_S, align 4
  %239 = load %struct.hns_roce_ah*, %struct.hns_roce_ah** %9, align 8
  %240 = getelementptr inbounds %struct.hns_roce_ah, %struct.hns_roce_ah* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i32 0, i32 0
  %242 = load i32*, i32** %241, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 1
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @roce_set_field(i64 %236, i32 %237, i32 %238, i32 %244)
  %246 = load %struct.hns_roce_v2_ud_send_wqe*, %struct.hns_roce_v2_ud_send_wqe** %10, align 8
  %247 = getelementptr inbounds %struct.hns_roce_v2_ud_send_wqe, %struct.hns_roce_v2_ud_send_wqe* %246, i32 0, i32 15
  %248 = load i64, i64* %247, align 8
  %249 = load i32, i32* @V2_UD_SEND_WQE_DMAC_2_M, align 4
  %250 = load i32, i32* @V2_UD_SEND_WQE_DMAC_2_S, align 4
  %251 = load %struct.hns_roce_ah*, %struct.hns_roce_ah** %9, align 8
  %252 = getelementptr inbounds %struct.hns_roce_ah, %struct.hns_roce_ah* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i32 0, i32 0
  %254 = load i32*, i32** %253, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 2
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @roce_set_field(i64 %248, i32 %249, i32 %250, i32 %256)
  %258 = load %struct.hns_roce_v2_ud_send_wqe*, %struct.hns_roce_v2_ud_send_wqe** %10, align 8
  %259 = getelementptr inbounds %struct.hns_roce_v2_ud_send_wqe, %struct.hns_roce_v2_ud_send_wqe* %258, i32 0, i32 15
  %260 = load i64, i64* %259, align 8
  %261 = load i32, i32* @V2_UD_SEND_WQE_DMAC_3_M, align 4
  %262 = load i32, i32* @V2_UD_SEND_WQE_DMAC_3_S, align 4
  %263 = load %struct.hns_roce_ah*, %struct.hns_roce_ah** %9, align 8
  %264 = getelementptr inbounds %struct.hns_roce_ah, %struct.hns_roce_ah* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 0
  %266 = load i32*, i32** %265, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 3
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @roce_set_field(i64 %260, i32 %261, i32 %262, i32 %268)
  %270 = load %struct.hns_roce_v2_ud_send_wqe*, %struct.hns_roce_v2_ud_send_wqe** %10, align 8
  %271 = getelementptr inbounds %struct.hns_roce_v2_ud_send_wqe, %struct.hns_roce_v2_ud_send_wqe* %270, i32 0, i32 8
  %272 = load i64, i64* %271, align 8
  %273 = load i32, i32* @V2_UD_SEND_WQE_BYTE_48_DMAC_4_M, align 4
  %274 = load i32, i32* @V2_UD_SEND_WQE_BYTE_48_DMAC_4_S, align 4
  %275 = load %struct.hns_roce_ah*, %struct.hns_roce_ah** %9, align 8
  %276 = getelementptr inbounds %struct.hns_roce_ah, %struct.hns_roce_ah* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %276, i32 0, i32 0
  %278 = load i32*, i32** %277, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 4
  %280 = load i32, i32* %279, align 4
  %281 = call i32 @roce_set_field(i64 %272, i32 %273, i32 %274, i32 %280)
  %282 = load %struct.hns_roce_v2_ud_send_wqe*, %struct.hns_roce_v2_ud_send_wqe** %10, align 8
  %283 = getelementptr inbounds %struct.hns_roce_v2_ud_send_wqe, %struct.hns_roce_v2_ud_send_wqe* %282, i32 0, i32 8
  %284 = load i64, i64* %283, align 8
  %285 = load i32, i32* @V2_UD_SEND_WQE_BYTE_48_DMAC_5_M, align 4
  %286 = load i32, i32* @V2_UD_SEND_WQE_BYTE_48_DMAC_5_S, align 4
  %287 = load %struct.hns_roce_ah*, %struct.hns_roce_ah** %9, align 8
  %288 = getelementptr inbounds %struct.hns_roce_ah, %struct.hns_roce_ah* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %288, i32 0, i32 0
  %290 = load i32*, i32** %289, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 5
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @roce_set_field(i64 %284, i32 %285, i32 %286, i32 %292)
  %294 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %295 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %294, i32 0, i32 0
  %296 = load i64*, i64** %295, align 8
  %297 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %12, align 8
  %298 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %297, i32 0, i32 3
  %299 = load i64, i64* %298, align 8
  %300 = getelementptr inbounds i64, i64* %296, i64 %299
  %301 = load i64, i64* %300, align 8
  %302 = inttoptr i64 %301 to i32*
  store i32* %302, i32** %27, align 8
  %303 = load %struct.hns_roce_ah*, %struct.hns_roce_ah** %9, align 8
  %304 = getelementptr inbounds %struct.hns_roce_ah, %struct.hns_roce_ah* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %304, i32 0, i32 0
  %306 = load i32*, i32** %305, align 8
  %307 = load i32*, i32** %27, align 8
  %308 = call i64 @ether_addr_equal_unaligned(i32* %306, i32* %307)
  %309 = icmp ne i64 %308, 0
  %310 = zext i1 %309 to i64
  %311 = select i1 %309, i32 1, i32 0
  store i32 %311, i32* %22, align 4
  %312 = load %struct.hns_roce_v2_ud_send_wqe*, %struct.hns_roce_v2_ud_send_wqe** %10, align 8
  %313 = getelementptr inbounds %struct.hns_roce_v2_ud_send_wqe, %struct.hns_roce_v2_ud_send_wqe* %312, i32 0, i32 9
  %314 = load i64, i64* %313, align 8
  %315 = load i32, i32* @V2_UD_SEND_WQE_BYTE_40_LBI_S, align 4
  %316 = load i32, i32* %22, align 4
  %317 = call i32 @roce_set_bit(i64 %314, i32 %315, i32 %316)
  %318 = load %struct.hns_roce_v2_ud_send_wqe*, %struct.hns_roce_v2_ud_send_wqe** %10, align 8
  %319 = getelementptr inbounds %struct.hns_roce_v2_ud_send_wqe, %struct.hns_roce_v2_ud_send_wqe* %318, i32 0, i32 1
  %320 = load i64, i64* %319, align 8
  %321 = load i32, i32* @V2_UD_SEND_WQE_BYTE_4_OPCODE_M, align 4
  %322 = load i32, i32* @V2_UD_SEND_WQE_BYTE_4_OPCODE_S, align 4
  %323 = load i32, i32* @HNS_ROCE_V2_WQE_OP_SEND, align 4
  %324 = call i32 @roce_set_field(i64 %320, i32 %321, i32 %322, i32 %323)
  store i32 0, i32* %29, align 4
  br label %325

325:                                              ; preds = %342, %217
  %326 = load i32, i32* %29, align 4
  %327 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %328 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = icmp slt i32 %326, %329
  br i1 %330, label %331, label %345

331:                                              ; preds = %325
  %332 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %333 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %332, i32 0, i32 3
  %334 = load %struct.TYPE_18__*, %struct.TYPE_18__** %333, align 8
  %335 = load i32, i32* %29, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %334, i64 %336
  %338 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  %340 = load i32, i32* %24, align 4
  %341 = add nsw i32 %340, %339
  store i32 %341, i32* %24, align 4
  br label %342

342:                                              ; preds = %331
  %343 = load i32, i32* %29, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %29, align 4
  br label %325

345:                                              ; preds = %325
  %346 = load %struct.hns_roce_v2_ud_send_wqe*, %struct.hns_roce_v2_ud_send_wqe** %10, align 8
  %347 = getelementptr inbounds %struct.hns_roce_v2_ud_send_wqe, %struct.hns_roce_v2_ud_send_wqe* %346, i32 0, i32 6
  %348 = load i8*, i8** %347, align 8
  %349 = call i32 @le32_to_cpu(i8* %348)
  %350 = load i32, i32* %24, align 4
  %351 = add nsw i32 %349, %350
  %352 = call i8* @cpu_to_le32(i32 %351)
  %353 = load %struct.hns_roce_v2_ud_send_wqe*, %struct.hns_roce_v2_ud_send_wqe** %10, align 8
  %354 = getelementptr inbounds %struct.hns_roce_v2_ud_send_wqe, %struct.hns_roce_v2_ud_send_wqe* %353, i32 0, i32 6
  store i8* %352, i8** %354, align 8
  %355 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %356 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 4
  switch i32 %357, label %367 [
    i32 129, label %358
    i32 132, label %358
  ]

358:                                              ; preds = %345, %345
  %359 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %360 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %359, i32 0, i32 4
  %361 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %360, i32 0, i32 1
  %362 = load i32, i32* %361, align 4
  %363 = call i32 @be32_to_cpu(i32 %362)
  %364 = call i8* @cpu_to_le32(i32 %363)
  %365 = load %struct.hns_roce_v2_ud_send_wqe*, %struct.hns_roce_v2_ud_send_wqe** %10, align 8
  %366 = getelementptr inbounds %struct.hns_roce_v2_ud_send_wqe, %struct.hns_roce_v2_ud_send_wqe* %365, i32 0, i32 5
  store i8* %364, i8** %366, align 8
  br label %370

367:                                              ; preds = %345
  %368 = load %struct.hns_roce_v2_ud_send_wqe*, %struct.hns_roce_v2_ud_send_wqe** %10, align 8
  %369 = getelementptr inbounds %struct.hns_roce_v2_ud_send_wqe, %struct.hns_roce_v2_ud_send_wqe* %368, i32 0, i32 5
  store i8* null, i8** %369, align 8
  br label %370

370:                                              ; preds = %367, %358
  %371 = load %struct.hns_roce_v2_ud_send_wqe*, %struct.hns_roce_v2_ud_send_wqe** %10, align 8
  %372 = getelementptr inbounds %struct.hns_roce_v2_ud_send_wqe, %struct.hns_roce_v2_ud_send_wqe* %371, i32 0, i32 1
  %373 = load i64, i64* %372, align 8
  %374 = load i32, i32* @V2_UD_SEND_WQE_BYTE_4_CQE_S, align 4
  %375 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %376 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %375, i32 0, i32 2
  %377 = load i32, i32* %376, align 8
  %378 = load i32, i32* @IB_SEND_SIGNALED, align 4
  %379 = and i32 %377, %378
  %380 = icmp ne i32 %379, 0
  %381 = zext i1 %380 to i64
  %382 = select i1 %380, i32 1, i32 0
  %383 = call i32 @roce_set_bit(i64 %373, i32 %374, i32 %382)
  %384 = load %struct.hns_roce_v2_ud_send_wqe*, %struct.hns_roce_v2_ud_send_wqe** %10, align 8
  %385 = getelementptr inbounds %struct.hns_roce_v2_ud_send_wqe, %struct.hns_roce_v2_ud_send_wqe* %384, i32 0, i32 1
  %386 = load i64, i64* %385, align 8
  %387 = load i32, i32* @V2_UD_SEND_WQE_BYTE_4_SE_S, align 4
  %388 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %389 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %388, i32 0, i32 2
  %390 = load i32, i32* %389, align 8
  %391 = load i32, i32* @IB_SEND_SOLICITED, align 4
  %392 = and i32 %390, %391
  %393 = icmp ne i32 %392, 0
  %394 = zext i1 %393 to i64
  %395 = select i1 %393, i32 1, i32 0
  %396 = call i32 @roce_set_bit(i64 %386, i32 %387, i32 %395)
  %397 = load %struct.hns_roce_v2_ud_send_wqe*, %struct.hns_roce_v2_ud_send_wqe** %10, align 8
  %398 = getelementptr inbounds %struct.hns_roce_v2_ud_send_wqe, %struct.hns_roce_v2_ud_send_wqe* %397, i32 0, i32 1
  %399 = load i64, i64* %398, align 8
  %400 = load i32, i32* @V2_UD_SEND_WQE_BYTE_4_OWNER_S, align 4
  %401 = load i32, i32* %18, align 4
  %402 = call i32 @roce_set_bit(i64 %399, i32 %400, i32 %401)
  %403 = load %struct.hns_roce_v2_ud_send_wqe*, %struct.hns_roce_v2_ud_send_wqe** %10, align 8
  %404 = getelementptr inbounds %struct.hns_roce_v2_ud_send_wqe, %struct.hns_roce_v2_ud_send_wqe* %403, i32 0, i32 0
  %405 = load i64, i64* %404, align 8
  %406 = load i32, i32* @V2_UD_SEND_WQE_BYTE_16_PD_M, align 4
  %407 = load i32, i32* @V2_UD_SEND_WQE_BYTE_16_PD_S, align 4
  %408 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %409 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %408, i32 0, i32 1
  %410 = load i32, i32* %409, align 8
  %411 = call %struct.TYPE_17__* @to_hr_pd(i32 %410)
  %412 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 4
  %414 = call i32 @roce_set_field(i64 %405, i32 %406, i32 %407, i32 %413)
  %415 = load %struct.hns_roce_v2_ud_send_wqe*, %struct.hns_roce_v2_ud_send_wqe** %10, align 8
  %416 = getelementptr inbounds %struct.hns_roce_v2_ud_send_wqe, %struct.hns_roce_v2_ud_send_wqe* %415, i32 0, i32 0
  %417 = load i64, i64* %416, align 8
  %418 = load i32, i32* @V2_UD_SEND_WQE_BYTE_16_SGE_NUM_M, align 4
  %419 = load i32, i32* @V2_UD_SEND_WQE_BYTE_16_SGE_NUM_S, align 4
  %420 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %421 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 8
  %423 = call i32 @roce_set_field(i64 %417, i32 %418, i32 %419, i32 %422)
  %424 = load %struct.hns_roce_v2_ud_send_wqe*, %struct.hns_roce_v2_ud_send_wqe** %10, align 8
  %425 = getelementptr inbounds %struct.hns_roce_v2_ud_send_wqe, %struct.hns_roce_v2_ud_send_wqe* %424, i32 0, i32 14
  %426 = load i64, i64* %425, align 8
  %427 = load i32, i32* @V2_UD_SEND_WQE_BYTE_20_MSG_START_SGE_IDX_M, align 4
  %428 = load i32, i32* @V2_UD_SEND_WQE_BYTE_20_MSG_START_SGE_IDX_S, align 4
  %429 = load i32, i32* %17, align 4
  %430 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %12, align 8
  %431 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %430, i32 0, i32 10
  %432 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %431, i32 0, i32 0
  %433 = load i32, i32* %432, align 8
  %434 = sub nsw i32 %433, 1
  %435 = and i32 %429, %434
  %436 = call i32 @roce_set_field(i64 %426, i32 %427, i32 %428, i32 %435)
  %437 = load %struct.hns_roce_v2_ud_send_wqe*, %struct.hns_roce_v2_ud_send_wqe** %10, align 8
  %438 = getelementptr inbounds %struct.hns_roce_v2_ud_send_wqe, %struct.hns_roce_v2_ud_send_wqe* %437, i32 0, i32 13
  %439 = load i64, i64* %438, align 8
  %440 = load i32, i32* @V2_UD_SEND_WQE_BYTE_24_UDPSPN_M, align 4
  %441 = load i32, i32* @V2_UD_SEND_WQE_BYTE_24_UDPSPN_S, align 4
  %442 = call i32 @roce_set_field(i64 %439, i32 %440, i32 %441, i32 0)
  %443 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %444 = call %struct.TYPE_16__* @ud_wr(%struct.ib_send_wr* %443)
  %445 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %444, i32 0, i32 0
  %446 = load i32, i32* %445, align 4
  %447 = and i32 %446, -2147483648
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %449, label %453

449:                                              ; preds = %370
  %450 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %12, align 8
  %451 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %450, i32 0, i32 4
  %452 = load i32, i32* %451, align 8
  br label %458

453:                                              ; preds = %370
  %454 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %455 = call %struct.TYPE_16__* @ud_wr(%struct.ib_send_wr* %454)
  %456 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %455, i32 0, i32 0
  %457 = load i32, i32* %456, align 4
  br label %458

458:                                              ; preds = %453, %449
  %459 = phi i32 [ %452, %449 ], [ %457, %453 ]
  %460 = call i8* @cpu_to_le32(i32 %459)
  %461 = load %struct.hns_roce_v2_ud_send_wqe*, %struct.hns_roce_v2_ud_send_wqe** %10, align 8
  %462 = getelementptr inbounds %struct.hns_roce_v2_ud_send_wqe, %struct.hns_roce_v2_ud_send_wqe* %461, i32 0, i32 12
  store i8* %460, i8** %462, align 8
  %463 = load %struct.hns_roce_v2_ud_send_wqe*, %struct.hns_roce_v2_ud_send_wqe** %10, align 8
  %464 = getelementptr inbounds %struct.hns_roce_v2_ud_send_wqe, %struct.hns_roce_v2_ud_send_wqe* %463, i32 0, i32 11
  %465 = load i64, i64* %464, align 8
  %466 = load i32, i32* @V2_UD_SEND_WQE_BYTE_32_DQPN_M, align 4
  %467 = load i32, i32* @V2_UD_SEND_WQE_BYTE_32_DQPN_S, align 4
  %468 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %469 = call %struct.TYPE_16__* @ud_wr(%struct.ib_send_wr* %468)
  %470 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %469, i32 0, i32 1
  %471 = load i32, i32* %470, align 4
  %472 = call i32 @roce_set_field(i64 %465, i32 %466, i32 %467, i32 %471)
  %473 = load %struct.hns_roce_v2_ud_send_wqe*, %struct.hns_roce_v2_ud_send_wqe** %10, align 8
  %474 = getelementptr inbounds %struct.hns_roce_v2_ud_send_wqe, %struct.hns_roce_v2_ud_send_wqe* %473, i32 0, i32 10
  %475 = load i64, i64* %474, align 8
  %476 = load i32, i32* @V2_UD_SEND_WQE_BYTE_36_VLAN_M, align 4
  %477 = load i32, i32* @V2_UD_SEND_WQE_BYTE_36_VLAN_S, align 4
  %478 = load %struct.hns_roce_ah*, %struct.hns_roce_ah** %9, align 8
  %479 = getelementptr inbounds %struct.hns_roce_ah, %struct.hns_roce_ah* %478, i32 0, i32 0
  %480 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %479, i32 0, i32 8
  %481 = load i32, i32* %480, align 8
  %482 = call i32 @le16_to_cpu(i32 %481)
  %483 = call i32 @roce_set_field(i64 %475, i32 %476, i32 %477, i32 %482)
  %484 = load %struct.hns_roce_v2_ud_send_wqe*, %struct.hns_roce_v2_ud_send_wqe** %10, align 8
  %485 = getelementptr inbounds %struct.hns_roce_v2_ud_send_wqe, %struct.hns_roce_v2_ud_send_wqe* %484, i32 0, i32 10
  %486 = load i64, i64* %485, align 8
  %487 = load i32, i32* @V2_UD_SEND_WQE_BYTE_36_HOPLIMIT_M, align 4
  %488 = load i32, i32* @V2_UD_SEND_WQE_BYTE_36_HOPLIMIT_S, align 4
  %489 = load %struct.hns_roce_ah*, %struct.hns_roce_ah** %9, align 8
  %490 = getelementptr inbounds %struct.hns_roce_ah, %struct.hns_roce_ah* %489, i32 0, i32 0
  %491 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %490, i32 0, i32 1
  %492 = load i32, i32* %491, align 8
  %493 = call i32 @roce_set_field(i64 %486, i32 %487, i32 %488, i32 %492)
  %494 = load %struct.hns_roce_v2_ud_send_wqe*, %struct.hns_roce_v2_ud_send_wqe** %10, align 8
  %495 = getelementptr inbounds %struct.hns_roce_v2_ud_send_wqe, %struct.hns_roce_v2_ud_send_wqe* %494, i32 0, i32 10
  %496 = load i64, i64* %495, align 8
  %497 = load i32, i32* @V2_UD_SEND_WQE_BYTE_36_TCLASS_M, align 4
  %498 = load i32, i32* @V2_UD_SEND_WQE_BYTE_36_TCLASS_S, align 4
  %499 = load %struct.hns_roce_ah*, %struct.hns_roce_ah** %9, align 8
  %500 = getelementptr inbounds %struct.hns_roce_ah, %struct.hns_roce_ah* %499, i32 0, i32 0
  %501 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %500, i32 0, i32 2
  %502 = load i32, i32* %501, align 4
  %503 = call i32 @roce_set_field(i64 %496, i32 %497, i32 %498, i32 %502)
  %504 = load %struct.hns_roce_v2_ud_send_wqe*, %struct.hns_roce_v2_ud_send_wqe** %10, align 8
  %505 = getelementptr inbounds %struct.hns_roce_v2_ud_send_wqe, %struct.hns_roce_v2_ud_send_wqe* %504, i32 0, i32 9
  %506 = load i64, i64* %505, align 8
  %507 = load i32, i32* @V2_UD_SEND_WQE_BYTE_40_FLOW_LABEL_M, align 4
  %508 = load i32, i32* @V2_UD_SEND_WQE_BYTE_40_FLOW_LABEL_S, align 4
  %509 = load %struct.hns_roce_ah*, %struct.hns_roce_ah** %9, align 8
  %510 = getelementptr inbounds %struct.hns_roce_ah, %struct.hns_roce_ah* %509, i32 0, i32 0
  %511 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %510, i32 0, i32 3
  %512 = load i32, i32* %511, align 8
  %513 = call i32 @roce_set_field(i64 %506, i32 %507, i32 %508, i32 %512)
  %514 = load %struct.hns_roce_v2_ud_send_wqe*, %struct.hns_roce_v2_ud_send_wqe** %10, align 8
  %515 = getelementptr inbounds %struct.hns_roce_v2_ud_send_wqe, %struct.hns_roce_v2_ud_send_wqe* %514, i32 0, i32 9
  %516 = load i64, i64* %515, align 8
  %517 = load i32, i32* @V2_UD_SEND_WQE_BYTE_40_SL_M, align 4
  %518 = load i32, i32* @V2_UD_SEND_WQE_BYTE_40_SL_S, align 4
  %519 = load %struct.hns_roce_ah*, %struct.hns_roce_ah** %9, align 8
  %520 = getelementptr inbounds %struct.hns_roce_ah, %struct.hns_roce_ah* %519, i32 0, i32 0
  %521 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %520, i32 0, i32 4
  %522 = load i32, i32* %521, align 4
  %523 = call i32 @roce_set_field(i64 %516, i32 %517, i32 %518, i32 %522)
  %524 = load %struct.hns_roce_v2_ud_send_wqe*, %struct.hns_roce_v2_ud_send_wqe** %10, align 8
  %525 = getelementptr inbounds %struct.hns_roce_v2_ud_send_wqe, %struct.hns_roce_v2_ud_send_wqe* %524, i32 0, i32 9
  %526 = load i64, i64* %525, align 8
  %527 = load i32, i32* @V2_UD_SEND_WQE_BYTE_40_PORTN_M, align 4
  %528 = load i32, i32* @V2_UD_SEND_WQE_BYTE_40_PORTN_S, align 4
  %529 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %12, align 8
  %530 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %529, i32 0, i32 3
  %531 = load i64, i64* %530, align 8
  %532 = trunc i64 %531 to i32
  %533 = call i32 @roce_set_field(i64 %526, i32 %527, i32 %528, i32 %532)
  %534 = load %struct.hns_roce_v2_ud_send_wqe*, %struct.hns_roce_v2_ud_send_wqe** %10, align 8
  %535 = getelementptr inbounds %struct.hns_roce_v2_ud_send_wqe, %struct.hns_roce_v2_ud_send_wqe* %534, i32 0, i32 9
  %536 = load i64, i64* %535, align 8
  %537 = load i32, i32* @V2_UD_SEND_WQE_BYTE_40_UD_VLAN_EN_S, align 4
  %538 = load %struct.hns_roce_ah*, %struct.hns_roce_ah** %9, align 8
  %539 = getelementptr inbounds %struct.hns_roce_ah, %struct.hns_roce_ah* %538, i32 0, i32 0
  %540 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %539, i32 0, i32 7
  %541 = load i64, i64* %540, align 8
  %542 = icmp ne i64 %541, 0
  %543 = zext i1 %542 to i64
  %544 = select i1 %542, i32 1, i32 0
  %545 = call i32 @roce_set_bit(i64 %536, i32 %537, i32 %544)
  %546 = load %struct.hns_roce_v2_ud_send_wqe*, %struct.hns_roce_v2_ud_send_wqe** %10, align 8
  %547 = getelementptr inbounds %struct.hns_roce_v2_ud_send_wqe, %struct.hns_roce_v2_ud_send_wqe* %546, i32 0, i32 8
  %548 = load i64, i64* %547, align 8
  %549 = load i32, i32* @V2_UD_SEND_WQE_BYTE_48_SGID_INDX_M, align 4
  %550 = load i32, i32* @V2_UD_SEND_WQE_BYTE_48_SGID_INDX_S, align 4
  %551 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %552 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %12, align 8
  %553 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %552, i32 0, i32 9
  %554 = load i32, i32* %553, align 4
  %555 = load %struct.hns_roce_ah*, %struct.hns_roce_ah** %9, align 8
  %556 = getelementptr inbounds %struct.hns_roce_ah, %struct.hns_roce_ah* %555, i32 0, i32 0
  %557 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %556, i32 0, i32 6
  %558 = load i32, i32* %557, align 8
  %559 = call i32 @hns_get_gid_index(%struct.hns_roce_dev* %551, i32 %554, i32 %558)
  %560 = call i32 @roce_set_field(i64 %548, i32 %549, i32 %550, i32 %559)
  %561 = load %struct.hns_roce_v2_ud_send_wqe*, %struct.hns_roce_v2_ud_send_wqe** %10, align 8
  %562 = getelementptr inbounds %struct.hns_roce_v2_ud_send_wqe, %struct.hns_roce_v2_ud_send_wqe* %561, i32 0, i32 7
  %563 = load i32*, i32** %562, align 8
  %564 = getelementptr inbounds i32, i32* %563, i64 0
  %565 = load %struct.hns_roce_ah*, %struct.hns_roce_ah** %9, align 8
  %566 = getelementptr inbounds %struct.hns_roce_ah, %struct.hns_roce_ah* %565, i32 0, i32 0
  %567 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %566, i32 0, i32 5
  %568 = load i32*, i32** %567, align 8
  %569 = getelementptr inbounds i32, i32* %568, i64 0
  %570 = load i32, i32* @GID_LEN_V2, align 4
  %571 = call i32 @memcpy(i32* %564, i32* %569, i32 %570)
  %572 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %12, align 8
  %573 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %574 = call i32 @set_extend_sge(%struct.hns_roce_qp* %572, %struct.ib_send_wr* %573, i32* %17)
  %575 = load i32, i32* %20, align 4
  %576 = add i32 %575, 1
  store i32 %576, i32* %20, align 4
  br label %886

577:                                              ; preds = %167
  %578 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %579 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %578, i32 0, i32 0
  %580 = load i64, i64* %579, align 8
  %581 = load i64, i64* @IB_QPT_RC, align 8
  %582 = icmp eq i64 %580, %581
  br i1 %582, label %583, label %870

583:                                              ; preds = %577
  %584 = load i8*, i8** %21, align 8
  %585 = bitcast i8* %584 to %struct.hns_roce_v2_rc_send_wqe*
  store %struct.hns_roce_v2_rc_send_wqe* %585, %struct.hns_roce_v2_rc_send_wqe** %11, align 8
  %586 = load %struct.hns_roce_v2_rc_send_wqe*, %struct.hns_roce_v2_rc_send_wqe** %11, align 8
  %587 = bitcast %struct.hns_roce_v2_rc_send_wqe* %586 to %struct.hns_roce_v2_ud_send_wqe*
  %588 = call i32 @memset(%struct.hns_roce_v2_ud_send_wqe* %587, i32 0, i32 128)
  store i32 0, i32* %29, align 4
  br label %589

589:                                              ; preds = %606, %583
  %590 = load i32, i32* %29, align 4
  %591 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %592 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %591, i32 0, i32 0
  %593 = load i32, i32* %592, align 8
  %594 = icmp slt i32 %590, %593
  br i1 %594, label %595, label %609

595:                                              ; preds = %589
  %596 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %597 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %596, i32 0, i32 3
  %598 = load %struct.TYPE_18__*, %struct.TYPE_18__** %597, align 8
  %599 = load i32, i32* %29, align 4
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %598, i64 %600
  %602 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %601, i32 0, i32 0
  %603 = load i32, i32* %602, align 4
  %604 = load i32, i32* %24, align 4
  %605 = add nsw i32 %604, %603
  store i32 %605, i32* %24, align 4
  br label %606

606:                                              ; preds = %595
  %607 = load i32, i32* %29, align 4
  %608 = add nsw i32 %607, 1
  store i32 %608, i32* %29, align 4
  br label %589

609:                                              ; preds = %589
  %610 = load %struct.hns_roce_v2_rc_send_wqe*, %struct.hns_roce_v2_rc_send_wqe** %11, align 8
  %611 = getelementptr inbounds %struct.hns_roce_v2_rc_send_wqe, %struct.hns_roce_v2_rc_send_wqe* %610, i32 0, i32 6
  %612 = load i8*, i8** %611, align 8
  %613 = call i32 @le32_to_cpu(i8* %612)
  %614 = load i32, i32* %24, align 4
  %615 = add nsw i32 %613, %614
  %616 = call i8* @cpu_to_le32(i32 %615)
  %617 = load %struct.hns_roce_v2_rc_send_wqe*, %struct.hns_roce_v2_rc_send_wqe** %11, align 8
  %618 = getelementptr inbounds %struct.hns_roce_v2_rc_send_wqe, %struct.hns_roce_v2_rc_send_wqe* %617, i32 0, i32 6
  store i8* %616, i8** %618, align 8
  %619 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %620 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %619, i32 0, i32 1
  %621 = load i32, i32* %620, align 4
  switch i32 %621, label %639 [
    i32 129, label %622
    i32 132, label %622
    i32 128, label %631
  ]

622:                                              ; preds = %609, %609
  %623 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %624 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %623, i32 0, i32 4
  %625 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %624, i32 0, i32 1
  %626 = load i32, i32* %625, align 4
  %627 = call i32 @be32_to_cpu(i32 %626)
  %628 = call i8* @cpu_to_le32(i32 %627)
  %629 = load %struct.hns_roce_v2_rc_send_wqe*, %struct.hns_roce_v2_rc_send_wqe** %11, align 8
  %630 = getelementptr inbounds %struct.hns_roce_v2_rc_send_wqe, %struct.hns_roce_v2_rc_send_wqe* %629, i32 0, i32 5
  store i8* %628, i8** %630, align 8
  br label %642

631:                                              ; preds = %609
  %632 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %633 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %632, i32 0, i32 4
  %634 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %633, i32 0, i32 0
  %635 = load i32, i32* %634, align 8
  %636 = call i8* @cpu_to_le32(i32 %635)
  %637 = load %struct.hns_roce_v2_rc_send_wqe*, %struct.hns_roce_v2_rc_send_wqe** %11, align 8
  %638 = getelementptr inbounds %struct.hns_roce_v2_rc_send_wqe, %struct.hns_roce_v2_rc_send_wqe* %637, i32 0, i32 4
  store i8* %636, i8** %638, align 8
  br label %642

639:                                              ; preds = %609
  %640 = load %struct.hns_roce_v2_rc_send_wqe*, %struct.hns_roce_v2_rc_send_wqe** %11, align 8
  %641 = getelementptr inbounds %struct.hns_roce_v2_rc_send_wqe, %struct.hns_roce_v2_rc_send_wqe* %640, i32 0, i32 5
  store i8* null, i8** %641, align 8
  br label %642

642:                                              ; preds = %639, %631, %622
  %643 = load %struct.hns_roce_v2_rc_send_wqe*, %struct.hns_roce_v2_rc_send_wqe** %11, align 8
  %644 = getelementptr inbounds %struct.hns_roce_v2_rc_send_wqe, %struct.hns_roce_v2_rc_send_wqe* %643, i32 0, i32 1
  %645 = load i64, i64* %644, align 8
  %646 = load i32, i32* @V2_RC_SEND_WQE_BYTE_4_FENCE_S, align 4
  %647 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %648 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %647, i32 0, i32 2
  %649 = load i32, i32* %648, align 8
  %650 = load i32, i32* @IB_SEND_FENCE, align 4
  %651 = and i32 %649, %650
  %652 = icmp ne i32 %651, 0
  %653 = zext i1 %652 to i64
  %654 = select i1 %652, i32 1, i32 0
  %655 = call i32 @roce_set_bit(i64 %645, i32 %646, i32 %654)
  %656 = load %struct.hns_roce_v2_rc_send_wqe*, %struct.hns_roce_v2_rc_send_wqe** %11, align 8
  %657 = getelementptr inbounds %struct.hns_roce_v2_rc_send_wqe, %struct.hns_roce_v2_rc_send_wqe* %656, i32 0, i32 1
  %658 = load i64, i64* %657, align 8
  %659 = load i32, i32* @V2_RC_SEND_WQE_BYTE_4_SE_S, align 4
  %660 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %661 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %660, i32 0, i32 2
  %662 = load i32, i32* %661, align 8
  %663 = load i32, i32* @IB_SEND_SOLICITED, align 4
  %664 = and i32 %662, %663
  %665 = icmp ne i32 %664, 0
  %666 = zext i1 %665 to i64
  %667 = select i1 %665, i32 1, i32 0
  %668 = call i32 @roce_set_bit(i64 %658, i32 %659, i32 %667)
  %669 = load %struct.hns_roce_v2_rc_send_wqe*, %struct.hns_roce_v2_rc_send_wqe** %11, align 8
  %670 = getelementptr inbounds %struct.hns_roce_v2_rc_send_wqe, %struct.hns_roce_v2_rc_send_wqe* %669, i32 0, i32 1
  %671 = load i64, i64* %670, align 8
  %672 = load i32, i32* @V2_RC_SEND_WQE_BYTE_4_CQE_S, align 4
  %673 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %674 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %673, i32 0, i32 2
  %675 = load i32, i32* %674, align 8
  %676 = load i32, i32* @IB_SEND_SIGNALED, align 4
  %677 = and i32 %675, %676
  %678 = icmp ne i32 %677, 0
  %679 = zext i1 %678 to i64
  %680 = select i1 %678, i32 1, i32 0
  %681 = call i32 @roce_set_bit(i64 %671, i32 %672, i32 %680)
  %682 = load %struct.hns_roce_v2_rc_send_wqe*, %struct.hns_roce_v2_rc_send_wqe** %11, align 8
  %683 = getelementptr inbounds %struct.hns_roce_v2_rc_send_wqe, %struct.hns_roce_v2_rc_send_wqe* %682, i32 0, i32 1
  %684 = load i64, i64* %683, align 8
  %685 = load i32, i32* @V2_RC_SEND_WQE_BYTE_4_OWNER_S, align 4
  %686 = load i32, i32* %18, align 4
  %687 = call i32 @roce_set_bit(i64 %684, i32 %685, i32 %686)
  %688 = load i8*, i8** %21, align 8
  %689 = getelementptr i8, i8* %688, i64 128
  store i8* %689, i8** %21, align 8
  %690 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %691 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %690, i32 0, i32 1
  %692 = load i32, i32* %691, align 4
  switch i32 %692, label %807 [
    i32 134, label %693
    i32 133, label %709
    i32 132, label %725
    i32 130, label %741
    i32 128, label %743
    i32 129, label %745
    i32 137, label %747
    i32 131, label %761
    i32 139, label %771
    i32 138, label %787
    i32 136, label %803
    i32 135, label %805
  ]

693:                                              ; preds = %642
  %694 = load i32, i32* @HNS_ROCE_V2_WQE_OP_RDMA_READ, align 4
  store i32 %694, i32* %26, align 4
  %695 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %696 = call %struct.TYPE_20__* @rdma_wr(%struct.ib_send_wr* %695)
  %697 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %696, i32 0, i32 0
  %698 = load i32, i32* %697, align 4
  %699 = call i8* @cpu_to_le32(i32 %698)
  %700 = load %struct.hns_roce_v2_rc_send_wqe*, %struct.hns_roce_v2_rc_send_wqe** %11, align 8
  %701 = getelementptr inbounds %struct.hns_roce_v2_rc_send_wqe, %struct.hns_roce_v2_rc_send_wqe* %700, i32 0, i32 3
  store i8* %699, i8** %701, align 8
  %702 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %703 = call %struct.TYPE_20__* @rdma_wr(%struct.ib_send_wr* %702)
  %704 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %703, i32 0, i32 1
  %705 = load i32, i32* %704, align 4
  %706 = call i8* @cpu_to_le64(i32 %705)
  %707 = load %struct.hns_roce_v2_rc_send_wqe*, %struct.hns_roce_v2_rc_send_wqe** %11, align 8
  %708 = getelementptr inbounds %struct.hns_roce_v2_rc_send_wqe, %struct.hns_roce_v2_rc_send_wqe* %707, i32 0, i32 2
  store i8* %706, i8** %708, align 8
  br label %809

709:                                              ; preds = %642
  %710 = load i32, i32* @HNS_ROCE_V2_WQE_OP_RDMA_WRITE, align 4
  store i32 %710, i32* %26, align 4
  %711 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %712 = call %struct.TYPE_20__* @rdma_wr(%struct.ib_send_wr* %711)
  %713 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %712, i32 0, i32 0
  %714 = load i32, i32* %713, align 4
  %715 = call i8* @cpu_to_le32(i32 %714)
  %716 = load %struct.hns_roce_v2_rc_send_wqe*, %struct.hns_roce_v2_rc_send_wqe** %11, align 8
  %717 = getelementptr inbounds %struct.hns_roce_v2_rc_send_wqe, %struct.hns_roce_v2_rc_send_wqe* %716, i32 0, i32 3
  store i8* %715, i8** %717, align 8
  %718 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %719 = call %struct.TYPE_20__* @rdma_wr(%struct.ib_send_wr* %718)
  %720 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %719, i32 0, i32 1
  %721 = load i32, i32* %720, align 4
  %722 = call i8* @cpu_to_le64(i32 %721)
  %723 = load %struct.hns_roce_v2_rc_send_wqe*, %struct.hns_roce_v2_rc_send_wqe** %11, align 8
  %724 = getelementptr inbounds %struct.hns_roce_v2_rc_send_wqe, %struct.hns_roce_v2_rc_send_wqe* %723, i32 0, i32 2
  store i8* %722, i8** %724, align 8
  br label %809

725:                                              ; preds = %642
  %726 = load i32, i32* @HNS_ROCE_V2_WQE_OP_RDMA_WRITE_WITH_IMM, align 4
  store i32 %726, i32* %26, align 4
  %727 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %728 = call %struct.TYPE_20__* @rdma_wr(%struct.ib_send_wr* %727)
  %729 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %728, i32 0, i32 0
  %730 = load i32, i32* %729, align 4
  %731 = call i8* @cpu_to_le32(i32 %730)
  %732 = load %struct.hns_roce_v2_rc_send_wqe*, %struct.hns_roce_v2_rc_send_wqe** %11, align 8
  %733 = getelementptr inbounds %struct.hns_roce_v2_rc_send_wqe, %struct.hns_roce_v2_rc_send_wqe* %732, i32 0, i32 3
  store i8* %731, i8** %733, align 8
  %734 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %735 = call %struct.TYPE_20__* @rdma_wr(%struct.ib_send_wr* %734)
  %736 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %735, i32 0, i32 1
  %737 = load i32, i32* %736, align 4
  %738 = call i8* @cpu_to_le64(i32 %737)
  %739 = load %struct.hns_roce_v2_rc_send_wqe*, %struct.hns_roce_v2_rc_send_wqe** %11, align 8
  %740 = getelementptr inbounds %struct.hns_roce_v2_rc_send_wqe, %struct.hns_roce_v2_rc_send_wqe* %739, i32 0, i32 2
  store i8* %738, i8** %740, align 8
  br label %809

741:                                              ; preds = %642
  %742 = load i32, i32* @HNS_ROCE_V2_WQE_OP_SEND, align 4
  store i32 %742, i32* %26, align 4
  br label %809

743:                                              ; preds = %642
  %744 = load i32, i32* @HNS_ROCE_V2_WQE_OP_SEND_WITH_INV, align 4
  store i32 %744, i32* %26, align 4
  br label %809

745:                                              ; preds = %642
  %746 = load i32, i32* @HNS_ROCE_V2_WQE_OP_SEND_WITH_IMM, align 4
  store i32 %746, i32* %26, align 4
  br label %809

747:                                              ; preds = %642
  %748 = load i32, i32* @HNS_ROCE_V2_WQE_OP_LOCAL_INV, align 4
  store i32 %748, i32* %26, align 4
  %749 = load %struct.hns_roce_v2_rc_send_wqe*, %struct.hns_roce_v2_rc_send_wqe** %11, align 8
  %750 = getelementptr inbounds %struct.hns_roce_v2_rc_send_wqe, %struct.hns_roce_v2_rc_send_wqe* %749, i32 0, i32 1
  %751 = load i64, i64* %750, align 8
  %752 = load i32, i32* @V2_RC_SEND_WQE_BYTE_4_SO_S, align 4
  %753 = call i32 @roce_set_bit(i64 %751, i32 %752, i32 1)
  %754 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %755 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %754, i32 0, i32 4
  %756 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %755, i32 0, i32 0
  %757 = load i32, i32* %756, align 8
  %758 = call i8* @cpu_to_le32(i32 %757)
  %759 = load %struct.hns_roce_v2_rc_send_wqe*, %struct.hns_roce_v2_rc_send_wqe** %11, align 8
  %760 = getelementptr inbounds %struct.hns_roce_v2_rc_send_wqe, %struct.hns_roce_v2_rc_send_wqe* %759, i32 0, i32 4
  store i8* %758, i8** %760, align 8
  br label %809

761:                                              ; preds = %642
  %762 = load i32, i32* @HNS_ROCE_V2_WQE_OP_FAST_REG_PMR, align 4
  store i32 %762, i32* %26, align 4
  %763 = load i8*, i8** %21, align 8
  %764 = bitcast i8* %763 to %struct.hns_roce_wqe_frmr_seg*
  store %struct.hns_roce_wqe_frmr_seg* %764, %struct.hns_roce_wqe_frmr_seg** %13, align 8
  %765 = load %struct.hns_roce_v2_rc_send_wqe*, %struct.hns_roce_v2_rc_send_wqe** %11, align 8
  %766 = bitcast %struct.hns_roce_v2_rc_send_wqe* %765 to %struct.hns_roce_v2_ud_send_wqe*
  %767 = load %struct.hns_roce_wqe_frmr_seg*, %struct.hns_roce_wqe_frmr_seg** %13, align 8
  %768 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %769 = call i32 @reg_wr(%struct.ib_send_wr* %768)
  %770 = call i32 @set_frmr_seg(%struct.hns_roce_v2_ud_send_wqe* %766, %struct.hns_roce_wqe_frmr_seg* %767, i32 %769)
  br label %809

771:                                              ; preds = %642
  %772 = load i32, i32* @HNS_ROCE_V2_WQE_OP_ATOM_CMP_AND_SWAP, align 4
  store i32 %772, i32* %26, align 4
  %773 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %774 = call %struct.TYPE_19__* @atomic_wr(%struct.ib_send_wr* %773)
  %775 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %774, i32 0, i32 0
  %776 = load i32, i32* %775, align 4
  %777 = call i8* @cpu_to_le32(i32 %776)
  %778 = load %struct.hns_roce_v2_rc_send_wqe*, %struct.hns_roce_v2_rc_send_wqe** %11, align 8
  %779 = getelementptr inbounds %struct.hns_roce_v2_rc_send_wqe, %struct.hns_roce_v2_rc_send_wqe* %778, i32 0, i32 3
  store i8* %777, i8** %779, align 8
  %780 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %781 = call %struct.TYPE_19__* @atomic_wr(%struct.ib_send_wr* %780)
  %782 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %781, i32 0, i32 1
  %783 = load i32, i32* %782, align 4
  %784 = call i8* @cpu_to_le64(i32 %783)
  %785 = load %struct.hns_roce_v2_rc_send_wqe*, %struct.hns_roce_v2_rc_send_wqe** %11, align 8
  %786 = getelementptr inbounds %struct.hns_roce_v2_rc_send_wqe, %struct.hns_roce_v2_rc_send_wqe* %785, i32 0, i32 2
  store i8* %784, i8** %786, align 8
  br label %809

787:                                              ; preds = %642
  %788 = load i32, i32* @HNS_ROCE_V2_WQE_OP_ATOM_FETCH_AND_ADD, align 4
  store i32 %788, i32* %26, align 4
  %789 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %790 = call %struct.TYPE_19__* @atomic_wr(%struct.ib_send_wr* %789)
  %791 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %790, i32 0, i32 0
  %792 = load i32, i32* %791, align 4
  %793 = call i8* @cpu_to_le32(i32 %792)
  %794 = load %struct.hns_roce_v2_rc_send_wqe*, %struct.hns_roce_v2_rc_send_wqe** %11, align 8
  %795 = getelementptr inbounds %struct.hns_roce_v2_rc_send_wqe, %struct.hns_roce_v2_rc_send_wqe* %794, i32 0, i32 3
  store i8* %793, i8** %795, align 8
  %796 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %797 = call %struct.TYPE_19__* @atomic_wr(%struct.ib_send_wr* %796)
  %798 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %797, i32 0, i32 1
  %799 = load i32, i32* %798, align 4
  %800 = call i8* @cpu_to_le64(i32 %799)
  %801 = load %struct.hns_roce_v2_rc_send_wqe*, %struct.hns_roce_v2_rc_send_wqe** %11, align 8
  %802 = getelementptr inbounds %struct.hns_roce_v2_rc_send_wqe, %struct.hns_roce_v2_rc_send_wqe* %801, i32 0, i32 2
  store i8* %800, i8** %802, align 8
  br label %809

803:                                              ; preds = %642
  %804 = load i32, i32* @HNS_ROCE_V2_WQE_OP_ATOM_MSK_CMP_AND_SWAP, align 4
  store i32 %804, i32* %26, align 4
  br label %809

805:                                              ; preds = %642
  %806 = load i32, i32* @HNS_ROCE_V2_WQE_OP_ATOM_MSK_FETCH_AND_ADD, align 4
  store i32 %806, i32* %26, align 4
  br label %809

807:                                              ; preds = %642
  %808 = load i32, i32* @HNS_ROCE_V2_WQE_OP_MASK, align 4
  store i32 %808, i32* %26, align 4
  br label %809

809:                                              ; preds = %807, %805, %803, %787, %771, %761, %747, %745, %743, %741, %725, %709, %693
  %810 = load %struct.hns_roce_v2_rc_send_wqe*, %struct.hns_roce_v2_rc_send_wqe** %11, align 8
  %811 = getelementptr inbounds %struct.hns_roce_v2_rc_send_wqe, %struct.hns_roce_v2_rc_send_wqe* %810, i32 0, i32 1
  %812 = load i64, i64* %811, align 8
  %813 = load i32, i32* @V2_RC_SEND_WQE_BYTE_4_OPCODE_M, align 4
  %814 = load i32, i32* @V2_RC_SEND_WQE_BYTE_4_OPCODE_S, align 4
  %815 = load i32, i32* %26, align 4
  %816 = call i32 @roce_set_field(i64 %812, i32 %813, i32 %814, i32 %815)
  %817 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %818 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %817, i32 0, i32 1
  %819 = load i32, i32* %818, align 4
  %820 = icmp eq i32 %819, 139
  br i1 %820, label %826, label %821

821:                                              ; preds = %809
  %822 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %823 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %822, i32 0, i32 1
  %824 = load i32, i32* %823, align 4
  %825 = icmp eq i32 %824, 138
  br i1 %825, label %826, label %849

826:                                              ; preds = %821, %809
  %827 = load i8*, i8** %21, align 8
  %828 = bitcast i8* %827 to %struct.hns_roce_v2_wqe_data_seg*
  store %struct.hns_roce_v2_wqe_data_seg* %828, %struct.hns_roce_v2_wqe_data_seg** %30, align 8
  %829 = load %struct.hns_roce_v2_wqe_data_seg*, %struct.hns_roce_v2_wqe_data_seg** %30, align 8
  %830 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %831 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %830, i32 0, i32 3
  %832 = load %struct.TYPE_18__*, %struct.TYPE_18__** %831, align 8
  %833 = call i32 @set_data_seg_v2(%struct.hns_roce_v2_wqe_data_seg* %829, %struct.TYPE_18__* %832)
  %834 = load i8*, i8** %21, align 8
  %835 = getelementptr i8, i8* %834, i64 4
  store i8* %835, i8** %21, align 8
  %836 = load i8*, i8** %21, align 8
  %837 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %838 = call %struct.TYPE_19__* @atomic_wr(%struct.ib_send_wr* %837)
  %839 = call i32 @set_atomic_seg(i8* %836, %struct.TYPE_19__* %838)
  %840 = load %struct.hns_roce_v2_rc_send_wqe*, %struct.hns_roce_v2_rc_send_wqe** %11, align 8
  %841 = getelementptr inbounds %struct.hns_roce_v2_rc_send_wqe, %struct.hns_roce_v2_rc_send_wqe* %840, i32 0, i32 0
  %842 = load i64, i64* %841, align 8
  %843 = load i32, i32* @V2_RC_SEND_WQE_BYTE_16_SGE_NUM_M, align 4
  %844 = load i32, i32* @V2_RC_SEND_WQE_BYTE_16_SGE_NUM_S, align 4
  %845 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %846 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %845, i32 0, i32 0
  %847 = load i32, i32* %846, align 8
  %848 = call i32 @roce_set_field(i64 %842, i32 %843, i32 %844, i32 %847)
  br label %867

849:                                              ; preds = %821
  %850 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %851 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %850, i32 0, i32 1
  %852 = load i32, i32* %851, align 4
  %853 = icmp ne i32 %852, 131
  br i1 %853, label %854, label %866

854:                                              ; preds = %849
  %855 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %856 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %857 = load %struct.hns_roce_v2_rc_send_wqe*, %struct.hns_roce_v2_rc_send_wqe** %11, align 8
  %858 = bitcast %struct.hns_roce_v2_rc_send_wqe* %857 to %struct.hns_roce_v2_ud_send_wqe*
  %859 = load i8*, i8** %21, align 8
  %860 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  %861 = call i32 @set_rwqe_data_seg(%struct.ib_qp* %855, %struct.ib_send_wr* %856, %struct.hns_roce_v2_ud_send_wqe* %858, i8* %859, i32* %17, %struct.ib_send_wr** %860)
  store i32 %861, i32* %25, align 4
  %862 = load i32, i32* %25, align 4
  %863 = icmp ne i32 %862, 0
  br i1 %863, label %864, label %865

864:                                              ; preds = %854
  br label %894

865:                                              ; preds = %854
  br label %866

866:                                              ; preds = %865, %849
  br label %867

867:                                              ; preds = %866, %826
  %868 = load i32, i32* %20, align 4
  %869 = add i32 %868, 1
  store i32 %869, i32* %20, align 4
  br label %885

870:                                              ; preds = %577
  %871 = load %struct.device*, %struct.device** %14, align 8
  %872 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %873 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %872, i32 0, i32 0
  %874 = load i64, i64* %873, align 8
  %875 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %871, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i64 %874)
  %876 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %12, align 8
  %877 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %876, i32 0, i32 7
  %878 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %877, i32 0, i32 3
  %879 = load i64, i64* %19, align 8
  %880 = call i32 @spin_unlock_irqrestore(i32* %878, i64 %879)
  %881 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %882 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  store %struct.ib_send_wr* %881, %struct.ib_send_wr** %882, align 8
  %883 = load i32, i32* @EOPNOTSUPP, align 4
  %884 = sub nsw i32 0, %883
  store i32 %884, i32* %4, align 4
  br label %996

885:                                              ; preds = %867
  br label %886

886:                                              ; preds = %885, %458
  br label %887

887:                                              ; preds = %886
  %888 = load i32, i32* %28, align 4
  %889 = add nsw i32 %888, 1
  store i32 %889, i32* %28, align 4
  %890 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %891 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %890, i32 0, i32 6
  %892 = load %struct.ib_send_wr*, %struct.ib_send_wr** %891, align 8
  store %struct.ib_send_wr* %892, %struct.ib_send_wr** %6, align 8
  br label %122

893:                                              ; preds = %122
  br label %894

894:                                              ; preds = %893, %864, %152, %135
  %895 = load i32, i32* %28, align 4
  %896 = call i64 @likely(i32 %895)
  %897 = icmp ne i64 %896, 0
  br i1 %897, label %898, label %989

898:                                              ; preds = %894
  %899 = load i32, i32* %28, align 4
  %900 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %12, align 8
  %901 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %900, i32 0, i32 7
  %902 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %901, i32 0, i32 2
  %903 = load i32, i32* %902, align 8
  %904 = add nsw i32 %903, %899
  store i32 %904, i32* %902, align 8
  %905 = call i32 (...) @wmb()
  %906 = getelementptr inbounds %struct.hns_roce_v2_db, %struct.hns_roce_v2_db* %15, i32 0, i32 1
  store i64 0, i64* %906, align 8
  %907 = getelementptr inbounds %struct.hns_roce_v2_db, %struct.hns_roce_v2_db* %15, i32 0, i32 0
  store i64 0, i64* %907, align 8
  %908 = getelementptr inbounds %struct.hns_roce_v2_db, %struct.hns_roce_v2_db* %15, i32 0, i32 1
  %909 = load i64, i64* %908, align 8
  %910 = load i32, i32* @V2_DB_BYTE_4_TAG_M, align 4
  %911 = load i32, i32* @V2_DB_BYTE_4_TAG_S, align 4
  %912 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %12, align 8
  %913 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %912, i32 0, i32 5
  %914 = load i32, i32* %913, align 4
  %915 = call i32 @roce_set_field(i64 %909, i32 %910, i32 %911, i32 %914)
  %916 = getelementptr inbounds %struct.hns_roce_v2_db, %struct.hns_roce_v2_db* %15, i32 0, i32 1
  %917 = load i64, i64* %916, align 8
  %918 = load i32, i32* @V2_DB_BYTE_4_CMD_M, align 4
  %919 = load i32, i32* @V2_DB_BYTE_4_CMD_S, align 4
  %920 = load i32, i32* @HNS_ROCE_V2_SQ_DB, align 4
  %921 = call i32 @roce_set_field(i64 %917, i32 %918, i32 %919, i32 %920)
  %922 = getelementptr inbounds %struct.hns_roce_v2_db, %struct.hns_roce_v2_db* %15, i32 0, i32 0
  %923 = load i64, i64* %922, align 8
  %924 = load i32, i32* @V2_DB_PARAMETER_IDX_M, align 4
  %925 = load i32, i32* @V2_DB_PARAMETER_IDX_S, align 4
  %926 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %12, align 8
  %927 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %926, i32 0, i32 7
  %928 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %927, i32 0, i32 2
  %929 = load i32, i32* %928, align 8
  %930 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %12, align 8
  %931 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %930, i32 0, i32 7
  %932 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %931, i32 0, i32 1
  %933 = load i32, i32* %932, align 4
  %934 = shl i32 %933, 1
  %935 = sub nsw i32 %934, 1
  %936 = and i32 %929, %935
  %937 = call i32 @roce_set_field(i64 %923, i32 %924, i32 %925, i32 %936)
  %938 = getelementptr inbounds %struct.hns_roce_v2_db, %struct.hns_roce_v2_db* %15, i32 0, i32 0
  %939 = load i64, i64* %938, align 8
  %940 = load i32, i32* @V2_DB_PARAMETER_SL_M, align 4
  %941 = load i32, i32* @V2_DB_PARAMETER_SL_S, align 4
  %942 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %12, align 8
  %943 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %942, i32 0, i32 6
  %944 = load i32, i32* %943, align 8
  %945 = call i32 @roce_set_field(i64 %939, i32 %940, i32 %941, i32 %944)
  %946 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %947 = bitcast %struct.hns_roce_v2_db* %15 to i32*
  %948 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %12, align 8
  %949 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %948, i32 0, i32 7
  %950 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %949, i32 0, i32 4
  %951 = load i32, i32* %950, align 8
  %952 = call i32 @hns_roce_write64(%struct.hns_roce_dev* %946, i32* %947, i32 %951)
  %953 = load i32, i32* %20, align 4
  %954 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %12, align 8
  %955 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %954, i32 0, i32 1
  store i32 %953, i32* %955, align 8
  %956 = load i32, i32* %17, align 4
  %957 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %12, align 8
  %958 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %957, i32 0, i32 2
  store i32 %956, i32* %958, align 4
  %959 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %12, align 8
  %960 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %959, i32 0, i32 0
  %961 = load i64, i64* %960, align 8
  %962 = load i64, i64* @IB_QPS_ERR, align 8
  %963 = icmp eq i64 %961, %962
  br i1 %963, label %964, label %988

964:                                              ; preds = %898
  %965 = load i32, i32* @IB_QP_STATE, align 4
  store i32 %965, i32* %23, align 4
  %966 = load i64, i64* @IB_QPS_ERR, align 8
  %967 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %16, i32 0, i32 0
  store i64 %966, i64* %967, align 8
  %968 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %12, align 8
  %969 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %968, i32 0, i32 8
  %970 = load i32, i32* %23, align 4
  %971 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %12, align 8
  %972 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %971, i32 0, i32 0
  %973 = load i64, i64* %972, align 8
  %974 = load i64, i64* @IB_QPS_ERR, align 8
  %975 = call i32 @hns_roce_v2_modify_qp(%struct.TYPE_12__* %969, %struct.ib_qp_attr* %16, i32 %970, i64 %973, i64 %974)
  store i32 %975, i32* %25, align 4
  %976 = load i32, i32* %25, align 4
  %977 = icmp ne i32 %976, 0
  br i1 %977, label %978, label %987

978:                                              ; preds = %964
  %979 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %12, align 8
  %980 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %979, i32 0, i32 7
  %981 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %980, i32 0, i32 3
  %982 = load i64, i64* %19, align 8
  %983 = call i32 @spin_unlock_irqrestore(i32* %981, i64 %982)
  %984 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %985 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  store %struct.ib_send_wr* %984, %struct.ib_send_wr** %985, align 8
  %986 = load i32, i32* %25, align 4
  store i32 %986, i32* %4, align 4
  br label %996

987:                                              ; preds = %964
  br label %988

988:                                              ; preds = %987, %898
  br label %989

989:                                              ; preds = %988, %894
  %990 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %12, align 8
  %991 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %990, i32 0, i32 7
  %992 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %991, i32 0, i32 3
  %993 = load i64, i64* %19, align 8
  %994 = call i32 @spin_unlock_irqrestore(i32* %992, i64 %993)
  %995 = load i32, i32* %25, align 4
  store i32 %995, i32* %4, align 4
  br label %996

996:                                              ; preds = %989, %978, %870, %100, %67
  %997 = load i32, i32* %4, align 4
  ret i32 %997
}

declare dso_local %struct.hns_roce_dev* @to_hr_dev(i32) #1

declare dso_local %struct.hns_roce_ah* @to_hr_ah(i32) #1

declare dso_local %struct.TYPE_16__* @ud_wr(%struct.ib_send_wr*) #1

declare dso_local %struct.hns_roce_qp* @to_hr_qp(%struct.ib_qp*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @hns_roce_wq_overflow(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i8* @get_send_wqe(%struct.hns_roce_qp*, i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @memset(%struct.hns_roce_v2_ud_send_wqe*, i32, i32) #1

declare dso_local i32 @roce_set_field(i64, i32, i32, i32) #1

declare dso_local i64 @ether_addr_equal_unaligned(i32*, i32*) #1

declare dso_local i32 @roce_set_bit(i64, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local %struct.TYPE_17__* @to_hr_pd(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @hns_get_gid_index(%struct.hns_roce_dev*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @set_extend_sge(%struct.hns_roce_qp*, %struct.ib_send_wr*, i32*) #1

declare dso_local %struct.TYPE_20__* @rdma_wr(%struct.ib_send_wr*) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @set_frmr_seg(%struct.hns_roce_v2_ud_send_wqe*, %struct.hns_roce_wqe_frmr_seg*, i32) #1

declare dso_local i32 @reg_wr(%struct.ib_send_wr*) #1

declare dso_local %struct.TYPE_19__* @atomic_wr(%struct.ib_send_wr*) #1

declare dso_local i32 @set_data_seg_v2(%struct.hns_roce_v2_wqe_data_seg*, %struct.TYPE_18__*) #1

declare dso_local i32 @set_atomic_seg(i8*, %struct.TYPE_19__*) #1

declare dso_local i32 @set_rwqe_data_seg(%struct.ib_qp*, %struct.ib_send_wr*, %struct.hns_roce_v2_ud_send_wqe*, i8*, i32*, %struct.ib_send_wr**) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @hns_roce_write64(%struct.hns_roce_dev*, i32*, i32) #1

declare dso_local i32 @hns_roce_v2_modify_qp(%struct.TYPE_12__*, %struct.ib_qp_attr*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
