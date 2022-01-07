; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_v1_q_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_v1_q_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32, i32 }
%struct.ib_qp_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_12__, i8*, i8*, i8*, i64, i64, %struct.TYPE_16__, i8*, i64, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.ib_qp_init_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_12__, i8*, i8*, i8*, i64, i64, %struct.TYPE_16__, i8*, i64, i32, i32 }
%struct.hns_roce_dev = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.device }
%struct.device = type { i32 }
%struct.hns_roce_qp = type { i32, i32, %struct.TYPE_11__, %struct.TYPE_10__, i64, %struct.TYPE_14__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.hns_roce_qp_context = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ib_global_route = type { i32, i32, i32, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IB_QPS_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"query qpc error\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_144_QP_STATE_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_144_QP_STATE_S = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"to_ib_qp_state error\0A\00", align 1
@QP_CONTEXT_QPC_BYTES_48_MTU_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_48_MTU_S = common dso_local global i32 0, align 4
@IB_MIG_ARMED = common dso_local global i32 0, align 4
@RDMA_AH_ATTR_TYPE_ROCE = common dso_local global i32 0, align 4
@IB_QPT_UD = common dso_local global i64 0, align 8
@QKEY_VAL = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_88_RX_REQ_EPSN_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_88_RX_REQ_EPSN_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_164_SQ_PSN_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_164_SQ_PSN_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_36_DEST_QP_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_36_DEST_QP_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTE_4_RDMA_READ_ENABLE_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTE_4_RDMA_WRITE_ENABLE_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTE_4_ATOMIC_OPERATION_ENABLE_S = common dso_local global i32 0, align 4
@IB_QPT_RC = common dso_local global i64 0, align 8
@IB_QPT_UC = common dso_local global i64 0, align 8
@QP_CONTEXT_QPC_BYTES_156_SL_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_156_SL_S = common dso_local global i32 0, align 4
@IB_AH_GRH = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_48_FLOWLABEL_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_48_FLOWLABEL_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_36_SGID_INDEX_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_36_SGID_INDEX_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_44_HOPLMT_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_44_HOPLMT_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_48_TCLASS_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_48_TCLASS_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_12_P_KEY_INDEX_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_12_P_KEY_INDEX_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_156_INITIATOR_DEPTH_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_156_INITIATOR_DEPTH_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_32_RESPONDER_RESOURCES_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_32_RESPONDER_RESOURCES_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_24_MINIMUM_RNR_NAK_TIMER_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_24_MINIMUM_RNR_NAK_TIMER_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_156_ACK_TIMEOUT_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_156_ACK_TIMEOUT_S = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_148_RETRY_COUNT_M = common dso_local global i32 0, align 4
@QP_CONTEXT_QPC_BYTES_148_RETRY_COUNT_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_qp*, %struct.ib_qp_attr*, i32, %struct.ib_qp_init_attr*)* @hns_roce_v1_q_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_v1_q_qp(%struct.ib_qp* %0, %struct.ib_qp_attr* %1, i32 %2, %struct.ib_qp_init_attr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_qp*, align 8
  %7 = alloca %struct.ib_qp_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_qp_init_attr*, align 8
  %10 = alloca %struct.hns_roce_dev*, align 8
  %11 = alloca %struct.hns_roce_qp*, align 8
  %12 = alloca %struct.device*, align 8
  %13 = alloca %struct.hns_roce_qp_context*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ib_global_route*, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %6, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ib_qp_init_attr* %3, %struct.ib_qp_init_attr** %9, align 8
  %18 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %19 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.hns_roce_dev* @to_hr_dev(i32 %20)
  store %struct.hns_roce_dev* %21, %struct.hns_roce_dev** %10, align 8
  %22 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %23 = call %struct.hns_roce_qp* @to_hr_qp(%struct.ib_qp* %22)
  store %struct.hns_roce_qp* %23, %struct.hns_roce_qp** %11, align 8
  %24 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %10, align 8
  %25 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %24, i32 0, i32 0
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  store %struct.device* %27, %struct.device** %12, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.hns_roce_qp_context* @kzalloc(i32 56, i32 %28)
  store %struct.hns_roce_qp_context* %29, %struct.hns_roce_qp_context** %13, align 8
  %30 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %13, align 8
  %31 = icmp ne %struct.hns_roce_qp_context* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %4
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %369

35:                                               ; preds = %4
  %36 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %37 = bitcast %struct.ib_qp_attr* %36 to %struct.ib_qp_init_attr*
  %38 = call i32 @memset(%struct.ib_qp_init_attr* %37, i32 0, i32 128)
  %39 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %40 = call i32 @memset(%struct.ib_qp_init_attr* %39, i32 0, i32 128)
  %41 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %11, align 8
  %42 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %41, i32 0, i32 1
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %11, align 8
  %45 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @IB_QPS_RESET, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %35
  %50 = load i32, i32* @IB_QPS_RESET, align 4
  %51 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %52 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  br label %309

53:                                               ; preds = %35
  %54 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %10, align 8
  %55 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %11, align 8
  %56 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %13, align 8
  %57 = call i32 @hns_roce_v1_query_qpc(%struct.hns_roce_dev* %54, %struct.hns_roce_qp* %55, %struct.hns_roce_qp_context* %56)
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %15, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %53
  %61 = load %struct.device*, %struct.device** %12, align 8
  %62 = call i32 @dev_err(%struct.device* %61, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %15, align 4
  br label %362

65:                                               ; preds = %53
  %66 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %13, align 8
  %67 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %66, i32 0, i32 13
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @QP_CONTEXT_QPC_BYTES_144_QP_STATE_M, align 4
  %70 = load i32, i32* @QP_CONTEXT_QPC_BYTES_144_QP_STATE_S, align 4
  %71 = call i32 @roce_get_field(i32 %68, i32 %69, i32 %70)
  store i32 %71, i32* %16, align 4
  %72 = load i32, i32* %16, align 4
  %73 = call i64 @to_ib_qp_state(i32 %72)
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %82

77:                                               ; preds = %65
  %78 = load %struct.device*, %struct.device** %12, align 8
  %79 = call i32 @dev_err(%struct.device* %78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %15, align 4
  br label %362

82:                                               ; preds = %65
  %83 = load i32, i32* %14, align 4
  %84 = sext i32 %83 to i64
  %85 = inttoptr i64 %84 to i8*
  %86 = ptrtoint i8* %85 to i32
  %87 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %11, align 8
  %88 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %11, align 8
  %90 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %93 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %13, align 8
  %95 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %94, i32 0, i32 7
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @QP_CONTEXT_QPC_BYTES_48_MTU_M, align 4
  %98 = load i32, i32* @QP_CONTEXT_QPC_BYTES_48_MTU_S, align 4
  %99 = call i32 @roce_get_field(i32 %96, i32 %97, i32 %98)
  %100 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %101 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* @IB_MIG_ARMED, align 4
  %103 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %104 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %103, i32 0, i32 19
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* @RDMA_AH_ATTR_TYPE_ROCE, align 4
  %106 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %107 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %106, i32 0, i32 15
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  store i32 %105, i32* %108, align 8
  %109 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %11, align 8
  %110 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %109, i32 0, i32 5
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @IB_QPT_UD, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %82
  %116 = load i32, i32* @QKEY_VAL, align 4
  %117 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %118 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %117, i32 0, i32 18
  store i32 %116, i32* %118, align 8
  br label %119

119:                                              ; preds = %115, %82
  %120 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %13, align 8
  %121 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %120, i32 0, i32 12
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @QP_CONTEXT_QPC_BYTES_88_RX_REQ_EPSN_M, align 4
  %124 = load i32, i32* @QP_CONTEXT_QPC_BYTES_88_RX_REQ_EPSN_S, align 4
  %125 = call i32 @roce_get_field(i32 %122, i32 %123, i32 %124)
  %126 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %127 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 8
  %128 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %13, align 8
  %129 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %128, i32 0, i32 11
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @QP_CONTEXT_QPC_BYTES_164_SQ_PSN_M, align 4
  %132 = load i32, i32* @QP_CONTEXT_QPC_BYTES_164_SQ_PSN_S, align 4
  %133 = call i32 @roce_get_field(i32 %130, i32 %131, i32 %132)
  %134 = sext i32 %133 to i64
  %135 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %136 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %135, i32 0, i32 17
  store i64 %134, i64* %136, align 8
  %137 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %13, align 8
  %138 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %137, i32 0, i32 9
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @QP_CONTEXT_QPC_BYTES_36_DEST_QP_M, align 4
  %141 = load i32, i32* @QP_CONTEXT_QPC_BYTES_36_DEST_QP_S, align 4
  %142 = call i32 @roce_get_field(i32 %139, i32 %140, i32 %141)
  %143 = sext i32 %142 to i64
  %144 = inttoptr i64 %143 to i8*
  %145 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %146 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %145, i32 0, i32 16
  store i8* %144, i8** %146, align 8
  %147 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %13, align 8
  %148 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %147, i32 0, i32 10
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @QP_CONTEXT_QPC_BYTE_4_RDMA_READ_ENABLE_S, align 4
  %151 = call i32 @roce_get_bit(i32 %149, i32 %150)
  %152 = shl i32 %151, 2
  %153 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %13, align 8
  %154 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %153, i32 0, i32 10
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @QP_CONTEXT_QPC_BYTE_4_RDMA_WRITE_ENABLE_S, align 4
  %157 = call i32 @roce_get_bit(i32 %155, i32 %156)
  %158 = shl i32 %157, 1
  %159 = or i32 %152, %158
  %160 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %13, align 8
  %161 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %160, i32 0, i32 10
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @QP_CONTEXT_QPC_BYTE_4_ATOMIC_OPERATION_ENABLE_S, align 4
  %164 = call i32 @roce_get_bit(i32 %162, i32 %163)
  %165 = shl i32 %164, 3
  %166 = or i32 %159, %165
  %167 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %168 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %167, i32 0, i32 3
  store i32 %166, i32* %168, align 4
  %169 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %11, align 8
  %170 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %169, i32 0, i32 5
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @IB_QPT_RC, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %182, label %175

175:                                              ; preds = %119
  %176 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %11, align 8
  %177 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %176, i32 0, i32 5
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @IB_QPT_UC, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %239

182:                                              ; preds = %175, %119
  %183 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %184 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %183, i32 0, i32 15
  %185 = call %struct.ib_global_route* @rdma_ah_retrieve_grh(%struct.TYPE_16__* %184)
  store %struct.ib_global_route* %185, %struct.ib_global_route** %17, align 8
  %186 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %187 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %186, i32 0, i32 15
  %188 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %13, align 8
  %189 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @QP_CONTEXT_QPC_BYTES_156_SL_M, align 4
  %192 = load i32, i32* @QP_CONTEXT_QPC_BYTES_156_SL_S, align 4
  %193 = call i32 @roce_get_field(i32 %190, i32 %191, i32 %192)
  %194 = call i32 @rdma_ah_set_sl(%struct.TYPE_16__* %187, i32 %193)
  %195 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %196 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %195, i32 0, i32 15
  %197 = load i32, i32* @IB_AH_GRH, align 4
  %198 = call i32 @rdma_ah_set_ah_flags(%struct.TYPE_16__* %196, i32 %197)
  %199 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %13, align 8
  %200 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %199, i32 0, i32 7
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @QP_CONTEXT_QPC_BYTES_48_FLOWLABEL_M, align 4
  %203 = load i32, i32* @QP_CONTEXT_QPC_BYTES_48_FLOWLABEL_S, align 4
  %204 = call i32 @roce_get_field(i32 %201, i32 %202, i32 %203)
  %205 = load %struct.ib_global_route*, %struct.ib_global_route** %17, align 8
  %206 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %205, i32 0, i32 0
  store i32 %204, i32* %206, align 4
  %207 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %13, align 8
  %208 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %207, i32 0, i32 9
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @QP_CONTEXT_QPC_BYTES_36_SGID_INDEX_M, align 4
  %211 = load i32, i32* @QP_CONTEXT_QPC_BYTES_36_SGID_INDEX_S, align 4
  %212 = call i32 @roce_get_field(i32 %209, i32 %210, i32 %211)
  %213 = load %struct.ib_global_route*, %struct.ib_global_route** %17, align 8
  %214 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %213, i32 0, i32 1
  store i32 %212, i32* %214, align 4
  %215 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %13, align 8
  %216 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %215, i32 0, i32 8
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @QP_CONTEXT_QPC_BYTES_44_HOPLMT_M, align 4
  %219 = load i32, i32* @QP_CONTEXT_QPC_BYTES_44_HOPLMT_S, align 4
  %220 = call i32 @roce_get_field(i32 %217, i32 %218, i32 %219)
  %221 = load %struct.ib_global_route*, %struct.ib_global_route** %17, align 8
  %222 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %221, i32 0, i32 2
  store i32 %220, i32* %222, align 4
  %223 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %13, align 8
  %224 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %223, i32 0, i32 7
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @QP_CONTEXT_QPC_BYTES_48_TCLASS_M, align 4
  %227 = load i32, i32* @QP_CONTEXT_QPC_BYTES_48_TCLASS_S, align 4
  %228 = call i32 @roce_get_field(i32 %225, i32 %226, i32 %227)
  %229 = load %struct.ib_global_route*, %struct.ib_global_route** %17, align 8
  %230 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %229, i32 0, i32 3
  store i32 %228, i32* %230, align 4
  %231 = load %struct.ib_global_route*, %struct.ib_global_route** %17, align 8
  %232 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %231, i32 0, i32 4
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %13, align 8
  %236 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %235, i32 0, i32 6
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @memcpy(i32 %234, i32 %237, i32 4)
  br label %239

239:                                              ; preds = %182, %175
  %240 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %13, align 8
  %241 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %240, i32 0, i32 5
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @QP_CONTEXT_QPC_BYTES_12_P_KEY_INDEX_M, align 4
  %244 = load i32, i32* @QP_CONTEXT_QPC_BYTES_12_P_KEY_INDEX_S, align 4
  %245 = call i32 @roce_get_field(i32 %242, i32 %243, i32 %244)
  %246 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %247 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %246, i32 0, i32 4
  store i32 %245, i32* %247, align 8
  %248 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %11, align 8
  %249 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %248, i32 0, i32 4
  %250 = load i64, i64* %249, align 8
  %251 = add nsw i64 %250, 1
  %252 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %253 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %252, i32 0, i32 14
  store i64 %251, i64* %253, align 8
  %254 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %255 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %254, i32 0, i32 13
  store i64 0, i64* %255, align 8
  %256 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %13, align 8
  %257 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* @QP_CONTEXT_QPC_BYTES_156_INITIATOR_DEPTH_M, align 4
  %260 = load i32, i32* @QP_CONTEXT_QPC_BYTES_156_INITIATOR_DEPTH_S, align 4
  %261 = call i32 @roce_get_field(i32 %258, i32 %259, i32 %260)
  %262 = shl i32 1, %261
  %263 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %264 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %263, i32 0, i32 5
  store i32 %262, i32* %264, align 4
  %265 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %13, align 8
  %266 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %265, i32 0, i32 4
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* @QP_CONTEXT_QPC_BYTES_32_RESPONDER_RESOURCES_M, align 4
  %269 = load i32, i32* @QP_CONTEXT_QPC_BYTES_32_RESPONDER_RESOURCES_S, align 4
  %270 = call i32 @roce_get_field(i32 %267, i32 %268, i32 %269)
  %271 = shl i32 1, %270
  %272 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %273 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %272, i32 0, i32 6
  store i32 %271, i32* %273, align 8
  %274 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %13, align 8
  %275 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* @QP_CONTEXT_QPC_BYTES_24_MINIMUM_RNR_NAK_TIMER_M, align 4
  %278 = load i32, i32* @QP_CONTEXT_QPC_BYTES_24_MINIMUM_RNR_NAK_TIMER_S, align 4
  %279 = call i32 @roce_get_field(i32 %276, i32 %277, i32 %278)
  %280 = sext i32 %279 to i64
  %281 = inttoptr i64 %280 to i8*
  %282 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %283 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %282, i32 0, i32 12
  store i8* %281, i8** %283, align 8
  %284 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %13, align 8
  %285 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* @QP_CONTEXT_QPC_BYTES_156_ACK_TIMEOUT_M, align 4
  %288 = load i32, i32* @QP_CONTEXT_QPC_BYTES_156_ACK_TIMEOUT_S, align 4
  %289 = call i32 @roce_get_field(i32 %286, i32 %287, i32 %288)
  %290 = sext i32 %289 to i64
  %291 = inttoptr i64 %290 to i8*
  %292 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %293 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %292, i32 0, i32 11
  store i8* %291, i8** %293, align 8
  %294 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %13, align 8
  %295 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* @QP_CONTEXT_QPC_BYTES_148_RETRY_COUNT_M, align 4
  %298 = load i32, i32* @QP_CONTEXT_QPC_BYTES_148_RETRY_COUNT_S, align 4
  %299 = call i32 @roce_get_field(i32 %296, i32 %297, i32 %298)
  %300 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %301 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %300, i32 0, i32 7
  store i32 %299, i32* %301, align 4
  %302 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %13, align 8
  %303 = getelementptr inbounds %struct.hns_roce_qp_context, %struct.hns_roce_qp_context* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = call i64 @le32_to_cpu(i32 %304)
  %306 = inttoptr i64 %305 to i8*
  %307 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %308 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %307, i32 0, i32 10
  store i8* %306, i8** %308, align 8
  br label %309

309:                                              ; preds = %239, %49
  %310 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %311 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %314 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %313, i32 0, i32 8
  store i32 %312, i32* %314, align 8
  %315 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %11, align 8
  %316 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %315, i32 0, i32 3
  %317 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %320 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %319, i32 0, i32 9
  %321 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %320, i32 0, i32 3
  store i32 %318, i32* %321, align 4
  %322 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %11, align 8
  %323 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %322, i32 0, i32 3
  %324 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %327 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %326, i32 0, i32 9
  %328 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %327, i32 0, i32 2
  store i32 %325, i32* %328, align 4
  %329 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %330 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %348, label %333

333:                                              ; preds = %309
  %334 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %11, align 8
  %335 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %334, i32 0, i32 2
  %336 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  %338 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %339 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %338, i32 0, i32 9
  %340 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %339, i32 0, i32 1
  store i32 %337, i32* %340, align 4
  %341 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %11, align 8
  %342 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %341, i32 0, i32 2
  %343 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %346 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %345, i32 0, i32 9
  %347 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %346, i32 0, i32 0
  store i32 %344, i32* %347, align 4
  br label %355

348:                                              ; preds = %309
  %349 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %350 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %349, i32 0, i32 9
  %351 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %350, i32 0, i32 1
  store i32 0, i32* %351, align 4
  %352 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %353 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %352, i32 0, i32 9
  %354 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %353, i32 0, i32 0
  store i32 0, i32* %354, align 4
  br label %355

355:                                              ; preds = %348, %333
  %356 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %357 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %356, i32 0, i32 9
  %358 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %359 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %358, i32 0, i32 9
  %360 = bitcast %struct.TYPE_12__* %357 to i8*
  %361 = bitcast %struct.TYPE_12__* %359 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %360, i8* align 4 %361, i64 16, i1 false)
  br label %362

362:                                              ; preds = %355, %77, %60
  %363 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %11, align 8
  %364 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %363, i32 0, i32 1
  %365 = call i32 @mutex_unlock(i32* %364)
  %366 = load %struct.hns_roce_qp_context*, %struct.hns_roce_qp_context** %13, align 8
  %367 = call i32 @kfree(%struct.hns_roce_qp_context* %366)
  %368 = load i32, i32* %15, align 4
  store i32 %368, i32* %5, align 4
  br label %369

369:                                              ; preds = %362, %32
  %370 = load i32, i32* %5, align 4
  ret i32 %370
}

declare dso_local %struct.hns_roce_dev* @to_hr_dev(i32) #1

declare dso_local %struct.hns_roce_qp* @to_hr_qp(%struct.ib_qp*) #1

declare dso_local %struct.hns_roce_qp_context* @kzalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.ib_qp_init_attr*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hns_roce_v1_query_qpc(%struct.hns_roce_dev*, %struct.hns_roce_qp*, %struct.hns_roce_qp_context*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @roce_get_field(i32, i32, i32) #1

declare dso_local i64 @to_ib_qp_state(i32) #1

declare dso_local i32 @roce_get_bit(i32, i32) #1

declare dso_local %struct.ib_global_route* @rdma_ah_retrieve_grh(%struct.TYPE_16__*) #1

declare dso_local i32 @rdma_ah_set_sl(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @rdma_ah_set_ah_flags(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.hns_roce_qp_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
