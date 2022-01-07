; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_iova.c___adjust_overlap_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_iova.c___adjust_overlap_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iova = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iova*, i64*, i64*)* @__adjust_overlap_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__adjust_overlap_range(%struct.iova* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.iova*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  store %struct.iova* %0, %struct.iova** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %7 = load i64*, i64** %5, align 8
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.iova*, %struct.iova** %4, align 8
  %10 = getelementptr inbounds %struct.iova, %struct.iova* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ult i64 %8, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load i64*, i64** %5, align 8
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.iova*, %struct.iova** %4, align 8
  %17 = getelementptr inbounds %struct.iova, %struct.iova* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  br label %18

18:                                               ; preds = %13, %3
  %19 = load i64*, i64** %6, align 8
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.iova*, %struct.iova** %4, align 8
  %22 = getelementptr inbounds %struct.iova, %struct.iova* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ugt i64 %20, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load %struct.iova*, %struct.iova** %4, align 8
  %27 = getelementptr inbounds %struct.iova, %struct.iova* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = add i64 %28, 1
  %30 = load i64*, i64** %5, align 8
  store i64 %29, i64* %30, align 8
  br label %31

31:                                               ; preds = %25, %18
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
