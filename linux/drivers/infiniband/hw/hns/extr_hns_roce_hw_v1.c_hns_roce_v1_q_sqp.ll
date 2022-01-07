; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_v1_q_sqp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_v1_q_sqp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_qp_attr = type { i64, i32, i32, i32, i64, %struct.TYPE_8__, i64, i64, i64, i64, i64, i64, i64, i64, i8*, i64, i64, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_8__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ib_qp_init_attr = type { i64, %struct.TYPE_8__ }
%struct.hns_roce_dev = type { i32 }
%struct.hns_roce_qp = type { i64, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.hns_roce_sqp_context = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@IB_QPS_RESET = common dso_local global i64 0, align 8
@ROCEE_QP1C_CFG0_0_REG = common dso_local global i64 0, align 8
@QP1C_BYTES_4_QP_STATE_M = common dso_local global i32 0, align 4
@QP1C_BYTES_4_QP_STATE_S = common dso_local global i32 0, align 4
@IB_MTU_256 = common dso_local global i32 0, align 4
@IB_MIG_ARMED = common dso_local global i32 0, align 4
@QKEY_VAL = common dso_local global i32 0, align 4
@RDMA_AH_ATTR_TYPE_ROCE = common dso_local global i32 0, align 4
@QP1C_BYTES_20_PKEY_IDX_M = common dso_local global i32 0, align 4
@QP1C_BYTES_20_PKEY_IDX_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_qp*, %struct.ib_qp_attr*, i32, %struct.ib_qp_init_attr*)* @hns_roce_v1_q_sqp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_v1_q_sqp(%struct.ib_qp* %0, %struct.ib_qp_attr* %1, i32 %2, %struct.ib_qp_init_attr* %3) #0 {
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.ib_qp_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_qp_init_attr*, align 8
  %9 = alloca %struct.hns_roce_dev*, align 8
  %10 = alloca %struct.hns_roce_qp*, align 8
  %11 = alloca %struct.hns_roce_sqp_context, align 8
  %12 = alloca i64, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ib_qp_init_attr* %3, %struct.ib_qp_init_attr** %8, align 8
  %13 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %14 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.hns_roce_dev* @to_hr_dev(i32 %15)
  store %struct.hns_roce_dev* %16, %struct.hns_roce_dev** %9, align 8
  %17 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %18 = call %struct.hns_roce_qp* @to_hr_qp(%struct.ib_qp* %17)
  store %struct.hns_roce_qp* %18, %struct.hns_roce_qp** %10, align 8
  %19 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %10, align 8
  %20 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %19, i32 0, i32 2
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %10, align 8
  %23 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IB_QPS_RESET, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %4
  %28 = load i64, i64* @IB_QPS_RESET, align 8
  %29 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %30 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  br label %161

31:                                               ; preds = %4
  %32 = load i64, i64* @ROCEE_QP1C_CFG0_0_REG, align 8
  %33 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %10, align 8
  %34 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 80
  %38 = add i64 %32, %37
  store i64 %38, i64* %12, align 8
  %39 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %9, align 8
  %40 = load i64, i64* %12, align 8
  %41 = call i32 @roce_read(%struct.hns_roce_dev* %39, i64 %40)
  %42 = call i8* @cpu_to_le32(i32 %41)
  %43 = getelementptr inbounds %struct.hns_roce_sqp_context, %struct.hns_roce_sqp_context* %11, i32 0, i32 1
  store i8* %42, i8** %43, align 8
  %44 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %9, align 8
  %45 = load i64, i64* %12, align 8
  %46 = add nsw i64 %45, 1
  %47 = call i32 @roce_read(%struct.hns_roce_dev* %44, i64 %46)
  %48 = call i8* @cpu_to_le32(i32 %47)
  %49 = getelementptr inbounds %struct.hns_roce_sqp_context, %struct.hns_roce_sqp_context* %11, i32 0, i32 9
  store i8* %48, i8** %49, align 8
  %50 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %9, align 8
  %51 = load i64, i64* %12, align 8
  %52 = add nsw i64 %51, 2
  %53 = call i32 @roce_read(%struct.hns_roce_dev* %50, i64 %52)
  %54 = call i8* @cpu_to_le32(i32 %53)
  %55 = getelementptr inbounds %struct.hns_roce_sqp_context, %struct.hns_roce_sqp_context* %11, i32 0, i32 8
  store i8* %54, i8** %55, align 8
  %56 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %9, align 8
  %57 = load i64, i64* %12, align 8
  %58 = add nsw i64 %57, 3
  %59 = call i32 @roce_read(%struct.hns_roce_dev* %56, i64 %58)
  %60 = call i8* @cpu_to_le32(i32 %59)
  %61 = getelementptr inbounds %struct.hns_roce_sqp_context, %struct.hns_roce_sqp_context* %11, i32 0, i32 7
  store i8* %60, i8** %61, align 8
  %62 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %9, align 8
  %63 = load i64, i64* %12, align 8
  %64 = add nsw i64 %63, 4
  %65 = call i32 @roce_read(%struct.hns_roce_dev* %62, i64 %64)
  %66 = call i8* @cpu_to_le32(i32 %65)
  %67 = getelementptr inbounds %struct.hns_roce_sqp_context, %struct.hns_roce_sqp_context* %11, i32 0, i32 0
  store i8* %66, i8** %67, align 8
  %68 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %9, align 8
  %69 = load i64, i64* %12, align 8
  %70 = add nsw i64 %69, 5
  %71 = call i32 @roce_read(%struct.hns_roce_dev* %68, i64 %70)
  %72 = call i8* @cpu_to_le32(i32 %71)
  %73 = getelementptr inbounds %struct.hns_roce_sqp_context, %struct.hns_roce_sqp_context* %11, i32 0, i32 6
  store i8* %72, i8** %73, align 8
  %74 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %9, align 8
  %75 = load i64, i64* %12, align 8
  %76 = add nsw i64 %75, 6
  %77 = call i32 @roce_read(%struct.hns_roce_dev* %74, i64 %76)
  %78 = call i8* @cpu_to_le32(i32 %77)
  %79 = getelementptr inbounds %struct.hns_roce_sqp_context, %struct.hns_roce_sqp_context* %11, i32 0, i32 5
  store i8* %78, i8** %79, align 8
  %80 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %9, align 8
  %81 = load i64, i64* %12, align 8
  %82 = add nsw i64 %81, 7
  %83 = call i32 @roce_read(%struct.hns_roce_dev* %80, i64 %82)
  %84 = call i8* @cpu_to_le32(i32 %83)
  %85 = getelementptr inbounds %struct.hns_roce_sqp_context, %struct.hns_roce_sqp_context* %11, i32 0, i32 4
  store i8* %84, i8** %85, align 8
  %86 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %9, align 8
  %87 = load i64, i64* %12, align 8
  %88 = add nsw i64 %87, 8
  %89 = call i32 @roce_read(%struct.hns_roce_dev* %86, i64 %88)
  %90 = call i8* @cpu_to_le32(i32 %89)
  %91 = getelementptr inbounds %struct.hns_roce_sqp_context, %struct.hns_roce_sqp_context* %11, i32 0, i32 3
  store i8* %90, i8** %91, align 8
  %92 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %9, align 8
  %93 = load i64, i64* %12, align 8
  %94 = add nsw i64 %93, 9
  %95 = call i32 @roce_read(%struct.hns_roce_dev* %92, i64 %94)
  %96 = call i8* @cpu_to_le32(i32 %95)
  %97 = getelementptr inbounds %struct.hns_roce_sqp_context, %struct.hns_roce_sqp_context* %11, i32 0, i32 2
  store i8* %96, i8** %97, align 8
  %98 = getelementptr inbounds %struct.hns_roce_sqp_context, %struct.hns_roce_sqp_context* %11, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = load i32, i32* @QP1C_BYTES_4_QP_STATE_M, align 4
  %101 = load i32, i32* @QP1C_BYTES_4_QP_STATE_S, align 4
  %102 = call i8* @roce_get_field(i8* %99, i32 %100, i32 %101)
  %103 = ptrtoint i8* %102 to i64
  %104 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %10, align 8
  %105 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  %106 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %10, align 8
  %107 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %110 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %109, i32 0, i32 0
  store i64 %108, i64* %110, align 8
  %111 = load i32, i32* @IB_MTU_256, align 4
  %112 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %113 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %112, i32 0, i32 20
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* @IB_MIG_ARMED, align 4
  %115 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %116 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %115, i32 0, i32 19
  store i32 %114, i32* %116, align 8
  %117 = load i32, i32* @QKEY_VAL, align 4
  %118 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %119 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %118, i32 0, i32 18
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* @RDMA_AH_ATTR_TYPE_ROCE, align 4
  %121 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %122 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %121, i32 0, i32 17
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  store i32 %120, i32* %123, align 8
  %124 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %125 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %124, i32 0, i32 16
  store i64 0, i64* %125, align 8
  %126 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %127 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %126, i32 0, i32 15
  store i64 0, i64* %127, align 8
  %128 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %129 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %128, i32 0, i32 1
  store i32 1, i32* %129, align 8
  %130 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %131 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %130, i32 0, i32 2
  store i32 6, i32* %131, align 4
  %132 = getelementptr inbounds %struct.hns_roce_sqp_context, %struct.hns_roce_sqp_context* %11, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = load i32, i32* @QP1C_BYTES_20_PKEY_IDX_M, align 4
  %135 = load i32, i32* @QP1C_BYTES_20_PKEY_IDX_S, align 4
  %136 = call i8* @roce_get_field(i8* %133, i32 %134, i32 %135)
  %137 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %138 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %137, i32 0, i32 14
  store i8* %136, i8** %138, align 8
  %139 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %10, align 8
  %140 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %141, 1
  %143 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %144 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %143, i32 0, i32 3
  store i32 %142, i32* %144, align 8
  %145 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %146 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %145, i32 0, i32 13
  store i64 0, i64* %146, align 8
  %147 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %148 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %147, i32 0, i32 12
  store i64 0, i64* %148, align 8
  %149 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %150 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %149, i32 0, i32 11
  store i64 0, i64* %150, align 8
  %151 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %152 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %151, i32 0, i32 10
  store i64 0, i64* %152, align 8
  %153 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %154 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %153, i32 0, i32 9
  store i64 0, i64* %154, align 8
  %155 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %156 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %155, i32 0, i32 8
  store i64 0, i64* %156, align 8
  %157 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %158 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %157, i32 0, i32 7
  store i64 0, i64* %158, align 8
  %159 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %160 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %159, i32 0, i32 6
  store i64 0, i64* %160, align 8
  br label %161

161:                                              ; preds = %31, %27
  %162 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %163 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %166 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %165, i32 0, i32 4
  store i64 %164, i64* %166, align 8
  %167 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %10, align 8
  %168 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %167, i32 0, i32 4
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %172 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %171, i32 0, i32 5
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 4
  store i32 %170, i32* %173, align 4
  %174 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %10, align 8
  %175 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %174, i32 0, i32 4
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %179 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %178, i32 0, i32 5
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 3
  store i32 %177, i32* %180, align 8
  %181 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %10, align 8
  %182 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %181, i32 0, i32 3
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %186 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %185, i32 0, i32 5
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 2
  store i32 %184, i32* %187, align 4
  %188 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %10, align 8
  %189 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %188, i32 0, i32 3
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %193 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %192, i32 0, i32 5
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 1
  store i32 %191, i32* %194, align 8
  %195 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %196 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %195, i32 0, i32 5
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  store i64 0, i64* %197, align 8
  %198 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %199 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %198, i32 0, i32 1
  %200 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %201 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %200, i32 0, i32 5
  %202 = bitcast %struct.TYPE_8__* %199 to i8*
  %203 = bitcast %struct.TYPE_8__* %201 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %202, i8* align 8 %203, i64 24, i1 false)
  %204 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %205 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %204, i32 0, i32 0
  store i64 0, i64* %205, align 8
  %206 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %10, align 8
  %207 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %206, i32 0, i32 2
  %208 = call i32 @mutex_unlock(i32* %207)
  ret i32 0
}

declare dso_local %struct.hns_roce_dev* @to_hr_dev(i32) #1

declare dso_local %struct.hns_roce_qp* @to_hr_qp(%struct.ib_qp*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @roce_read(%struct.hns_roce_dev*, i64) #1

declare dso_local i8* @roce_get_field(i8*, i32, i32) #1

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
