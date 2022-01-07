; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_mhop_get_aeqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_mhop_get_aeqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_aeqe = type { i32 }
%struct.hns_roce_eq = type { i32, i32, i64, i64*, i64 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@HNS_ROCE_AEQ_ENTRY_SIZE = common dso_local global i32 0, align 4
@HNS_ROCE_HOP_NUM_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hns_roce_aeqe* (%struct.hns_roce_eq*, i32)* @mhop_get_aeqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hns_roce_aeqe* @mhop_get_aeqe(%struct.hns_roce_eq* %0, i32 %1) #0 {
  %3 = alloca %struct.hns_roce_aeqe*, align 8
  %4 = alloca %struct.hns_roce_eq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.hns_roce_eq* %0, %struct.hns_roce_eq** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %9 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @PAGE_SHIFT, align 4
  %12 = add nsw i32 %10, %11
  %13 = shl i32 1, %12
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %16 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 %17, 1
  %19 = and i32 %14, %18
  %20 = load i32, i32* @HNS_ROCE_AEQ_ENTRY_SIZE, align 4
  %21 = mul nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %7, align 8
  %23 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %24 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @HNS_ROCE_HOP_NUM_0, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %2
  %29 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %30 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i32*
  %33 = load i64, i64* %7, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = urem i64 %33, %35
  %37 = getelementptr inbounds i32, i32* %32, i64 %36
  %38 = bitcast i32* %37 to %struct.hns_roce_aeqe*
  store %struct.hns_roce_aeqe* %38, %struct.hns_roce_aeqe** %3, align 8
  br label %56

39:                                               ; preds = %2
  %40 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %41 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %40, i32 0, i32 3
  %42 = load i64*, i64** %41, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = udiv i64 %43, %45
  %47 = getelementptr inbounds i64, i64* %42, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i32*
  %50 = load i64, i64* %7, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = urem i64 %50, %52
  %54 = getelementptr inbounds i32, i32* %49, i64 %53
  %55 = bitcast i32* %54 to %struct.hns_roce_aeqe*
  store %struct.hns_roce_aeqe* %55, %struct.hns_roce_aeqe** %3, align 8
  br label %56

56:                                               ; preds = %39, %28
  %57 = load %struct.hns_roce_aeqe*, %struct.hns_roce_aeqe** %3, align 8
  ret %struct.hns_roce_aeqe* %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
