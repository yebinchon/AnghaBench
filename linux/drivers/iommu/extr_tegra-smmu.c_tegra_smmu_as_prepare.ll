; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-smmu.c_tegra_smmu_as_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-smmu.c_tegra_smmu_as_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_smmu = type { i32 }
%struct.tegra_smmu_as = type { i64, i32, i32, %struct.tegra_smmu*, i32, i32 }

@SMMU_SIZE_PD = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SMMU_PTB_ASID = common dso_local global i32 0, align 4
@SMMU_PTB_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_smmu*, %struct.tegra_smmu_as*)* @tegra_smmu_as_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_smmu_as_prepare(%struct.tegra_smmu* %0, %struct.tegra_smmu_as* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_smmu*, align 8
  %5 = alloca %struct.tegra_smmu_as*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tegra_smmu* %0, %struct.tegra_smmu** %4, align 8
  store %struct.tegra_smmu_as* %1, %struct.tegra_smmu_as** %5, align 8
  %8 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %5, align 8
  %9 = getelementptr inbounds %struct.tegra_smmu_as, %struct.tegra_smmu_as* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %5, align 8
  %14 = getelementptr inbounds %struct.tegra_smmu_as, %struct.tegra_smmu_as* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* %14, align 8
  store i32 0, i32* %3, align 4
  br label %107

17:                                               ; preds = %2
  %18 = load %struct.tegra_smmu*, %struct.tegra_smmu** %4, align 8
  %19 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %5, align 8
  %22 = getelementptr inbounds %struct.tegra_smmu_as, %struct.tegra_smmu_as* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SMMU_SIZE_PD, align 4
  %25 = load i32, i32* @DMA_TO_DEVICE, align 4
  %26 = call i32 @dma_map_page(i32 %20, i32 %23, i32 0, i32 %24, i32 %25)
  %27 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %5, align 8
  %28 = getelementptr inbounds %struct.tegra_smmu_as, %struct.tegra_smmu_as* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.tegra_smmu*, %struct.tegra_smmu** %4, align 8
  %30 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %5, align 8
  %33 = getelementptr inbounds %struct.tegra_smmu_as, %struct.tegra_smmu_as* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @dma_mapping_error(i32 %31, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %17
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %107

40:                                               ; preds = %17
  %41 = load %struct.tegra_smmu*, %struct.tegra_smmu** %4, align 8
  %42 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %5, align 8
  %43 = getelementptr inbounds %struct.tegra_smmu_as, %struct.tegra_smmu_as* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @smmu_dma_addr_valid(%struct.tegra_smmu* %41, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %7, align 4
  br label %96

50:                                               ; preds = %40
  %51 = load %struct.tegra_smmu*, %struct.tegra_smmu** %4, align 8
  %52 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %5, align 8
  %53 = getelementptr inbounds %struct.tegra_smmu_as, %struct.tegra_smmu_as* %52, i32 0, i32 1
  %54 = call i32 @tegra_smmu_alloc_asid(%struct.tegra_smmu* %51, i32* %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %96

58:                                               ; preds = %50
  %59 = load %struct.tegra_smmu*, %struct.tegra_smmu** %4, align 8
  %60 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %5, align 8
  %61 = getelementptr inbounds %struct.tegra_smmu_as, %struct.tegra_smmu_as* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @smmu_flush_ptc(%struct.tegra_smmu* %59, i32 %62, i32 0)
  %64 = load %struct.tegra_smmu*, %struct.tegra_smmu** %4, align 8
  %65 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %5, align 8
  %66 = getelementptr inbounds %struct.tegra_smmu_as, %struct.tegra_smmu_as* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @smmu_flush_tlb_asid(%struct.tegra_smmu* %64, i32 %67)
  %69 = load %struct.tegra_smmu*, %struct.tegra_smmu** %4, align 8
  %70 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %5, align 8
  %71 = getelementptr inbounds %struct.tegra_smmu_as, %struct.tegra_smmu_as* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, 127
  %74 = load i32, i32* @SMMU_PTB_ASID, align 4
  %75 = call i32 @smmu_writel(%struct.tegra_smmu* %69, i32 %73, i32 %74)
  %76 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %5, align 8
  %77 = getelementptr inbounds %struct.tegra_smmu_as, %struct.tegra_smmu_as* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %5, align 8
  %80 = getelementptr inbounds %struct.tegra_smmu_as, %struct.tegra_smmu_as* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @SMMU_PTB_DATA_VALUE(i32 %78, i32 %81)
  store i32 %82, i32* %6, align 4
  %83 = load %struct.tegra_smmu*, %struct.tegra_smmu** %4, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @SMMU_PTB_DATA, align 4
  %86 = call i32 @smmu_writel(%struct.tegra_smmu* %83, i32 %84, i32 %85)
  %87 = load %struct.tegra_smmu*, %struct.tegra_smmu** %4, align 8
  %88 = call i32 @smmu_flush(%struct.tegra_smmu* %87)
  %89 = load %struct.tegra_smmu*, %struct.tegra_smmu** %4, align 8
  %90 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %5, align 8
  %91 = getelementptr inbounds %struct.tegra_smmu_as, %struct.tegra_smmu_as* %90, i32 0, i32 3
  store %struct.tegra_smmu* %89, %struct.tegra_smmu** %91, align 8
  %92 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %5, align 8
  %93 = getelementptr inbounds %struct.tegra_smmu_as, %struct.tegra_smmu_as* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, 1
  store i64 %95, i64* %93, align 8
  store i32 0, i32* %3, align 4
  br label %107

96:                                               ; preds = %57, %47
  %97 = load %struct.tegra_smmu*, %struct.tegra_smmu** %4, align 8
  %98 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %5, align 8
  %101 = getelementptr inbounds %struct.tegra_smmu_as, %struct.tegra_smmu_as* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @SMMU_SIZE_PD, align 4
  %104 = load i32, i32* @DMA_TO_DEVICE, align 4
  %105 = call i32 @dma_unmap_page(i32 %99, i32 %102, i32 %103, i32 %104)
  %106 = load i32, i32* %7, align 4
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %96, %58, %37, %12
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @dma_map_page(i32, i32, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @smmu_dma_addr_valid(%struct.tegra_smmu*, i32) #1

declare dso_local i32 @tegra_smmu_alloc_asid(%struct.tegra_smmu*, i32*) #1

declare dso_local i32 @smmu_flush_ptc(%struct.tegra_smmu*, i32, i32) #1

declare dso_local i32 @smmu_flush_tlb_asid(%struct.tegra_smmu*, i32) #1

declare dso_local i32 @smmu_writel(%struct.tegra_smmu*, i32, i32) #1

declare dso_local i32 @SMMU_PTB_DATA_VALUE(i32, i32) #1

declare dso_local i32 @smmu_flush(%struct.tegra_smmu*) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
