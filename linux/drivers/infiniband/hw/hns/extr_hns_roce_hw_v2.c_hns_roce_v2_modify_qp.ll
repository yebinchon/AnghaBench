; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_modify_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_modify_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i64, i64, i64, i32, i32 }
%struct.ib_qp_attr = type { i32 }
%struct.hns_roce_dev = type { %struct.device* }
%struct.device = type { i32 }
%struct.hns_roce_qp = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, i64, i64, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i64* }
%struct.TYPE_5__ = type { i32, i64, i64 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.hns_roce_v2_qp_context = type { i32, i32, i32, i32 }

@IB_QPS_ERR = common dso_local global i32 0, align 4
@V2_QPC_BYTE_160_SQ_PRODUCER_IDX_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_160_SQ_PRODUCER_IDX_S = common dso_local global i32 0, align 4
@V2_QPC_BYTE_84_RQ_PRODUCER_IDX_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_84_RQ_PRODUCER_IDX_S = common dso_local global i32 0, align 4
@V2_QPC_BYTE_108_INV_CREDIT_S = common dso_local global i32 0, align 4
@V2_QPC_BYTE_60_QP_ST_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_60_QP_ST_S = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"hns_roce_qp_modify failed(%d)\0A\00", align 1
@IB_QPS_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_qp*, %struct.ib_qp_attr*, i32, i32, i32)* @hns_roce_v2_modify_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_v2_modify_qp(%struct.ib_qp* %0, %struct.ib_qp_attr* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ib_qp*, align 8
  %7 = alloca %struct.ib_qp_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.hns_roce_dev*, align 8
  %12 = alloca %struct.hns_roce_qp*, align 8
  %13 = alloca [2 x %struct.hns_roce_v2_qp_context], align 16
  %14 = alloca %struct.hns_roce_v2_qp_context*, align 8
  %15 = alloca %struct.hns_roce_v2_qp_context*, align 8
  %16 = alloca %struct.device*, align 8
  %17 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %6, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %19 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.hns_roce_dev* @to_hr_dev(i32 %20)
  store %struct.hns_roce_dev* %21, %struct.hns_roce_dev** %11, align 8
  %22 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %23 = call %struct.hns_roce_qp* @to_hr_qp(%struct.ib_qp* %22)
  store %struct.hns_roce_qp* %23, %struct.hns_roce_qp** %12, align 8
  %24 = getelementptr inbounds [2 x %struct.hns_roce_v2_qp_context], [2 x %struct.hns_roce_v2_qp_context]* %13, i64 0, i64 0
  store %struct.hns_roce_v2_qp_context* %24, %struct.hns_roce_v2_qp_context** %14, align 8
  %25 = getelementptr inbounds [2 x %struct.hns_roce_v2_qp_context], [2 x %struct.hns_roce_v2_qp_context]* %13, i64 0, i64 0
  %26 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %25, i64 1
  store %struct.hns_roce_v2_qp_context* %26, %struct.hns_roce_v2_qp_context** %15, align 8
  %27 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %11, align 8
  %28 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %27, i32 0, i32 0
  %29 = load %struct.device*, %struct.device** %28, align 8
  store %struct.device* %29, %struct.device** %16, align 8
  %30 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %14, align 8
  %31 = call i32 @memset(%struct.hns_roce_v2_qp_context* %30, i32 0, i32 16)
  %32 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %15, align 8
  %33 = call i32 @memset(%struct.hns_roce_v2_qp_context* %32, i32 255, i32 16)
  %34 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %35 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %14, align 8
  %40 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %15, align 8
  %41 = call i32 @hns_roce_v2_set_abs_fields(%struct.ib_qp* %34, %struct.ib_qp_attr* %35, i32 %36, i32 %37, i32 %38, %struct.hns_roce_v2_qp_context* %39, %struct.hns_roce_v2_qp_context* %40)
  store i32 %41, i32* %17, align 4
  %42 = load i32, i32* %17, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %5
  br label %222

45:                                               ; preds = %5
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @IB_QPS_ERR, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %88

49:                                               ; preds = %45
  %50 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %14, align 8
  %51 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @V2_QPC_BYTE_160_SQ_PRODUCER_IDX_M, align 4
  %54 = load i32, i32* @V2_QPC_BYTE_160_SQ_PRODUCER_IDX_S, align 4
  %55 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %12, align 8
  %56 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @roce_set_field(i32 %52, i32 %53, i32 %54, i32 %58)
  %60 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %15, align 8
  %61 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @V2_QPC_BYTE_160_SQ_PRODUCER_IDX_M, align 4
  %64 = load i32, i32* @V2_QPC_BYTE_160_SQ_PRODUCER_IDX_S, align 4
  %65 = call i32 @roce_set_field(i32 %62, i32 %63, i32 %64, i32 0)
  %66 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %67 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %87, label %70

70:                                               ; preds = %49
  %71 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %14, align 8
  %72 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @V2_QPC_BYTE_84_RQ_PRODUCER_IDX_M, align 4
  %75 = load i32, i32* @V2_QPC_BYTE_84_RQ_PRODUCER_IDX_S, align 4
  %76 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %12, align 8
  %77 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @roce_set_field(i32 %73, i32 %74, i32 %75, i32 %79)
  %81 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %15, align 8
  %82 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @V2_QPC_BYTE_84_RQ_PRODUCER_IDX_M, align 4
  %85 = load i32, i32* @V2_QPC_BYTE_84_RQ_PRODUCER_IDX_S, align 4
  %86 = call i32 @roce_set_field(i32 %83, i32 %84, i32 %85, i32 0)
  br label %87

87:                                               ; preds = %70, %49
  br label %88

88:                                               ; preds = %87, %45
  %89 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %90 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %91 = load i32, i32* %8, align 4
  %92 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %14, align 8
  %93 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %15, align 8
  %94 = call i32 @hns_roce_v2_set_opt_fields(%struct.ib_qp* %89, %struct.ib_qp_attr* %90, i32 %91, %struct.hns_roce_v2_qp_context* %92, %struct.hns_roce_v2_qp_context* %93)
  store i32 %94, i32* %17, align 4
  %95 = load i32, i32* %17, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %88
  br label %222

98:                                               ; preds = %88
  %99 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %14, align 8
  %100 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @V2_QPC_BYTE_108_INV_CREDIT_S, align 4
  %103 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %104 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i32 1, i32 0
  %109 = call i32 @roce_set_bit(i32 %101, i32 %102, i32 %108)
  %110 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %15, align 8
  %111 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @V2_QPC_BYTE_108_INV_CREDIT_S, align 4
  %114 = call i32 @roce_set_bit(i32 %112, i32 %113, i32 0)
  %115 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %14, align 8
  %116 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @V2_QPC_BYTE_60_QP_ST_M, align 4
  %119 = load i32, i32* @V2_QPC_BYTE_60_QP_ST_S, align 4
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @roce_set_field(i32 %117, i32 %118, i32 %119, i32 %120)
  %122 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %15, align 8
  %123 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @V2_QPC_BYTE_60_QP_ST_M, align 4
  %126 = load i32, i32* @V2_QPC_BYTE_60_QP_ST_S, align 4
  %127 = call i32 @roce_set_field(i32 %124, i32 %125, i32 %126, i32 0)
  %128 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %11, align 8
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* %10, align 4
  %131 = getelementptr inbounds [2 x %struct.hns_roce_v2_qp_context], [2 x %struct.hns_roce_v2_qp_context]* %13, i64 0, i64 0
  %132 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %12, align 8
  %133 = call i32 @hns_roce_v2_qp_modify(%struct.hns_roce_dev* %128, i32 %129, i32 %130, %struct.hns_roce_v2_qp_context* %131, %struct.hns_roce_qp* %132)
  store i32 %133, i32* %17, align 4
  %134 = load i32, i32* %17, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %98
  %137 = load %struct.device*, %struct.device** %16, align 8
  %138 = load i32, i32* %17, align 4
  %139 = call i32 @dev_err(%struct.device* %137, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %138)
  br label %222

140:                                              ; preds = %98
  %141 = load i32, i32* %10, align 4
  %142 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %12, align 8
  %143 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  %144 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %145 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @hns_roce_v2_record_opt_fields(%struct.ib_qp* %144, %struct.ib_qp_attr* %145, i32 %146)
  %148 = load i32, i32* %10, align 4
  %149 = load i32, i32* @IB_QPS_RESET, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %221

151:                                              ; preds = %140
  %152 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %153 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %221, label %156

156:                                              ; preds = %151
  %157 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %158 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @to_hr_cq(i64 %159)
  %161 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %12, align 8
  %162 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %161, i32 0, i32 6
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %165 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %156
  %169 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %170 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = call i32* @to_hr_srq(i64 %171)
  br label %174

173:                                              ; preds = %156
  br label %174

174:                                              ; preds = %173, %168
  %175 = phi i32* [ %172, %168 ], [ null, %173 ]
  %176 = call i32 @hns_roce_v2_cq_clean(i32 %160, i32 %163, i32* %175)
  %177 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %178 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %181 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %179, %182
  br i1 %183, label %184, label %193

184:                                              ; preds = %174
  %185 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %186 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = call i32 @to_hr_cq(i64 %187)
  %189 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %12, align 8
  %190 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %189, i32 0, i32 6
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @hns_roce_v2_cq_clean(i32 %188, i32 %191, i32* null)
  br label %193

193:                                              ; preds = %184, %174
  %194 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %12, align 8
  %195 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 0
  store i32 0, i32* %196, align 8
  %197 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %12, align 8
  %198 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 2
  store i64 0, i64* %199, align 8
  %200 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %12, align 8
  %201 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %200, i32 0, i32 5
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 0
  store i32 0, i32* %202, align 8
  %203 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %12, align 8
  %204 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %203, i32 0, i32 5
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 1
  store i64 0, i64* %205, align 8
  %206 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %12, align 8
  %207 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %206, i32 0, i32 4
  store i64 0, i64* %207, align 8
  %208 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %12, align 8
  %209 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %208, i32 0, i32 3
  store i64 0, i64* %209, align 8
  %210 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %12, align 8
  %211 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %193
  %216 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %12, align 8
  %217 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 0
  %219 = load i64*, i64** %218, align 8
  store i64 0, i64* %219, align 8
  br label %220

220:                                              ; preds = %215, %193
  br label %221

221:                                              ; preds = %220, %151, %140
  br label %222

222:                                              ; preds = %221, %136, %97, %44
  %223 = load i32, i32* %17, align 4
  ret i32 %223
}

