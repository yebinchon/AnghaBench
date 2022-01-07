; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_query_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_query_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32, i32 }
%struct.ib_qp_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_12__, i32, i8*, i8*, i64, i64, %struct.TYPE_13__, i8*, i64, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.ib_qp_init_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_12__, i32, i8*, i8*, i64, i64, %struct.TYPE_13__, i8*, i64, i32, i32 }
%struct.hns_roce_dev = type { %struct.device* }
%struct.device = type { i32 }
%struct.hns_roce_qp = type { i32, i32, %struct.TYPE_11__, %struct.TYPE_10__, i64, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.hns_roce_v2_qp_context = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ib_global_route = type { i32, i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@IB_QPS_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"query qpc error\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@V2_QPC_BYTE_60_QP_ST_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_60_QP_ST_S = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Illegal ib_qp_state\0A\00", align 1
@V2_QPC_BYTE_24_MTU_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_24_MTU_S = common dso_local global i32 0, align 4
@IB_MIG_ARMED = common dso_local global i32 0, align 4
@RDMA_AH_ATTR_TYPE_ROCE = common dso_local global i32 0, align 4
@IB_QPT_UD = common dso_local global i64 0, align 8
@V2_QKEY_VAL = common dso_local global i32 0, align 4
@V2_QPC_BYTE_108_RX_REQ_EPSN_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_108_RX_REQ_EPSN_S = common dso_local global i32 0, align 4
@V2_QPC_BYTE_172_SQ_CUR_PSN_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_172_SQ_CUR_PSN_S = common dso_local global i32 0, align 4
@V2_QPC_BYTE_56_DQPN_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_56_DQPN_S = common dso_local global i32 0, align 4
@V2_QPC_BYTE_76_RRE_S = common dso_local global i32 0, align 4
@V2_QP_RRE_S = common dso_local global i32 0, align 4
@V2_QPC_BYTE_76_RWE_S = common dso_local global i32 0, align 4
@V2_QP_RWE_S = common dso_local global i32 0, align 4
@V2_QPC_BYTE_76_ATE_S = common dso_local global i32 0, align 4
@V2_QP_ATE_S = common dso_local global i32 0, align 4
@IB_QPT_RC = common dso_local global i64 0, align 8
@IB_QPT_UC = common dso_local global i64 0, align 8
@V2_QPC_BYTE_28_SL_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_28_SL_S = common dso_local global i32 0, align 4
@V2_QPC_BYTE_28_FL_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_28_FL_S = common dso_local global i32 0, align 4
@V2_QPC_BYTE_20_SGID_IDX_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_20_SGID_IDX_S = common dso_local global i32 0, align 4
@V2_QPC_BYTE_24_HOP_LIMIT_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_24_HOP_LIMIT_S = common dso_local global i32 0, align 4
@V2_QPC_BYTE_24_TC_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_24_TC_S = common dso_local global i32 0, align 4
@V2_QPC_BYTE_208_SR_MAX_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_208_SR_MAX_S = common dso_local global i32 0, align 4
@V2_QPC_BYTE_140_RR_MAX_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_140_RR_MAX_S = common dso_local global i32 0, align 4
@V2_QPC_BYTE_80_MIN_RNR_TIME_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_80_MIN_RNR_TIME_S = common dso_local global i32 0, align 4
@V2_QPC_BYTE_28_AT_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_28_AT_S = common dso_local global i32 0, align 4
@V2_QPC_BYTE_212_RETRY_CNT_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_212_RETRY_CNT_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_qp*, %struct.ib_qp_attr*, i32, %struct.ib_qp_init_attr*)* @hns_roce_v2_query_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_v2_query_qp(%struct.ib_qp* %0, %struct.ib_qp_attr* %1, i32 %2, %struct.ib_qp_init_attr* %3) #0 {
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.ib_qp_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_qp_init_attr*, align 8
  %9 = alloca %struct.hns_roce_dev*, align 8
  %10 = alloca %struct.hns_roce_qp*, align 8
  %11 = alloca %struct.hns_roce_v2_qp_context, align 4
  %12 = alloca %struct.device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ib_global_route*, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ib_qp_init_attr* %3, %struct.ib_qp_init_attr** %8, align 8
  %17 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %18 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.hns_roce_dev* @to_hr_dev(i32 %19)
  store %struct.hns_roce_dev* %20, %struct.hns_roce_dev** %9, align 8
  %21 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %22 = call %struct.hns_roce_qp* @to_hr_qp(%struct.ib_qp* %21)
  store %struct.hns_roce_qp* %22, %struct.hns_roce_qp** %10, align 8
  %23 = bitcast %struct.hns_roce_v2_qp_context* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %23, i8 0, i64 56, i1 false)
  %24 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %9, align 8
  %25 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %24, i32 0, i32 0
  %26 = load %struct.device*, %struct.device** %25, align 8
  store %struct.device* %26, %struct.device** %12, align 8
  %27 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %28 = bitcast %struct.ib_qp_attr* %27 to %struct.ib_qp_init_attr*
  %29 = call i32 @memset(%struct.ib_qp_init_attr* %28, i32 0, i32 120)
  %30 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %31 = call i32 @memset(%struct.ib_qp_init_attr* %30, i32 0, i32 120)
  %32 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %10, align 8
  %33 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %32, i32 0, i32 1
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %10, align 8
  %36 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @IB_QPS_RESET, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %4
  %41 = load i32, i32* @IB_QPS_RESET, align 4
  %42 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %43 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  store i32 0, i32* %15, align 4
  br label %268

