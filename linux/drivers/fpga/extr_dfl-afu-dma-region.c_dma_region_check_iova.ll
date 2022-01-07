; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl-afu-dma-region.c_dma_region_check_iova.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl-afu-dma-region.c_dma_region_check_iova.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dfl_afu_dma_region = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dfl_afu_dma_region*, i64, i64)* @dma_region_check_iova to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_region_check_iova(%struct.dfl_afu_dma_region* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dfl_afu_dma_region*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.dfl_afu_dma_region* %0, %struct.dfl_afu_dma_region** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %3
  %11 = load %struct.dfl_afu_dma_region*, %struct.dfl_afu_dma_region** %5, align 8
  %12 = getelementptr inbounds %struct.dfl_afu_dma_region, %struct.dfl_afu_dma_region* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %38

17:                                               ; preds = %10, %3
  %18 = load %struct.dfl_afu_dma_region*, %struct.dfl_afu_dma_region** %5, align 8
  %19 = getelementptr inbounds %struct.dfl_afu_dma_region, %struct.dfl_afu_dma_region* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp sle i64 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %17
  %24 = load %struct.dfl_afu_dma_region*, %struct.dfl_afu_dma_region** %5, align 8
  %25 = getelementptr inbounds %struct.dfl_afu_dma_region, %struct.dfl_afu_dma_region* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.dfl_afu_dma_region*, %struct.dfl_afu_dma_region** %5, align 8
  %28 = getelementptr inbounds %struct.dfl_afu_dma_region, %struct.dfl_afu_dma_region* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %26, %29
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = add nsw i64 %31, %32
  %34 = icmp sge i64 %30, %33
  br label %35

35:                                               ; preds = %23, %17
  %36 = phi i1 [ false, %17 ], [ %34, %23 ]
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %35, %16
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
