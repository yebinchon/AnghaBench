; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl-afu-dma-region.c_afu_dma_unmap_region.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl-afu-dma-region.c_afu_dma_unmap_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dfl_feature_platform_data = type { i32 }
%struct.dfl_afu_dma_region = type { i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afu_dma_unmap_region(%struct.dfl_feature_platform_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dfl_feature_platform_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dfl_afu_dma_region*, align 8
  store %struct.dfl_feature_platform_data* %0, %struct.dfl_feature_platform_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.dfl_feature_platform_data*, %struct.dfl_feature_platform_data** %4, align 8
  %8 = getelementptr inbounds %struct.dfl_feature_platform_data, %struct.dfl_feature_platform_data* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.dfl_feature_platform_data*, %struct.dfl_feature_platform_data** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.dfl_afu_dma_region* @afu_dma_region_find_iova(%struct.dfl_feature_platform_data* %10, i32 %11)
  store %struct.dfl_afu_dma_region* %12, %struct.dfl_afu_dma_region** %6, align 8
  %13 = load %struct.dfl_afu_dma_region*, %struct.dfl_afu_dma_region** %6, align 8
  %14 = icmp ne %struct.dfl_afu_dma_region* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.dfl_feature_platform_data*, %struct.dfl_feature_platform_data** %4, align 8
  %17 = getelementptr inbounds %struct.dfl_feature_platform_data, %struct.dfl_feature_platform_data* %16, i32 0, i32 0
  %18 = call i32 @mutex_unlock(i32* %17)
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %54

21:                                               ; preds = %2
  %22 = load %struct.dfl_afu_dma_region*, %struct.dfl_afu_dma_region** %6, align 8
  %23 = getelementptr inbounds %struct.dfl_afu_dma_region, %struct.dfl_afu_dma_region* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.dfl_feature_platform_data*, %struct.dfl_feature_platform_data** %4, align 8
  %28 = getelementptr inbounds %struct.dfl_feature_platform_data, %struct.dfl_feature_platform_data* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %54

32:                                               ; preds = %21
  %33 = load %struct.dfl_feature_platform_data*, %struct.dfl_feature_platform_data** %4, align 8
  %34 = load %struct.dfl_afu_dma_region*, %struct.dfl_afu_dma_region** %6, align 8
  %35 = call i32 @afu_dma_region_remove(%struct.dfl_feature_platform_data* %33, %struct.dfl_afu_dma_region* %34)
  %36 = load %struct.dfl_feature_platform_data*, %struct.dfl_feature_platform_data** %4, align 8
  %37 = getelementptr inbounds %struct.dfl_feature_platform_data, %struct.dfl_feature_platform_data* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load %struct.dfl_feature_platform_data*, %struct.dfl_feature_platform_data** %4, align 8
  %40 = call i32 @dfl_fpga_pdata_to_parent(%struct.dfl_feature_platform_data* %39)
  %41 = load %struct.dfl_afu_dma_region*, %struct.dfl_afu_dma_region** %6, align 8
  %42 = getelementptr inbounds %struct.dfl_afu_dma_region, %struct.dfl_afu_dma_region* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.dfl_afu_dma_region*, %struct.dfl_afu_dma_region** %6, align 8
  %45 = getelementptr inbounds %struct.dfl_afu_dma_region, %struct.dfl_afu_dma_region* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %48 = call i32 @dma_unmap_page(i32 %40, i32 %43, i32 %46, i32 %47)
  %49 = load %struct.dfl_feature_platform_data*, %struct.dfl_feature_platform_data** %4, align 8
  %50 = load %struct.dfl_afu_dma_region*, %struct.dfl_afu_dma_region** %6, align 8
  %51 = call i32 @afu_dma_unpin_pages(%struct.dfl_feature_platform_data* %49, %struct.dfl_afu_dma_region* %50)
  %52 = load %struct.dfl_afu_dma_region*, %struct.dfl_afu_dma_region** %6, align 8
  %53 = call i32 @kfree(%struct.dfl_afu_dma_region* %52)
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %32, %26, %15
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.dfl_afu_dma_region* @afu_dma_region_find_iova(%struct.dfl_feature_platform_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @afu_dma_region_remove(%struct.dfl_feature_platform_data*, %struct.dfl_afu_dma_region*) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @dfl_fpga_pdata_to_parent(%struct.dfl_feature_platform_data*) #1

declare dso_local i32 @afu_dma_unpin_pages(%struct.dfl_feature_platform_data*, %struct.dfl_afu_dma_region*) #1

declare dso_local i32 @kfree(%struct.dfl_afu_dma_region*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
