; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_modify_qp_rtr_to_rts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_modify_qp_rtr_to_rts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i64, i32 }
%struct.ib_qp_attr = type { i32 }
%struct.hns_roce_v2_qp_context = type { i32, i32, i32, i32, i32, i32, i8*, i32, i8*, i32, i8* }
%struct.hns_roce_dev = type { %struct.TYPE_4__, %struct.device* }
%struct.TYPE_4__ = type { i32 }
%struct.device = type { i32 }
%struct.hns_roce_qp = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"qp(0x%lx) buf pa find failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"qp(0x%lx) sge pa find failed\0A\00", align 1
@IB_QP_ALT_PATH = common dso_local global i32 0, align 4
@IB_QP_PATH_MIG_STATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"RTR2RTS attr_mask (0x%x)error\0A\00", align 1
@PAGE_ADDR_SHIFT = common dso_local global i32 0, align 4
@V2_QPC_BYTE_168_SQ_CUR_BLK_ADDR_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_168_SQ_CUR_BLK_ADDR_S = common dso_local global i32 0, align 4
@IB_QPT_GSI = common dso_local global i64 0, align 8
@HNS_ROCE_V2_UC_RC_SGE_NUM_IN_WQE = common dso_local global i64 0, align 8
@V2_QPC_BYTE_184_SQ_CUR_SGE_BLK_ADDR_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_184_SQ_CUR_SGE_BLK_ADDR_S = common dso_local global i32 0, align 4
@V2_QPC_BYTE_232_RX_SQ_CUR_BLK_ADDR_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_232_RX_SQ_CUR_BLK_ADDR_S = common dso_local global i32 0, align 4
@V2_QPC_BYTE_232_IRRL_SGE_IDX_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_232_IRRL_SGE_IDX_S = common dso_local global i32 0, align 4
@V2_QPC_BYTE_240_RX_ACK_MSN_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_240_RX_ACK_MSN_S = common dso_local global i32 0, align 4
@V2_QPC_BYTE_248_ACK_LAST_OPTYPE_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_248_ACK_LAST_OPTYPE_S = common dso_local global i32 0, align 4
@V2_QPC_BYTE_248_IRRL_PSN_VLD_S = common dso_local global i32 0, align 4
@V2_QPC_BYTE_248_IRRL_PSN_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_248_IRRL_PSN_S = common dso_local global i32 0, align 4
@V2_QPC_BYTE_240_IRRL_TAIL_REAL_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_240_IRRL_TAIL_REAL_S = common dso_local global i32 0, align 4
@V2_QPC_BYTE_220_RETRY_MSG_MSN_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_220_RETRY_MSG_MSN_S = common dso_local global i32 0, align 4
@V2_QPC_BYTE_248_RNR_RETRY_FLAG_S = common dso_local global i32 0, align 4
@V2_QPC_BYTE_212_CHECK_FLG_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_212_CHECK_FLG_S = common dso_local global i32 0, align 4
@V2_QPC_BYTE_212_LSN_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_212_LSN_S = common dso_local global i32 0, align 4
@V2_QPC_BYTE_196_IRRL_HEAD_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_196_IRRL_HEAD_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_qp*, %struct.ib_qp_attr*, i32, %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context*)* @modify_qp_rtr_to_rts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @modify_qp_rtr_to_rts(%struct.ib_qp* %0, %struct.ib_qp_attr* %1, i32 %2, %struct.hns_roce_v2_qp_context* %3, %struct.hns_roce_v2_qp_context* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_qp*, align 8
  %8 = alloca %struct.ib_qp_attr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hns_roce_v2_qp_context*, align 8
  %11 = alloca %struct.hns_roce_v2_qp_context*, align 8
  %12 = alloca %struct.hns_roce_dev*, align 8
  %13 = alloca %struct.hns_roce_qp*, align 8
  %14 = alloca %struct.device*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %7, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.hns_roce_v2_qp_context* %3, %struct.hns_roce_v2_qp_context** %10, align 8
  store %struct.hns_roce_v2_qp_context* %4, %struct.hns_roce_v2_qp_context** %11, align 8
  %19 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %20 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.hns_roce_dev* @to_hr_dev(i32 %21)
  store %struct.hns_roce_dev* %22, %struct.hns_roce_dev** %12, align 8
  %23 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %24 = call %struct.hns_roce_qp* @to_hr_qp(%struct.ib_qp* %23)
  store %struct.hns_roce_qp* %24, %struct.hns_roce_qp** %13, align 8
  %25 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %12, align 8
  %26 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %25, i32 0, i32 1
  %27 = load %struct.device*, %struct.device** %26, align 8
  store %struct.device* %27, %struct.device** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %28 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %12, align 8
  %29 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %13, align 8
  %30 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %29, i32 0, i32 3
  %31 = call i32 @hns_roce_mtr_find(%struct.hns_roce_dev* %28, i32* %30, i32 0, i32* %16, i32 1, i32* null)
  store i32 %31, i32* %18, align 4
  %32 = load i32, i32* %18, align 4
  %33 = icmp slt i32 %32, 1
  br i1 %33, label %34, label %42

34:                                               ; preds = %5
  %35 = load %struct.device*, %struct.device** %14, align 8
  %36 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %13, align 8
  %37 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @dev_err(%struct.device* %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %268

42:                                               ; preds = %5
  %43 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %13, align 8
  %44 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %77

48:                                               ; preds = %42
  %49 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %12, align 8
  %50 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @PAGE_SHIFT, align 4
  %54 = add nsw i32 %52, %53
  %55 = shl i32 1, %54
  store i32 %55, i32* %17, align 4
  %56 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %12, align 8
  %57 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %13, align 8
  %58 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %57, i32 0, i32 3
  %59 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %13, align 8
  %60 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %17, align 4
  %64 = sdiv i32 %62, %63
  %65 = call i32 @hns_roce_mtr_find(%struct.hns_roce_dev* %56, i32* %58, i32 %64, i32* %15, i32 1, i32* null)
  store i32 %65, i32* %18, align 4
  %66 = load i32, i32* %18, align 4
  %67 = icmp slt i32 %66, 1
  br i1 %67, label %68, label %76

68:                                               ; preds = %48
  %69 = load %struct.device*, %struct.device** %14, align 8
  %70 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %13, align 8
  %71 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @dev_err(%struct.device* %69, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %6, align 4
  br label %268

76:                                               ; preds = %48
  br label %77

77:                                               ; preds = %76, %42
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @IB_QP_ALT_PATH, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %77
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @IB_QP_PATH_MIG_STATE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %82, %77
  %88 = load %struct.device*, %struct.device** %14, align 8
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @dev_err(%struct.device* %88, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %6, align 4
  br label %268

93:                                               ; preds = %82
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* @PAGE_ADDR_SHIFT, align 4
  %96 = ashr i32 %94, %95
  %97 = call i8* @cpu_to_le32(i32 %96)
  %98 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %10, align 8
  %99 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %98, i32 0, i32 10
  store i8* %97, i8** %99, align 8
  %100 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %10, align 8
  %101 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %100, i32 0, i32 9
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @V2_QPC_BYTE_168_SQ_CUR_BLK_ADDR_M, align 4
  %104 = load i32, i32* @V2_QPC_BYTE_168_SQ_CUR_BLK_ADDR_S, align 4
  %105 = load i32, i32* %16, align 4
  %106 = load i32, i32* @PAGE_ADDR_SHIFT, align 4
  %107 = add nsw i32 32, %106
  %108 = ashr i32 %105, %107
  %109 = call i32 @roce_set_field(i32 %102, i32 %103, i32 %104, i32 %108)
  %110 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %11, align 8
  %111 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %110, i32 0, i32 10
  store i8* null, i8** %111, align 8
  %112 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %11, align 8
  %113 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %112, i32 0, i32 9
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @V2_QPC_BYTE_168_SQ_CUR_BLK_ADDR_M, align 4
  %116 = load i32, i32* @V2_QPC_BYTE_168_SQ_CUR_BLK_ADDR_S, align 4
  %117 = call i32 @roce_set_field(i32 %114, i32 %115, i32 %116, i32 0)
  %118 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %119 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @IB_QPT_GSI, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %130, label %123

123:                                              ; preds = %93
  %124 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %13, align 8
  %125 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @HNS_ROCE_V2_UC_RC_SGE_NUM_IN_WQE, align 8
  %129 = icmp sgt i64 %127, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %123, %93
  %131 = load i32, i32* %15, align 4
  %132 = load i32, i32* @PAGE_ADDR_SHIFT, align 4
  %133 = ashr i32 %131, %132
  %134 = call i8* @cpu_to_le32(i32 %133)
  br label %136

135:                                              ; preds = %123
  br label %136

136:                                              ; preds = %135, %130
  %137 = phi i8* [ %134, %130 ], [ null, %135 ]
  %138 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %10, align 8
  %139 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %138, i32 0, i32 8
  store i8* %137, i8** %139, align 8
  %140 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %10, align 8
  %141 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %140, i32 0, i32 7
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @V2_QPC_BYTE_184_SQ_CUR_SGE_BLK_ADDR_M, align 4
  %144 = load i32, i32* @V2_QPC_BYTE_184_SQ_CUR_SGE_BLK_ADDR_S, align 4
  %145 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %146 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @IB_QPT_GSI, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %157, label %150

150:                                              ; preds = %136
  %151 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %13, align 8
  %152 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @HNS_ROCE_V2_UC_RC_SGE_NUM_IN_WQE, align 8
  %156 = icmp sgt i64 %154, %155
  br i1 %156, label %157, label %162

157:                                              ; preds = %150, %136
  %158 = load i32, i32* %15, align 4
  %159 = load i32, i32* @PAGE_ADDR_SHIFT, align 4
  %160 = add nsw i32 32, %159
  %161 = ashr i32 %158, %160
  br label %163

162:                                              ; preds = %150
  br label %163

163:                                              ; preds = %162, %157
  %164 = phi i32 [ %161, %157 ], [ 0, %162 ]
  %165 = call i32 @roce_set_field(i32 %142, i32 %143, i32 %144, i32 %164)
  %166 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %11, align 8
  %167 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %166, i32 0, i32 8
  store i8* null, i8** %167, align 8
  %168 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %11, align 8
  %169 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %168, i32 0, i32 7
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @V2_QPC_BYTE_184_SQ_CUR_SGE_BLK_ADDR_M, align 4
  %172 = load i32, i32* @V2_QPC_BYTE_184_SQ_CUR_SGE_BLK_ADDR_S, align 4
  %173 = call i32 @roce_set_field(i32 %170, i32 %171, i32 %172, i32 0)
  %174 = load i32, i32* %16, align 4
  %175 = load i32, i32* @PAGE_ADDR_SHIFT, align 4
  %176 = ashr i32 %174, %175
  %177 = call i8* @cpu_to_le32(i32 %176)
  %178 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %10, align 8
  %179 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %178, i32 0, i32 6
  store i8* %177, i8** %179, align 8
  %180 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %10, align 8
  %181 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %180, i32 0, i32 5
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @V2_QPC_BYTE_232_RX_SQ_CUR_BLK_ADDR_M, align 4
  %184 = load i32, i32* @V2_QPC_BYTE_232_RX_SQ_CUR_BLK_ADDR_S, align 4
  %185 = load i32, i32* %16, align 4
  %186 = load i32, i32* @PAGE_ADDR_SHIFT, align 4
  %187 = add nsw i32 32, %186
  %188 = ashr i32 %185, %187
  %189 = call i32 @roce_set_field(i32 %182, i32 %183, i32 %184, i32 %188)
  %190 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %11, align 8
  %191 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %190, i32 0, i32 6
  store i8* null, i8** %191, align 8
  %192 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %11, align 8
  %193 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @V2_QPC_BYTE_232_RX_SQ_CUR_BLK_ADDR_M, align 4
  %196 = load i32, i32* @V2_QPC_BYTE_232_RX_SQ_CUR_BLK_ADDR_S, align 4
  %197 = call i32 @roce_set_field(i32 %194, i32 %195, i32 %196, i32 0)
  %198 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %11, align 8
  %199 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %198, i32 0, i32 5
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @V2_QPC_BYTE_232_IRRL_SGE_IDX_M, align 4
  %202 = load i32, i32* @V2_QPC_BYTE_232_IRRL_SGE_IDX_S, align 4
  %203 = call i32 @roce_set_field(i32 %200, i32 %201, i32 %202, i32 0)
  %204 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %11, align 8
  %205 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @V2_QPC_BYTE_240_RX_ACK_MSN_M, align 4
  %208 = load i32, i32* @V2_QPC_BYTE_240_RX_ACK_MSN_S, align 4
  %209 = call i32 @roce_set_field(i32 %206, i32 %207, i32 %208, i32 0)
  %210 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %11, align 8
  %211 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @V2_QPC_BYTE_248_ACK_LAST_OPTYPE_M, align 4
  %214 = load i32, i32* @V2_QPC_BYTE_248_ACK_LAST_OPTYPE_S, align 4
  %215 = call i32 @roce_set_field(i32 %212, i32 %213, i32 %214, i32 0)
  %216 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %11, align 8
  %217 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @V2_QPC_BYTE_248_IRRL_PSN_VLD_S, align 4
  %220 = call i32 @roce_set_bit(i32 %218, i32 %219, i32 0)
  %221 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %11, align 8
  %222 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* @V2_QPC_BYTE_248_IRRL_PSN_M, align 4
  %225 = load i32, i32* @V2_QPC_BYTE_248_IRRL_PSN_S, align 4
  %226 = call i32 @roce_set_field(i32 %223, i32 %224, i32 %225, i32 0)
  %227 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %11, align 8
  %228 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %227, i32 0, i32 4
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @V2_QPC_BYTE_240_IRRL_TAIL_REAL_M, align 4
  %231 = load i32, i32* @V2_QPC_BYTE_240_IRRL_TAIL_REAL_S, align 4
  %232 = call i32 @roce_set_field(i32 %229, i32 %230, i32 %231, i32 0)
  %233 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %11, align 8
  %234 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @V2_QPC_BYTE_220_RETRY_MSG_MSN_M, align 4
  %237 = load i32, i32* @V2_QPC_BYTE_220_RETRY_MSG_MSN_S, align 4
  %238 = call i32 @roce_set_field(i32 %235, i32 %236, i32 %237, i32 0)
  %239 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %11, align 8
  %240 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @V2_QPC_BYTE_248_RNR_RETRY_FLAG_S, align 4
  %243 = call i32 @roce_set_bit(i32 %241, i32 %242, i32 0)
  %244 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %11, align 8
  %245 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @V2_QPC_BYTE_212_CHECK_FLG_M, align 4
  %248 = load i32, i32* @V2_QPC_BYTE_212_CHECK_FLG_S, align 4
  %249 = call i32 @roce_set_field(i32 %246, i32 %247, i32 %248, i32 0)
  %250 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %10, align 8
  %251 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* @V2_QPC_BYTE_212_LSN_M, align 4
  %254 = load i32, i32* @V2_QPC_BYTE_212_LSN_S, align 4
  %255 = call i32 @roce_set_field(i32 %252, i32 %253, i32 %254, i32 256)
  %256 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %11, align 8
  %257 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* @V2_QPC_BYTE_212_LSN_M, align 4
  %260 = load i32, i32* @V2_QPC_BYTE_212_LSN_S, align 4
  %261 = call i32 @roce_set_field(i32 %258, i32 %259, i32 %260, i32 0)
  %262 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %11, align 8
  %263 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = load i32, i32* @V2_QPC_BYTE_196_IRRL_HEAD_M, align 4
  %266 = load i32, i32* @V2_QPC_BYTE_196_IRRL_HEAD_S, align 4
  %267 = call i32 @roce_set_field(i32 %264, i32 %265, i32 %266, i32 0)
  store i32 0, i32* %6, align 4
  br label %268

268:                                              ; preds = %163, %87, %68, %34
  %269 = load i32, i32* %6, align 4
  ret i32 %269
}

declare dso_local %struct.hns_roce_dev* @to_hr_dev(i32) #1

declare dso_local %struct.hns_roce_qp* @to_hr_qp(%struct.ib_qp*) #1

declare dso_local i32 @hns_roce_mtr_find(%struct.hns_roce_dev*, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @roce_set_field(i32, i32, i32, i32) #1

declare dso_local i32 @roce_set_bit(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
