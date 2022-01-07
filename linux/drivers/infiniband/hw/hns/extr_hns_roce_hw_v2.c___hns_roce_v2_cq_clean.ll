; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c___hns_roce_v2_cq_clean.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c___hns_roce_v2_cq_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_cq = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hns_roce_srq = type { i32 }
%struct.hns_roce_v2_cqe = type { i32, i32 }

@V2_CQE_BYTE_16_LCL_QPN_M = common dso_local global i32 0, align 4
@V2_CQE_BYTE_16_LCL_QPN_S = common dso_local global i32 0, align 4
@HNS_ROCE_V2_CQE_QPN_MASK = common dso_local global i32 0, align 4
@V2_CQE_BYTE_4_S_R_S = common dso_local global i32 0, align 4
@V2_CQE_BYTE_4_WQE_INDX_M = common dso_local global i32 0, align 4
@V2_CQE_BYTE_4_WQE_INDX_S = common dso_local global i32 0, align 4
@V2_CQE_BYTE_4_OWNER_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_roce_cq*, i32, %struct.hns_roce_srq*)* @__hns_roce_v2_cq_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__hns_roce_v2_cq_clean(%struct.hns_roce_cq* %0, i32 %1, %struct.hns_roce_srq* %2) #0 {
  %4 = alloca %struct.hns_roce_cq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hns_roce_srq*, align 8
  %7 = alloca %struct.hns_roce_v2_cqe*, align 8
  %8 = alloca %struct.hns_roce_v2_cqe*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.hns_roce_cq* %0, %struct.hns_roce_cq** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.hns_roce_srq* %2, %struct.hns_roce_srq** %6, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %4, align 8
  %14 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  br label %16

