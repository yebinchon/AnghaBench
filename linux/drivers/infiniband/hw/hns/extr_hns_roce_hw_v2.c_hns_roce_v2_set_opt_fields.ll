; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_set_opt_fields.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_set_opt_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_qp_attr = type { i32, i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.hns_roce_v2_qp_context = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hns_roce_dev = type { i32 }
%struct.hns_roce_qp = type { i32 }

@IB_QP_AV = common dso_local global i32 0, align 4
@IB_QP_TIMEOUT = common dso_local global i32 0, align 4
@V2_QPC_BYTE_28_AT_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_28_AT_S = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Local ACK timeout shall be 0 to 30.\0A\00", align 1
@IB_QP_RETRY_CNT = common dso_local global i32 0, align 4
@V2_QPC_BYTE_212_RETRY_NUM_INIT_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_212_RETRY_NUM_INIT_S = common dso_local global i32 0, align 4
@V2_QPC_BYTE_212_RETRY_CNT_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_212_RETRY_CNT_S = common dso_local global i32 0, align 4
@IB_QP_RNR_RETRY = common dso_local global i32 0, align 4
@V2_QPC_BYTE_244_RNR_NUM_INIT_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_244_RNR_NUM_INIT_S = common dso_local global i32 0, align 4
@V2_QPC_BYTE_244_RNR_CNT_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_244_RNR_CNT_S = common dso_local global i32 0, align 4
@IB_QP_SQ_PSN = common dso_local global i32 0, align 4
@V2_QPC_BYTE_172_SQ_CUR_PSN_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_172_SQ_CUR_PSN_S = common dso_local global i32 0, align 4
@V2_QPC_BYTE_196_SQ_MAX_PSN_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_196_SQ_MAX_PSN_S = common dso_local global i32 0, align 4
@V2_QPC_BYTE_220_RETRY_MSG_PSN_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_220_RETRY_MSG_PSN_S = common dso_local global i32 0, align 4
@V2_QPC_BYTE_224_RETRY_MSG_PSN_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_224_RETRY_MSG_PSN_S = common dso_local global i32 0, align 4
@V2_QPC_BYTE_224_RETRY_MSG_FPKT_PSN_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_224_RETRY_MSG_FPKT_PSN_S = common dso_local global i32 0, align 4
@V2_QPC_BYTE_244_RX_ACK_EPSN_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_244_RX_ACK_EPSN_S = common dso_local global i32 0, align 4
@IB_QP_MAX_DEST_RD_ATOMIC = common dso_local global i32 0, align 4
@V2_QPC_BYTE_140_RR_MAX_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_140_RR_MAX_S = common dso_local global i32 0, align 4
@IB_QP_MAX_QP_RD_ATOMIC = common dso_local global i32 0, align 4
@V2_QPC_BYTE_208_SR_MAX_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_208_SR_MAX_S = common dso_local global i32 0, align 4
@IB_QP_ACCESS_FLAGS = common dso_local global i32 0, align 4
@IB_QP_MIN_RNR_TIMER = common dso_local global i32 0, align 4
@V2_QPC_BYTE_80_MIN_RNR_TIME_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_80_MIN_RNR_TIME_S = common dso_local global i32 0, align 4
@IB_QP_RQ_PSN = common dso_local global i32 0, align 4
@V2_QPC_BYTE_108_RX_REQ_EPSN_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_108_RX_REQ_EPSN_S = common dso_local global i32 0, align 4
@V2_QPC_BYTE_152_RAQ_PSN_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_152_RAQ_PSN_S = common dso_local global i32 0, align 4
@IB_QP_QKEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_qp*, %struct.ib_qp_attr*, i32, %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context*)* @hns_roce_v2_set_opt_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_v2_set_opt_fields(%struct.ib_qp* %0, %struct.ib_qp_attr* %1, i32 %2, %struct.hns_roce_v2_qp_context* %3, %struct.hns_roce_v2_qp_context* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_qp*, align 8
  %8 = alloca %struct.ib_qp_attr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hns_roce_v2_qp_context*, align 8
  %11 = alloca %struct.hns_roce_v2_qp_context*, align 8
  %12 = alloca %struct.hns_roce_dev*, align 8
  %13 = alloca %struct.hns_roce_qp*, align 8
  %14 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %7, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.hns_roce_v2_qp_context* %3, %struct.hns_roce_v2_qp_context** %10, align 8
  store %struct.hns_roce_v2_qp_context* %4, %struct.hns_roce_v2_qp_context** %11, align 8
  %15 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %16 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.hns_roce_dev* @to_hr_dev(i32 %17)
  store %struct.hns_roce_dev* %18, %struct.hns_roce_dev** %12, align 8
  %19 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %20 = call %struct.hns_roce_qp* @to_hr_qp(%struct.ib_qp* %19)
  store %struct.hns_roce_qp* %20, %struct.hns_roce_qp** %13, align 8
  store i32 0, i32* %14, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @IB_QP_AV, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %5
  %26 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %27 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %10, align 8
  %30 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %11, align 8
  %31 = call i32 @hns_roce_v2_set_path(%struct.ib_qp* %26, %struct.ib_qp_attr* %27, i32 %28, %struct.hns_roce_v2_qp_context* %29, %struct.hns_roce_v2_qp_context* %30)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* %14, align 4
  store i32 %35, i32* %6, align 4
  br label %388

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %36, %5
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @IB_QP_TIMEOUT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %69

42:                                               ; preds = %37
  %43 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %44 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %45, 31
  br i1 %46, label %47, label %63

47:                                               ; preds = %42
  %48 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %10, align 8
  %49 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %48, i32 0, i32 12
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @V2_QPC_BYTE_28_AT_M, align 4
  %52 = load i32, i32* @V2_QPC_BYTE_28_AT_S, align 4
  %53 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %54 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @roce_set_field(i32 %50, i32 %51, i32 %52, i32 %55)
  %57 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %11, align 8
  %58 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %57, i32 0, i32 12
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @V2_QPC_BYTE_28_AT_M, align 4
  %61 = load i32, i32* @V2_QPC_BYTE_28_AT_S, align 4
  %62 = call i32 @roce_set_field(i32 %59, i32 %60, i32 %61, i32 0)
  br label %68

63:                                               ; preds = %42
  %64 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %12, align 8
  %65 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dev_warn(i32 %66, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %68

68:                                               ; preds = %63, %47
  br label %69

69:                                               ; preds = %68, %37
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @IB_QP_RETRY_CNT, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %105

74:                                               ; preds = %69
  %75 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %10, align 8
  %76 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %75, i32 0, i32 11
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @V2_QPC_BYTE_212_RETRY_NUM_INIT_M, align 4
  %79 = load i32, i32* @V2_QPC_BYTE_212_RETRY_NUM_INIT_S, align 4
  %80 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %81 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @roce_set_field(i32 %77, i32 %78, i32 %79, i32 %82)
  %84 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %11, align 8
  %85 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %84, i32 0, i32 11
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @V2_QPC_BYTE_212_RETRY_NUM_INIT_M, align 4
  %88 = load i32, i32* @V2_QPC_BYTE_212_RETRY_NUM_INIT_S, align 4
  %89 = call i32 @roce_set_field(i32 %86, i32 %87, i32 %88, i32 0)
  %90 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %10, align 8
  %91 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %90, i32 0, i32 11
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @V2_QPC_BYTE_212_RETRY_CNT_M, align 4
  %94 = load i32, i32* @V2_QPC_BYTE_212_RETRY_CNT_S, align 4
  %95 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %96 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @roce_set_field(i32 %92, i32 %93, i32 %94, i32 %97)
  %99 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %11, align 8
  %100 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %99, i32 0, i32 11
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @V2_QPC_BYTE_212_RETRY_CNT_M, align 4
  %103 = load i32, i32* @V2_QPC_BYTE_212_RETRY_CNT_S, align 4
  %104 = call i32 @roce_set_field(i32 %101, i32 %102, i32 %103, i32 0)
  br label %105

105:                                              ; preds = %74, %69
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* @IB_QP_RNR_RETRY, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %141

110:                                              ; preds = %105
  %111 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %10, align 8
  %112 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @V2_QPC_BYTE_244_RNR_NUM_INIT_M, align 4
  %115 = load i32, i32* @V2_QPC_BYTE_244_RNR_NUM_INIT_S, align 4
  %116 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %117 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @roce_set_field(i32 %113, i32 %114, i32 %115, i32 %118)
  %120 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %11, align 8
  %121 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %120, i32 0, i32 6
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @V2_QPC_BYTE_244_RNR_NUM_INIT_M, align 4
  %124 = load i32, i32* @V2_QPC_BYTE_244_RNR_NUM_INIT_S, align 4
  %125 = call i32 @roce_set_field(i32 %122, i32 %123, i32 %124, i32 0)
  %126 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %10, align 8
  %127 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @V2_QPC_BYTE_244_RNR_CNT_M, align 4
  %130 = load i32, i32* @V2_QPC_BYTE_244_RNR_CNT_S, align 4
  %131 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %132 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @roce_set_field(i32 %128, i32 %129, i32 %130, i32 %133)
  %135 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %11, align 8
  %136 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %135, i32 0, i32 6
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @V2_QPC_BYTE_244_RNR_CNT_M, align 4
  %139 = load i32, i32* @V2_QPC_BYTE_244_RNR_CNT_S, align 4
  %140 = call i32 @roce_set_field(i32 %137, i32 %138, i32 %139, i32 0)
  br label %141

141:                                              ; preds = %110, %105
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* @IB_QP_SQ_PSN, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %239

146:                                              ; preds = %141
  %147 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %10, align 8
  %148 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %147, i32 0, i32 10
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @V2_QPC_BYTE_172_SQ_CUR_PSN_M, align 4
  %151 = load i32, i32* @V2_QPC_BYTE_172_SQ_CUR_PSN_S, align 4
  %152 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %153 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @roce_set_field(i32 %149, i32 %150, i32 %151, i32 %154)
  %156 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %11, align 8
  %157 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %156, i32 0, i32 10
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @V2_QPC_BYTE_172_SQ_CUR_PSN_M, align 4
  %160 = load i32, i32* @V2_QPC_BYTE_172_SQ_CUR_PSN_S, align 4
  %161 = call i32 @roce_set_field(i32 %158, i32 %159, i32 %160, i32 0)
  %162 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %10, align 8
  %163 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %162, i32 0, i32 9
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @V2_QPC_BYTE_196_SQ_MAX_PSN_M, align 4
  %166 = load i32, i32* @V2_QPC_BYTE_196_SQ_MAX_PSN_S, align 4
  %167 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %168 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @roce_set_field(i32 %164, i32 %165, i32 %166, i32 %169)
  %171 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %11, align 8
  %172 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %171, i32 0, i32 9
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @V2_QPC_BYTE_196_SQ_MAX_PSN_M, align 4
  %175 = load i32, i32* @V2_QPC_BYTE_196_SQ_MAX_PSN_S, align 4
  %176 = call i32 @roce_set_field(i32 %173, i32 %174, i32 %175, i32 0)
  %177 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %10, align 8
  %178 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %177, i32 0, i32 8
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @V2_QPC_BYTE_220_RETRY_MSG_PSN_M, align 4
  %181 = load i32, i32* @V2_QPC_BYTE_220_RETRY_MSG_PSN_S, align 4
  %182 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %183 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @roce_set_field(i32 %179, i32 %180, i32 %181, i32 %184)
  %186 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %11, align 8
  %187 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %186, i32 0, i32 8
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @V2_QPC_BYTE_220_RETRY_MSG_PSN_M, align 4
  %190 = load i32, i32* @V2_QPC_BYTE_220_RETRY_MSG_PSN_S, align 4
  %191 = call i32 @roce_set_field(i32 %188, i32 %189, i32 %190, i32 0)
  %192 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %10, align 8
  %193 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %192, i32 0, i32 7
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @V2_QPC_BYTE_224_RETRY_MSG_PSN_M, align 4
  %196 = load i32, i32* @V2_QPC_BYTE_224_RETRY_MSG_PSN_S, align 4
  %197 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %198 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @V2_QPC_BYTE_220_RETRY_MSG_PSN_S, align 4
  %201 = ashr i32 %199, %200
  %202 = call i32 @roce_set_field(i32 %194, i32 %195, i32 %196, i32 %201)
  %203 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %11, align 8
  %204 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %203, i32 0, i32 7
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @V2_QPC_BYTE_224_RETRY_MSG_PSN_M, align 4
  %207 = load i32, i32* @V2_QPC_BYTE_224_RETRY_MSG_PSN_S, align 4
  %208 = call i32 @roce_set_field(i32 %205, i32 %206, i32 %207, i32 0)
  %209 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %10, align 8
  %210 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %209, i32 0, i32 7
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @V2_QPC_BYTE_224_RETRY_MSG_FPKT_PSN_M, align 4
  %213 = load i32, i32* @V2_QPC_BYTE_224_RETRY_MSG_FPKT_PSN_S, align 4
  %214 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %215 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @roce_set_field(i32 %211, i32 %212, i32 %213, i32 %216)
  %218 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %11, align 8
  %219 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %218, i32 0, i32 7
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @V2_QPC_BYTE_224_RETRY_MSG_FPKT_PSN_M, align 4
  %222 = load i32, i32* @V2_QPC_BYTE_224_RETRY_MSG_FPKT_PSN_S, align 4
  %223 = call i32 @roce_set_field(i32 %220, i32 %221, i32 %222, i32 0)
  %224 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %10, align 8
  %225 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %224, i32 0, i32 6
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @V2_QPC_BYTE_244_RX_ACK_EPSN_M, align 4
  %228 = load i32, i32* @V2_QPC_BYTE_244_RX_ACK_EPSN_S, align 4
  %229 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %230 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @roce_set_field(i32 %226, i32 %227, i32 %228, i32 %231)
  %233 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %11, align 8
  %234 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %233, i32 0, i32 6
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @V2_QPC_BYTE_244_RX_ACK_EPSN_M, align 4
  %237 = load i32, i32* @V2_QPC_BYTE_244_RX_ACK_EPSN_S, align 4
  %238 = call i32 @roce_set_field(i32 %235, i32 %236, i32 %237, i32 0)
  br label %239

239:                                              ; preds = %146, %141
  %240 = load i32, i32* %9, align 4
  %241 = load i32, i32* @IB_QP_MAX_DEST_RD_ATOMIC, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %267

244:                                              ; preds = %239
  %245 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %246 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %245, i32 0, i32 8
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %267

249:                                              ; preds = %244
  %250 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %10, align 8
  %251 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %250, i32 0, i32 5
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* @V2_QPC_BYTE_140_RR_MAX_M, align 4
  %254 = load i32, i32* @V2_QPC_BYTE_140_RR_MAX_S, align 4
  %255 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %256 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %255, i32 0, i32 8
  %257 = load i64, i64* %256, align 8
  %258 = sub nsw i64 %257, 1
  %259 = call i32 @fls(i64 %258)
  %260 = call i32 @roce_set_field(i32 %252, i32 %253, i32 %254, i32 %259)
  %261 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %11, align 8
  %262 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %261, i32 0, i32 5
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @V2_QPC_BYTE_140_RR_MAX_M, align 4
  %265 = load i32, i32* @V2_QPC_BYTE_140_RR_MAX_S, align 4
  %266 = call i32 @roce_set_field(i32 %263, i32 %264, i32 %265, i32 0)
  br label %267

267:                                              ; preds = %249, %244, %239
  %268 = load i32, i32* %9, align 4
  %269 = load i32, i32* @IB_QP_MAX_QP_RD_ATOMIC, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %295

272:                                              ; preds = %267
  %273 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %274 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %273, i32 0, i32 7
  %275 = load i64, i64* %274, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %295

277:                                              ; preds = %272
  %278 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %10, align 8
  %279 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %278, i32 0, i32 4
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* @V2_QPC_BYTE_208_SR_MAX_M, align 4
  %282 = load i32, i32* @V2_QPC_BYTE_208_SR_MAX_S, align 4
  %283 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %284 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %283, i32 0, i32 7
  %285 = load i64, i64* %284, align 8
  %286 = sub nsw i64 %285, 1
  %287 = call i32 @fls(i64 %286)
  %288 = call i32 @roce_set_field(i32 %280, i32 %281, i32 %282, i32 %287)
  %289 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %11, align 8
  %290 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %289, i32 0, i32 4
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* @V2_QPC_BYTE_208_SR_MAX_M, align 4
  %293 = load i32, i32* @V2_QPC_BYTE_208_SR_MAX_S, align 4
  %294 = call i32 @roce_set_field(i32 %291, i32 %292, i32 %293, i32 0)
  br label %295

295:                                              ; preds = %277, %272, %267
  %296 = load i32, i32* %9, align 4
  %297 = load i32, i32* @IB_QP_ACCESS_FLAGS, align 4
  %298 = load i32, i32* @IB_QP_MAX_DEST_RD_ATOMIC, align 4
  %299 = or i32 %297, %298
  %300 = and i32 %296, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %309

302:                                              ; preds = %295
  %303 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %13, align 8
  %304 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %10, align 8
  %305 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %11, align 8
  %306 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %307 = load i32, i32* %9, align 4
  %308 = call i32 @set_access_flags(%struct.hns_roce_qp* %303, %struct.hns_roce_v2_qp_context* %304, %struct.hns_roce_v2_qp_context* %305, %struct.ib_qp_attr* %306, i32 %307)
  br label %309

309:                                              ; preds = %302, %295
  %310 = load i32, i32* %9, align 4
  %311 = load i32, i32* @IB_QP_MIN_RNR_TIMER, align 4
  %312 = and i32 %310, %311
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %330

314:                                              ; preds = %309
  %315 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %10, align 8
  %316 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %315, i32 0, i32 3
  %317 = load i32, i32* %316, align 8
  %318 = load i32, i32* @V2_QPC_BYTE_80_MIN_RNR_TIME_M, align 4
  %319 = load i32, i32* @V2_QPC_BYTE_80_MIN_RNR_TIME_S, align 4
  %320 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %321 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %320, i32 0, i32 4
  %322 = load i32, i32* %321, align 8
  %323 = call i32 @roce_set_field(i32 %317, i32 %318, i32 %319, i32 %322)
  %324 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %11, align 8
  %325 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %324, i32 0, i32 3
  %326 = load i32, i32* %325, align 8
  %327 = load i32, i32* @V2_QPC_BYTE_80_MIN_RNR_TIME_M, align 4
  %328 = load i32, i32* @V2_QPC_BYTE_80_MIN_RNR_TIME_S, align 4
  %329 = call i32 @roce_set_field(i32 %326, i32 %327, i32 %328, i32 0)
  br label %330

330:                                              ; preds = %314, %309
  %331 = load i32, i32* %9, align 4
  %332 = load i32, i32* @IB_QP_RQ_PSN, align 4
  %333 = and i32 %331, %332
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %367

335:                                              ; preds = %330
  %336 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %10, align 8
  %337 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %336, i32 0, i32 2
  %338 = load i32, i32* %337, align 4
  %339 = load i32, i32* @V2_QPC_BYTE_108_RX_REQ_EPSN_M, align 4
  %340 = load i32, i32* @V2_QPC_BYTE_108_RX_REQ_EPSN_S, align 4
  %341 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %342 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %341, i32 0, i32 5
  %343 = load i32, i32* %342, align 4
  %344 = call i32 @roce_set_field(i32 %338, i32 %339, i32 %340, i32 %343)
  %345 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %11, align 8
  %346 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %345, i32 0, i32 2
  %347 = load i32, i32* %346, align 4
  %348 = load i32, i32* @V2_QPC_BYTE_108_RX_REQ_EPSN_M, align 4
  %349 = load i32, i32* @V2_QPC_BYTE_108_RX_REQ_EPSN_S, align 4
  %350 = call i32 @roce_set_field(i32 %347, i32 %348, i32 %349, i32 0)
  %351 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %10, align 8
  %352 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 8
  %354 = load i32, i32* @V2_QPC_BYTE_152_RAQ_PSN_M, align 4
  %355 = load i32, i32* @V2_QPC_BYTE_152_RAQ_PSN_S, align 4
  %356 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %357 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %356, i32 0, i32 5
  %358 = load i32, i32* %357, align 4
  %359 = sub nsw i32 %358, 1
  %360 = call i32 @roce_set_field(i32 %353, i32 %354, i32 %355, i32 %359)
  %361 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %11, align 8
  %362 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 8
  %364 = load i32, i32* @V2_QPC_BYTE_152_RAQ_PSN_M, align 4
  %365 = load i32, i32* @V2_QPC_BYTE_152_RAQ_PSN_S, align 4
  %366 = call i32 @roce_set_field(i32 %363, i32 %364, i32 %365, i32 0)
  br label %367

367:                                              ; preds = %335, %330
  %368 = load i32, i32* %9, align 4
  %369 = load i32, i32* @IB_QP_QKEY, align 4
  %370 = and i32 %368, %369
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %386

372:                                              ; preds = %367
  %373 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %374 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %373, i32 0, i32 6
  %375 = load i32, i32* %374, align 8
  %376 = call i64 @cpu_to_le32(i32 %375)
  %377 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %10, align 8
  %378 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %377, i32 0, i32 0
  store i64 %376, i64* %378, align 8
  %379 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %11, align 8
  %380 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %379, i32 0, i32 0
  store i64 0, i64* %380, align 8
  %381 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %382 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %381, i32 0, i32 6
  %383 = load i32, i32* %382, align 8
  %384 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %13, align 8
  %385 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %384, i32 0, i32 0
  store i32 %383, i32* %385, align 4
  br label %386

386:                                              ; preds = %372, %367
  %387 = load i32, i32* %14, align 4
  store i32 %387, i32* %6, align 4
  br label %388

388:                                              ; preds = %386, %34
  %389 = load i32, i32* %6, align 4
  ret i32 %389
}

declare dso_local %struct.hns_roce_dev* @to_hr_dev(i32) #1

declare dso_local %struct.hns_roce_qp* @to_hr_qp(%struct.ib_qp*) #1

declare dso_local i32 @hns_roce_v2_set_path(%struct.ib_qp*, %struct.ib_qp_attr*, i32, %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context*) #1

declare dso_local i32 @roce_set_field(i32, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @fls(i64) #1

declare dso_local i32 @set_access_flags(%struct.hns_roce_qp*, %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context*, %struct.ib_qp_attr*, i32) #1

declare dso_local i64 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
