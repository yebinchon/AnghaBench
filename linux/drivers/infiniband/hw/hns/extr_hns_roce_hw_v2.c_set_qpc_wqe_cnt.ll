; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_set_qpc_wqe_cnt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_set_qpc_wqe_cnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_qp = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.hns_roce_v2_qp_context = type { i32, i32 }

@IB_QPT_GSI = common dso_local global i64 0, align 8
@V2_QPC_BYTE_4_SGE_SHIFT_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_4_SGE_SHIFT_S = common dso_local global i32 0, align 4
@HNS_ROCE_V2_UC_RC_SGE_NUM_IN_WQE = common dso_local global i64 0, align 8
@V2_QPC_BYTE_20_SQ_SHIFT_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_20_SQ_SHIFT_S = common dso_local global i32 0, align 4
@V2_QPC_BYTE_20_RQ_SHIFT_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_20_RQ_SHIFT_S = common dso_local global i32 0, align 4
@IB_QPT_XRC_INI = common dso_local global i64 0, align 8
@IB_QPT_XRC_TGT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_roce_qp*, %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context*)* @set_qpc_wqe_cnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_qpc_wqe_cnt(%struct.hns_roce_qp* %0, %struct.hns_roce_v2_qp_context* %1, %struct.hns_roce_v2_qp_context* %2) #0 {
  %4 = alloca %struct.hns_roce_qp*, align 8
  %5 = alloca %struct.hns_roce_v2_qp_context*, align 8
  %6 = alloca %struct.hns_roce_v2_qp_context*, align 8
  store %struct.hns_roce_qp* %0, %struct.hns_roce_qp** %4, align 8
  store %struct.hns_roce_v2_qp_context* %1, %struct.hns_roce_v2_qp_context** %5, align 8
  store %struct.hns_roce_v2_qp_context* %2, %struct.hns_roce_v2_qp_context** %6, align 8
  %7 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %4, align 8
  %8 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @IB_QPT_GSI, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %3
  %14 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %5, align 8
  %15 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @V2_QPC_BYTE_4_SGE_SHIFT_M, align 4
  %18 = load i32, i32* @V2_QPC_BYTE_4_SGE_SHIFT_S, align 4
  %19 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %4, align 8
  %20 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = call i32 @ilog2(i32 %23)
  %25 = call i32 @roce_set_field(i32 %16, i32 %17, i32 %18, i32 %24)
  br label %49

26:                                               ; preds = %3
  %27 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %5, align 8
  %28 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @V2_QPC_BYTE_4_SGE_SHIFT_M, align 4
  %31 = load i32, i32* @V2_QPC_BYTE_4_SGE_SHIFT_S, align 4
  %32 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %4, align 8
  %33 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @HNS_ROCE_V2_UC_RC_SGE_NUM_IN_WQE, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %26
  %39 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %4, align 8
  %40 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @ilog2(i32 %43)
  br label %46

45:                                               ; preds = %26
  br label %46

46:                                               ; preds = %45, %38
  %47 = phi i32 [ %44, %38 ], [ 0, %45 ]
  %48 = call i32 @roce_set_field(i32 %29, i32 %30, i32 %31, i32 %47)
  br label %49

49:                                               ; preds = %46, %13
  %50 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %6, align 8
  %51 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @V2_QPC_BYTE_4_SGE_SHIFT_M, align 4
  %54 = load i32, i32* @V2_QPC_BYTE_4_SGE_SHIFT_S, align 4
  %55 = call i32 @roce_set_field(i32 %52, i32 %53, i32 %54, i32 0)
  %56 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %5, align 8
  %57 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @V2_QPC_BYTE_20_SQ_SHIFT_M, align 4
  %60 = load i32, i32* @V2_QPC_BYTE_20_SQ_SHIFT_S, align 4
  %61 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %4, align 8
  %62 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = call i32 @ilog2(i32 %65)
  %67 = call i32 @roce_set_field(i32 %58, i32 %59, i32 %60, i32 %66)
  %68 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %6, align 8
  %69 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @V2_QPC_BYTE_20_SQ_SHIFT_M, align 4
  %72 = load i32, i32* @V2_QPC_BYTE_20_SQ_SHIFT_S, align 4
  %73 = call i32 @roce_set_field(i32 %70, i32 %71, i32 %72, i32 0)
  %74 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %5, align 8
  %75 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @V2_QPC_BYTE_20_RQ_SHIFT_M, align 4
  %78 = load i32, i32* @V2_QPC_BYTE_20_RQ_SHIFT_S, align 4
  %79 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %4, align 8
  %80 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @IB_QPT_XRC_INI, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %98, label %85

85:                                               ; preds = %49
  %86 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %4, align 8
  %87 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @IB_QPT_XRC_TGT, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %98, label %92

92:                                               ; preds = %85
  %93 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %4, align 8
  %94 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %92, %85, %49
  br label %106

99:                                               ; preds = %92
  %100 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %4, align 8
  %101 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = trunc i64 %103 to i32
  %105 = call i32 @ilog2(i32 %104)
  br label %106

106:                                              ; preds = %99, %98
  %107 = phi i32 [ 0, %98 ], [ %105, %99 ]
  %108 = call i32 @roce_set_field(i32 %76, i32 %77, i32 %78, i32 %107)
  %109 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %6, align 8
  %110 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @V2_QPC_BYTE_20_RQ_SHIFT_M, align 4
  %113 = load i32, i32* @V2_QPC_BYTE_20_RQ_SHIFT_S, align 4
  %114 = call i32 @roce_set_field(i32 %111, i32 %112, i32 %113, i32 0)
  ret void
}

declare dso_local i32 @roce_set_field(i32, i32, i32, i32) #1

declare dso_local i32 @ilog2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