16:                                               ; preds = %34, %3
  %17 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %4, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i64 @get_sw_cqe_v2(%struct.hns_roce_cq* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %16
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %4, align 8
  %24 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %4, align 8
  %27 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %25, %29
  %31 = icmp sgt i32 %22, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %37

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %9, align 4
  br label %16

37:                                               ; preds = %32, %16
  br label %38

38:                                               ; preds = %117, %37
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %9, align 4
  %41 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %4, align 8
  %42 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %40, %43
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %118

46:                                               ; preds = %38
  %47 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %4, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %4, align 8
  %50 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %48, %52
  %54 = call %struct.hns_roce_v2_cqe* @get_cqe_v2(%struct.hns_roce_cq* %47, i32 %53)
  store %struct.hns_roce_v2_cqe* %54, %struct.hns_roce_v2_cqe** %7, align 8
  %55 = load %struct.hns_roce_v2_cqe*, %struct.hns_roce_v2_cqe** %7, align 8
  %56 = getelementptr inbounds %struct.hns_roce_v2_cqe, %struct.hns_roce_v2_cqe* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @V2_CQE_BYTE_16_LCL_QPN_M, align 4
  %59 = load i32, i32* @V2_CQE_BYTE_16_LCL_QPN_S, align 4
  %60 = call i32 @roce_get_field(i32 %57, i32 %58, i32 %59)
  %61 = load i32, i32* @HNS_ROCE_V2_CQE_QPN_MASK, align 4
  %62 = and i32 %60, %61
  %63 = load i32, i32* %5, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %88

65:                                               ; preds = %46
  %66 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %6, align 8
  %67 = icmp ne %struct.hns_roce_srq* %66, null
  br i1 %67, label %68, label %85

68:                                               ; preds = %65
  %69 = load %struct.hns_roce_v2_cqe*, %struct.hns_roce_v2_cqe** %7, align 8
  %70 = getelementptr inbounds %struct.hns_roce_v2_cqe, %struct.hns_roce_v2_cqe* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @V2_CQE_BYTE_4_S_R_S, align 4
  %73 = call i64 @roce_get_bit(i32 %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %68
  %76 = load %struct.hns_roce_v2_cqe*, %struct.hns_roce_v2_cqe** %7, align 8
  %77 = getelementptr inbounds %struct.hns_roce_v2_cqe, %struct.hns_roce_v2_cqe* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @V2_CQE_BYTE_4_WQE_INDX_M, align 4
  %80 = load i32, i32* @V2_CQE_BYTE_4_WQE_INDX_S, align 4
  %81 = call i32 @roce_get_field(i32 %78, i32 %79, i32 %80)
  store i32 %81, i32* %11, align 4
  %82 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %6, align 8
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @hns_roce_free_srq_wqe(%struct.hns_roce_srq* %82, i32 %83)
  br label %85

85:                                               ; preds = %75, %68, %65
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %10, align 4
  br label %117

88:                                               ; preds = %46
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %116

91:                                               ; preds = %88
  %92 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %4, align 8
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %93, %94
  %96 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %4, align 8
  %97 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %95, %99
  %101 = call %struct.hns_roce_v2_cqe* @get_cqe_v2(%struct.hns_roce_cq* %92, i32 %100)
  store %struct.hns_roce_v2_cqe* %101, %struct.hns_roce_v2_cqe** %8, align 8
  %102 = load %struct.hns_roce_v2_cqe*, %struct.hns_roce_v2_cqe** %8, align 8
  %103 = getelementptr inbounds %struct.hns_roce_v2_cqe, %struct.hns_roce_v2_cqe* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @V2_CQE_BYTE_4_OWNER_S, align 4
  %106 = call i64 @roce_get_bit(i32 %104, i32 %105)
  store i64 %106, i64* %12, align 8
  %107 = load %struct.hns_roce_v2_cqe*, %struct.hns_roce_v2_cqe** %8, align 8
  %108 = load %struct.hns_roce_v2_cqe*, %struct.hns_roce_v2_cqe** %7, align 8
  %109 = call i32 @memcpy(%struct.hns_roce_v2_cqe* %107, %struct.hns_roce_v2_cqe* %108, i32 8)
  %110 = load %struct.hns_roce_v2_cqe*, %struct.hns_roce_v2_cqe** %8, align 8
  %111 = getelementptr inbounds %struct.hns_roce_v2_cqe, %struct.hns_roce_v2_cqe* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @V2_CQE_BYTE_4_OWNER_S, align 4
  %114 = load i64, i64* %12, align 8
  %115 = call i32 @roce_set_bit(i32 %112, i32 %113, i64 %114)
  br label %116

116:                                              ; preds = %91, %88
  br label %117

117:                                              ; preds = %116, %85
  br label %38

118:                                              ; preds = %38
  %119 = load i32, i32* %10, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %133

121:                                              ; preds = %118
  %122 = load i32, i32* %10, align 4
  %123 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %4, align 8
  %124 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, %122
  store i32 %126, i32* %124, align 4
  %127 = call i32 (...) @wmb()
  %128 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %4, align 8
  %129 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %4, align 8
  %130 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @hns_roce_v2_cq_set_ci(%struct.hns_roce_cq* %128, i32 %131)
  br label %133

133:                                              ; preds = %121, %118
  ret void
}

declare dso_local i64 @get_sw_cqe_v2(%struct.hns_roce_cq*, i32) #1

declare dso_local %struct.hns_roce_v2_cqe* @get_cqe_v2(%struct.hns_roce_cq*, i32) #1

declare dso_local i32 @roce_get_field(i32, i32, i32) #1

declare dso_local i64 @roce_get_bit(i32, i32) #1

declare dso_local i32 @hns_roce_free_srq_wqe(%struct.hns_roce_srq*, i32) #1

declare dso_local i32 @memcpy(%struct.hns_roce_v2_cqe*, %struct.hns_roce_v2_cqe*, i32) #1

declare dso_local i32 @roce_set_bit(i32, i32, i64) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @hns_roce_v2_cq_set_ci(%struct.hns_roce_cq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