declare dso_local %struct.hns_roce_dev* @to_hr_dev(i32) #1

declare dso_local %struct.hns_roce_qp* @to_hr_qp(%struct.ib_qp*) #1

declare dso_local i32 @memset(%struct.hns_roce_v2_qp_context*, i32, i32) #1

declare dso_local i32 @hns_roce_v2_set_abs_fields(%struct.ib_qp*, %struct.ib_qp_attr*, i32, i32, i32, %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context*) #1

declare dso_local i32 @roce_set_field(i32, i32, i32, i32) #1

declare dso_local i32 @hns_roce_v2_set_opt_fields(%struct.ib_qp*, %struct.ib_qp_attr*, i32, %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context*) #1

declare dso_local i32 @roce_set_bit(i32, i32, i32) #1

declare dso_local i32 @hns_roce_v2_qp_modify(%struct.hns_roce_dev*, i32, i32, %struct.hns_roce_v2_qp_context*, %struct.hns_roce_qp*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @hns_roce_v2_record_opt_fields(%struct.ib_qp*, %struct.ib_qp_attr*, i32) #1

declare dso_local i32 @hns_roce_v2_cq_clean(i32, i32, i32*) #1

declare dso_local i32 @to_hr_cq(i64) #1

declare dso_local i32* @to_hr_srq(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