44:                                               ; preds = %4
  %45 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %9, align 8
  %46 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %10, align 8
  %47 = call i32 @hns_roce_v2_query_qpc(%struct.hns_roce_dev* %45, %struct.hns_roce_qp* %46, %struct.hns_roce_v2_qp_context* %11)
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load %struct.device*, %struct.device** %12, align 8
  %52 = call i32 @dev_err(%struct.device* %51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %15, align 4
  br label %321

55:                                               ; preds = %44
  %56 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %11, i32 0, i32 13
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @V2_QPC_BYTE_60_QP_ST_M, align 4
  %59 = load i32, i32* @V2_QPC_BYTE_60_QP_ST_S, align 4
  %60 = call i32 @roce_get_field(i32 %57, i32 %58, i32 %59)
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = call i32 @to_ib_qp_st(i32 %61)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %70

65:                                               ; preds = %55
  %66 = load %struct.device*, %struct.device** %12, align 8
  %67 = call i32 @dev_err(%struct.device* %66, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %15, align 4
  br label %321

70:                                               ; preds = %55
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = inttoptr i64 %72 to i8*
  %74 = ptrtoint i8* %73 to i32
  %75 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %10, align 8
  %76 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %10, align 8
  %78 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %81 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %11, i32 0, i32 7
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @V2_QPC_BYTE_24_MTU_M, align 4
  %85 = load i32, i32* @V2_QPC_BYTE_24_MTU_S, align 4
  %86 = call i32 @roce_get_field(i32 %83, i32 %84, i32 %85)
  %87 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %88 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* @IB_MIG_ARMED, align 4
  %90 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %91 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %90, i32 0, i32 18
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* @RDMA_AH_ATTR_TYPE_ROCE, align 4
  %93 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %94 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %93, i32 0, i32 14
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 8
  %96 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %10, align 8
  %97 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %96, i32 0, i32 5
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @IB_QPT_UD, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %70
  %103 = load i32, i32* @V2_QKEY_VAL, align 4
  %104 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %105 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %104, i32 0, i32 17
  store i32 %103, i32* %105, align 8
  br label %106

106:                                              ; preds = %102, %70
  %107 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %11, i32 0, i32 12
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @V2_QPC_BYTE_108_RX_REQ_EPSN_M, align 4
  %110 = load i32, i32* @V2_QPC_BYTE_108_RX_REQ_EPSN_S, align 4
  %111 = call i32 @roce_get_field(i32 %108, i32 %109, i32 %110)
  %112 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %113 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 8
  %114 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %11, i32 0, i32 11
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @V2_QPC_BYTE_172_SQ_CUR_PSN_M, align 4
  %117 = load i32, i32* @V2_QPC_BYTE_172_SQ_CUR_PSN_S, align 4
  %118 = call i32 @roce_get_field(i32 %115, i32 %116, i32 %117)
  %119 = sext i32 %118 to i64
  %120 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %121 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %120, i32 0, i32 16
  store i64 %119, i64* %121, align 8
  %122 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %11, i32 0, i32 10
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @V2_QPC_BYTE_56_DQPN_M, align 4
  %125 = load i32, i32* @V2_QPC_BYTE_56_DQPN_S, align 4
  %126 = call i32 @roce_get_field(i32 %123, i32 %124, i32 %125)
  %127 = sext i32 %126 to i64
  %128 = inttoptr i64 %127 to i8*
  %129 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %130 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %129, i32 0, i32 15
  store i8* %128, i8** %130, align 8
  %131 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %11, i32 0, i32 9
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @V2_QPC_BYTE_76_RRE_S, align 4
  %134 = call i32 @roce_get_bit(i32 %132, i32 %133)
  %135 = load i32, i32* @V2_QP_RRE_S, align 4
  %136 = shl i32 %134, %135
  %137 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %11, i32 0, i32 9
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @V2_QPC_BYTE_76_RWE_S, align 4
  %140 = call i32 @roce_get_bit(i32 %138, i32 %139)
  %141 = load i32, i32* @V2_QP_RWE_S, align 4
  %142 = shl i32 %140, %141
  %143 = or i32 %136, %142
  %144 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %11, i32 0, i32 9
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @V2_QPC_BYTE_76_ATE_S, align 4
  %147 = call i32 @roce_get_bit(i32 %145, i32 %146)
  %148 = load i32, i32* @V2_QP_ATE_S, align 4
  %149 = shl i32 %147, %148
  %150 = or i32 %143, %149
  %151 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %152 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %151, i32 0, i32 3
  store i32 %150, i32* %152, align 4
  %153 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %10, align 8
  %154 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %153, i32 0, i32 5
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @IB_QPT_RC, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %166, label %159

159:                                              ; preds = %106
  %160 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %10, align 8
  %161 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %160, i32 0, i32 5
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @IB_QPT_UC, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %213

166:                                              ; preds = %159, %106
  %167 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %168 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %167, i32 0, i32 14
  %169 = call %struct.ib_global_route* @rdma_ah_retrieve_grh(%struct.TYPE_13__* %168)
  store %struct.ib_global_route* %169, %struct.ib_global_route** %16, align 8
  %170 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %171 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %170, i32 0, i32 14
  %172 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %11, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @V2_QPC_BYTE_28_SL_M, align 4
  %175 = load i32, i32* @V2_QPC_BYTE_28_SL_S, align 4
  %176 = call i32 @roce_get_field(i32 %173, i32 %174, i32 %175)
  %177 = call i32 @rdma_ah_set_sl(%struct.TYPE_13__* %171, i32 %176)
  %178 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %11, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @V2_QPC_BYTE_28_FL_M, align 4
  %181 = load i32, i32* @V2_QPC_BYTE_28_FL_S, align 4
  %182 = call i32 @roce_get_field(i32 %179, i32 %180, i32 %181)
  %183 = load %struct.ib_global_route*, %struct.ib_global_route** %16, align 8
  %184 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %183, i32 0, i32 0
  store i32 %182, i32* %184, align 4
  %185 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %11, i32 0, i32 8
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @V2_QPC_BYTE_20_SGID_IDX_M, align 4
  %188 = load i32, i32* @V2_QPC_BYTE_20_SGID_IDX_S, align 4
  %189 = call i32 @roce_get_field(i32 %186, i32 %187, i32 %188)
  %190 = load %struct.ib_global_route*, %struct.ib_global_route** %16, align 8
  %191 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %190, i32 0, i32 1
  store i32 %189, i32* %191, align 4
  %192 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %11, i32 0, i32 7
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @V2_QPC_BYTE_24_HOP_LIMIT_M, align 4
  %195 = load i32, i32* @V2_QPC_BYTE_24_HOP_LIMIT_S, align 4
  %196 = call i32 @roce_get_field(i32 %193, i32 %194, i32 %195)
  %197 = load %struct.ib_global_route*, %struct.ib_global_route** %16, align 8
  %198 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %197, i32 0, i32 2
  store i32 %196, i32* %198, align 4
  %199 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %11, i32 0, i32 7
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @V2_QPC_BYTE_24_TC_M, align 4
  %202 = load i32, i32* @V2_QPC_BYTE_24_TC_S, align 4
  %203 = call i32 @roce_get_field(i32 %200, i32 %201, i32 %202)
  %204 = load %struct.ib_global_route*, %struct.ib_global_route** %16, align 8
  %205 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %204, i32 0, i32 3
  store i32 %203, i32* %205, align 4
  %206 = load %struct.ib_global_route*, %struct.ib_global_route** %16, align 8
  %207 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %206, i32 0, i32 4
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %11, i32 0, i32 6
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @memcpy(i32 %209, i32 %211, i32 4)
  br label %213

213:                                              ; preds = %166, %159
  %214 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %10, align 8
  %215 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %214, i32 0, i32 4
  %216 = load i64, i64* %215, align 8
  %217 = add nsw i64 %216, 1
  %218 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %219 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %218, i32 0, i32 13
  store i64 %217, i64* %219, align 8
  %220 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %221 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %220, i32 0, i32 12
  store i64 0, i64* %221, align 8
  %222 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %11, i32 0, i32 5
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @V2_QPC_BYTE_208_SR_MAX_M, align 4
  %225 = load i32, i32* @V2_QPC_BYTE_208_SR_MAX_S, align 4
  %226 = call i32 @roce_get_field(i32 %223, i32 %224, i32 %225)
  %227 = shl i32 1, %226
  %228 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %229 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %228, i32 0, i32 4
  store i32 %227, i32* %229, align 8
  %230 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %11, i32 0, i32 4
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @V2_QPC_BYTE_140_RR_MAX_M, align 4
  %233 = load i32, i32* @V2_QPC_BYTE_140_RR_MAX_S, align 4
  %234 = call i32 @roce_get_field(i32 %231, i32 %232, i32 %233)
  %235 = shl i32 1, %234
  %236 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %237 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %236, i32 0, i32 5
  store i32 %235, i32* %237, align 4
  %238 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %11, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @V2_QPC_BYTE_80_MIN_RNR_TIME_M, align 4
  %241 = load i32, i32* @V2_QPC_BYTE_80_MIN_RNR_TIME_S, align 4
  %242 = call i32 @roce_get_field(i32 %239, i32 %240, i32 %241)
  %243 = sext i32 %242 to i64
  %244 = inttoptr i64 %243 to i8*
  %245 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %246 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %245, i32 0, i32 11
  store i8* %244, i8** %246, align 8
  %247 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %11, i32 0, i32 2
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* @V2_QPC_BYTE_28_AT_M, align 4
  %250 = load i32, i32* @V2_QPC_BYTE_28_AT_S, align 4
  %251 = call i32 @roce_get_field(i32 %248, i32 %249, i32 %250)
  %252 = sext i32 %251 to i64
  %253 = inttoptr i64 %252 to i8*
  %254 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %255 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %254, i32 0, i32 10
  store i8* %253, i8** %255, align 8
  %256 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %11, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* @V2_QPC_BYTE_212_RETRY_CNT_M, align 4
  %259 = load i32, i32* @V2_QPC_BYTE_212_RETRY_CNT_S, align 4
  %260 = call i32 @roce_get_field(i32 %257, i32 %258, i32 %259)
  %261 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %262 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %261, i32 0, i32 6
  store i32 %260, i32* %262, align 8
  %263 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %11, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @le32_to_cpu(i32 %264)
  %266 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %267 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %266, i32 0, i32 9
  store i32 %265, i32* %267, align 8
  br label %268

268:                                              ; preds = %213, %40
  %269 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %270 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %273 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %272, i32 0, i32 7
  store i32 %271, i32* %273, align 4
  %274 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %10, align 8
  %275 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %274, i32 0, i32 3
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %279 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %278, i32 0, i32 8
  %280 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %279, i32 0, i32 3
  store i32 %277, i32* %280, align 4
  %281 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %10, align 8
  %282 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %281, i32 0, i32 3
  %283 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %286 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %285, i32 0, i32 8
  %287 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %286, i32 0, i32 2
  store i32 %284, i32* %287, align 8
  %288 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %289 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %307, label %292

292:                                              ; preds = %268
  %293 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %10, align 8
  %294 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %293, i32 0, i32 2
  %295 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %298 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %297, i32 0, i32 8
  %299 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %298, i32 0, i32 1
  store i32 %296, i32* %299, align 4
  %300 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %10, align 8
  %301 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %300, i32 0, i32 2
  %302 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %305 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %304, i32 0, i32 8
  %306 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %305, i32 0, i32 0
  store i32 %303, i32* %306, align 8
  br label %314

307:                                              ; preds = %268
  %308 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %309 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %308, i32 0, i32 8
  %310 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %309, i32 0, i32 1
  store i32 0, i32* %310, align 4
  %311 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %312 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %311, i32 0, i32 8
  %313 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %312, i32 0, i32 0
  store i32 0, i32* %313, align 8
  br label %314

314:                                              ; preds = %307, %292
  %315 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %316 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %315, i32 0, i32 8
  %317 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %318 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %317, i32 0, i32 8
  %319 = bitcast %struct.TYPE_12__* %316 to i8*
  %320 = bitcast %struct.TYPE_12__* %318 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %319, i8* align 8 %320, i64 16, i1 false)
  br label %321

321:                                              ; preds = %314, %65, %50
  %322 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %10, align 8
  %323 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %322, i32 0, i32 1
  %324 = call i32 @mutex_unlock(i32* %323)
  %325 = load i32, i32* %15, align 4
  ret i32 %325
}

declare dso_local %struct.hns_roce_dev* @to_hr_dev(i32) #1

declare dso_local %struct.hns_roce_qp* @to_hr_qp(%struct.ib_qp*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @memset(%struct.ib_qp_init_attr*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hns_roce_v2_query_qpc(%struct.hns_roce_dev*, %struct.hns_roce_qp*, %struct.hns_roce_v2_qp_context*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @roce_get_field(i32, i32, i32) #1

declare dso_local i32 @to_ib_qp_st(i32) #1

declare dso_local i32 @roce_get_bit(i32, i32) #1

declare dso_local %struct.ib_global_route* @rdma_ah_retrieve_grh(%struct.TYPE_13__*) #1

declare dso_local i32 @rdma_ah_set_sl(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
