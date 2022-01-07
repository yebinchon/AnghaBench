; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl-afu-dma-region.c_afu_dma_check_continuous_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl-afu-dma-region.c_afu_dma_check_continuous_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dfl_afu_dma_region = type { i32, i32* }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dfl_afu_dma_region*)* @afu_dma_check_continuous_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afu_dma_check_continuous_pages(%struct.dfl_afu_dma_region* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dfl_afu_dma_region*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dfl_afu_dma_region* %0, %struct.dfl_afu_dma_region** %3, align 8
  %6 = load %struct.dfl_afu_dma_region*, %struct.dfl_afu_dma_region** %3, align 8
  %7 = getelementptr inbounds %struct.dfl_afu_dma_region, %struct.dfl_afu_dma_region* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @PAGE_SHIFT, align 4
  %10 = ashr i32 %8, %9
  store i32 %10, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %38, %1
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = sub nsw i32 %13, 1
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %41

16:                                               ; preds = %11
  %17 = load %struct.dfl_afu_dma_region*, %struct.dfl_afu_dma_region** %3, align 8
  %18 = getelementptr inbounds %struct.dfl_afu_dma_region, %struct.dfl_afu_dma_region* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @page_to_pfn(i32 %23)
  %25 = add nsw i64 %24, 1
  %26 = load %struct.dfl_afu_dma_region*, %struct.dfl_afu_dma_region** %3, align 8
  %27 = getelementptr inbounds %struct.dfl_afu_dma_region, %struct.dfl_afu_dma_region* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @page_to_pfn(i32 %33)
  %35 = icmp ne i64 %25, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %42

37:                                               ; preds = %16
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %11

41:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %36
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i64 @page_to_pfn(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
