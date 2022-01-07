; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_map_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_map_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32* }
%struct.page = type { i32 }
%struct.protection_domain = type { i32 }
%struct.dma_ops_domain = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@DMA_MAPPING_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.page*, i64, i64, i32, i64)* @map_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_page(%struct.device* %0, %struct.page* %1, i64 %2, i64 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.protection_domain*, align 8
  %16 = alloca %struct.dma_ops_domain*, align 8
  %17 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %8, align 8
  store %struct.page* %1, %struct.page** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %18 = load %struct.page*, %struct.page** %9, align 8
  %19 = call i64 @page_to_phys(%struct.page* %18)
  %20 = load i64, i64* %10, align 8
  %21 = add i64 %19, %20
  store i64 %21, i64* %14, align 8
  %22 = load %struct.device*, %struct.device** %8, align 8
  %23 = call %struct.protection_domain* @get_domain(%struct.device* %22)
  store %struct.protection_domain* %23, %struct.protection_domain** %15, align 8
  %24 = load %struct.protection_domain*, %struct.protection_domain** %15, align 8
  %25 = call i32 @PTR_ERR(%struct.protection_domain* %24)
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %6
  %30 = load i64, i64* %14, align 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %7, align 4
  br label %53

32:                                               ; preds = %6
  %33 = load %struct.protection_domain*, %struct.protection_domain** %15, align 8
  %34 = call i64 @IS_ERR(%struct.protection_domain* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @DMA_MAPPING_ERROR, align 4
  store i32 %37, i32* %7, align 4
  br label %53

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.device*, %struct.device** %8, align 8
  %41 = getelementptr inbounds %struct.device, %struct.device* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %17, align 4
  %44 = load %struct.protection_domain*, %struct.protection_domain** %15, align 8
  %45 = call %struct.dma_ops_domain* @to_dma_ops_domain(%struct.protection_domain* %44)
  store %struct.dma_ops_domain* %45, %struct.dma_ops_domain** %16, align 8
  %46 = load %struct.device*, %struct.device** %8, align 8
  %47 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %16, align 8
  %48 = load i64, i64* %14, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %17, align 4
  %52 = call i32 @__map_single(%struct.device* %46, %struct.dma_ops_domain* %47, i64 %48, i64 %49, i32 %50, i32 %51)
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %39, %36, %29
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local i64 @page_to_phys(%struct.page*) #1

declare dso_local %struct.protection_domain* @get_domain(%struct.device*) #1

declare dso_local i32 @PTR_ERR(%struct.protection_domain*) #1

declare dso_local i64 @IS_ERR(%struct.protection_domain*) #1

declare dso_local %struct.dma_ops_domain* @to_dma_ops_domain(%struct.protection_domain*) #1

declare dso_local i32 @__map_single(%struct.device*, %struct.dma_ops_domain*, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
