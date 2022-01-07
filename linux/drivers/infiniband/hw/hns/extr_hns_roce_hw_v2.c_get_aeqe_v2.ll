; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_get_aeqe_v2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_get_aeqe_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_aeqe = type { i32 }
%struct.hns_roce_eq = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@HNS_ROCE_AEQ_ENTRY_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hns_roce_aeqe* (%struct.hns_roce_eq*, i32)* @get_aeqe_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hns_roce_aeqe* @get_aeqe_v2(%struct.hns_roce_eq* %0, i32 %1) #0 {
  %3 = alloca %struct.hns_roce_eq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.hns_roce_eq* %0, %struct.hns_roce_eq** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %3, align 8
  %8 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @PAGE_SHIFT, align 4
  %11 = add nsw i32 %9, %10
  %12 = shl i32 1, %11
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %3, align 8
  %15 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %16, 1
  %18 = and i32 %13, %17
  %19 = load i32, i32* @HNS_ROCE_AEQ_ENTRY_SIZE, align 4
  %20 = mul nsw i32 %18, %19
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %6, align 8
  %22 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %3, align 8
  %23 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = load i64, i64* %6, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = urem i64 %28, %30
  %32 = getelementptr inbounds i8, i8* %27, i64 %31
  %33 = bitcast i8* %32 to %struct.hns_roce_aeqe*
  ret %struct.hns_roce_aeqe* %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
