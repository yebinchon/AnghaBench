; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c___hns_roce_v1_cq_clean.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c___hns_roce_v1_cq_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_cq = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hns_roce_srq = type { i32 }
%struct.hns_roce_cqe = type { i32, i32 }

@CQE_BYTE_16_LOCAL_QPN_M = common dso_local global i32 0, align 4
@CQE_BYTE_16_LOCAL_QPN_S = common dso_local global i32 0, align 4
@HNS_ROCE_CQE_QPN_MASK = common dso_local global i32 0, align 4
@CQE_BYTE_4_OWNER_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_roce_cq*, i32, %struct.hns_roce_srq*)* @__hns_roce_v1_cq_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__hns_roce_v1_cq_clean(%struct.hns_roce_cq* %0, i32 %1, %struct.hns_roce_srq* %2) #0 {
  %4 = alloca %struct.hns_roce_cq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hns_roce_srq*, align 8
  %7 = alloca %struct.hns_roce_cqe*, align 8
  %8 = alloca %struct.hns_roce_cqe*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hns_roce_cq* %0, %struct.hns_roce_cq** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.hns_roce_srq* %2, %struct.hns_roce_srq** %6, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %4, align 8
  %13 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  br label %15

15:                                               ; preds = %33, %3
  %16 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %4, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call i64 @get_sw_cqe(%struct.hns_roce_cq* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %15
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %4, align 8
  %23 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %4, align 8
  %26 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %24, %28
  %30 = icmp eq i32 %21, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %36

32:                                               ; preds = %20
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  br label %15

36:                                               ; preds = %31, %15
  br label %37

37:                                               ; preds = %96, %36
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %9, align 4
  %40 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %4, align 8
  %41 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %39, %42
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %97

45:                                               ; preds = %37
  %46 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %4, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %4, align 8
  %49 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %47, %51
  %53 = call %struct.hns_roce_cqe* @get_cqe(%struct.hns_roce_cq* %46, i32 %52)
  store %struct.hns_roce_cqe* %53, %struct.hns_roce_cqe** %7, align 8
  %54 = load %struct.hns_roce_cqe*, %struct.hns_roce_cqe** %7, align 8
  %55 = getelementptr inbounds %struct.hns_roce_cqe, %struct.hns_roce_cqe* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @CQE_BYTE_16_LOCAL_QPN_M, align 4
  %58 = load i32, i32* @CQE_BYTE_16_LOCAL_QPN_S, align 4
  %59 = call i32 @roce_get_field(i32 %56, i32 %57, i32 %58)
  %60 = load i32, i32* @HNS_ROCE_CQE_QPN_MASK, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* %5, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %45
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %96

67:                                               ; preds = %45
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %95

70:                                               ; preds = %67
  %71 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %4, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %72, %73
  %75 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %4, align 8
  %76 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %74, %78
  %80 = call %struct.hns_roce_cqe* @get_cqe(%struct.hns_roce_cq* %71, i32 %79)
  store %struct.hns_roce_cqe* %80, %struct.hns_roce_cqe** %8, align 8
  %81 = load %struct.hns_roce_cqe*, %struct.hns_roce_cqe** %8, align 8
  %82 = getelementptr inbounds %struct.hns_roce_cqe, %struct.hns_roce_cqe* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @CQE_BYTE_4_OWNER_S, align 4
  %85 = call i32 @roce_get_bit(i32 %83, i32 %84)
  store i32 %85, i32* %11, align 4
  %86 = load %struct.hns_roce_cqe*, %struct.hns_roce_cqe** %8, align 8
  %87 = load %struct.hns_roce_cqe*, %struct.hns_roce_cqe** %7, align 8
  %88 = call i32 @memcpy(%struct.hns_roce_cqe* %86, %struct.hns_roce_cqe* %87, i32 8)
  %89 = load %struct.hns_roce_cqe*, %struct.hns_roce_cqe** %8, align 8
  %90 = getelementptr inbounds %struct.hns_roce_cqe, %struct.hns_roce_cqe* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @CQE_BYTE_4_OWNER_S, align 4
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @roce_set_bit(i32 %91, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %70, %67
  br label %96

96:                                               ; preds = %95, %64
  br label %37

97:                                               ; preds = %37
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %112

100:                                              ; preds = %97
  %101 = load i32, i32* %10, align 4
  %102 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %4, align 8
  %103 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, %101
  store i32 %105, i32* %103, align 4
  %106 = call i32 (...) @wmb()
  %107 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %4, align 8
  %108 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %4, align 8
  %109 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @hns_roce_v1_cq_set_ci(%struct.hns_roce_cq* %107, i32 %110)
  br label %112

112:                                              ; preds = %100, %97
  ret void
}

declare dso_local i64 @get_sw_cqe(%struct.hns_roce_cq*, i32) #1

declare dso_local %struct.hns_roce_cqe* @get_cqe(%struct.hns_roce_cq*, i32) #1

declare dso_local i32 @roce_get_field(i32, i32, i32) #1

declare dso_local i32 @roce_get_bit(i32, i32) #1

declare dso_local i32 @memcpy(%struct.hns_roce_cqe*, %struct.hns_roce_cqe*, i32) #1

declare dso_local i32 @roce_set_bit(i32, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @hns_roce_v1_cq_set_ci(%struct.hns_roce_cq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
