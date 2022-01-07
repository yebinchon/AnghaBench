; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_get_aeqe_v1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_get_aeqe_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_aeqe = type { i32 }
%struct.hns_roce_eq = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@HNS_ROCE_AEQ_ENTRY_SIZE = common dso_local global i32 0, align 4
@HNS_ROCE_BA_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hns_roce_aeqe* (%struct.hns_roce_eq*, i32)* @get_aeqe_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hns_roce_aeqe* @get_aeqe_v1(%struct.hns_roce_eq* %0, i32 %1) #0 {
  %3 = alloca %struct.hns_roce_eq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.hns_roce_eq* %0, %struct.hns_roce_eq** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %3, align 8
  %8 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sub nsw i32 %9, 1
  %11 = and i32 %6, %10
  %12 = load i32, i32* @HNS_ROCE_AEQ_ENTRY_SIZE, align 4
  %13 = mul nsw i32 %11, %12
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %5, align 8
  %15 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %3, align 8
  %16 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @HNS_ROCE_BA_SIZE, align 8
  %20 = udiv i64 %18, %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i32*
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @HNS_ROCE_BA_SIZE, align 8
  %27 = urem i64 %25, %26
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = bitcast i32* %28 to %struct.hns_roce_aeqe*
  ret %struct.hns_roce_aeqe* %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
