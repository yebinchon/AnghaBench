; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_mtk_iommu_v1.c_mtk_iommu_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_mtk_iommu_v1.c_mtk_iommu_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_iommu_data = type { i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [33 x i8] c"Failed to enable iommu bclk(%d)\0A\00", align 1
@F_MMU_CTRL_COHERENT_EN = common dso_local global i32 0, align 4
@REG_MMU_CTRL_REG = common dso_local global i64 0, align 8
@F_INT_TRANSLATION_FAULT = common dso_local global i32 0, align 4
@F_INT_MAIN_MULTI_HIT_FAULT = common dso_local global i32 0, align 4
@F_INT_INVALID_PA_FAULT = common dso_local global i32 0, align 4
@F_INT_ENTRY_REPLACEMENT_FAULT = common dso_local global i32 0, align 4
@F_INT_TABLE_WALK_FAULT = common dso_local global i32 0, align 4
@F_INT_TLB_MISS_FAULT = common dso_local global i32 0, align 4
@F_INT_PFH_DMA_FIFO_OVERFLOW = common dso_local global i32 0, align 4
@F_INT_MISS_DMA_FIFO_OVERFLOW = common dso_local global i32 0, align 4
@REG_MMU_INT_CONTROL = common dso_local global i64 0, align 8
@REG_MMU_IVRP_PADDR = common dso_local global i64 0, align 8
@F_MMU_DCM_ON = common dso_local global i32 0, align 4
@REG_MMU_DCM = common dso_local global i64 0, align 8
@mtk_iommu_isr = common dso_local global i32 0, align 4
@REG_MMU_PT_BASE_ADDR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed @ IRQ-%d Request\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_iommu_data*)* @mtk_iommu_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_iommu_hw_init(%struct.mtk_iommu_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtk_iommu_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mtk_iommu_data* %0, %struct.mtk_iommu_data** %3, align 8
  %6 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %3, align 8
  %7 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @clk_prepare_enable(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %3, align 8
  %14 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %104

19:                                               ; preds = %1
  %20 = load i32, i32* @F_MMU_CTRL_COHERENT_EN, align 4
  %21 = call i32 @F_MMU_TF_PROTECT_SEL(i32 2)
  %22 = or i32 %20, %21
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %3, align 8
  %25 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @REG_MMU_CTRL_REG, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel_relaxed(i32 %23, i64 %28)
  %30 = load i32, i32* @F_INT_TRANSLATION_FAULT, align 4
  %31 = load i32, i32* @F_INT_MAIN_MULTI_HIT_FAULT, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @F_INT_INVALID_PA_FAULT, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @F_INT_ENTRY_REPLACEMENT_FAULT, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @F_INT_TABLE_WALK_FAULT, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @F_INT_TLB_MISS_FAULT, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @F_INT_PFH_DMA_FIFO_OVERFLOW, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @F_INT_MISS_DMA_FIFO_OVERFLOW, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %3, align 8
  %47 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @REG_MMU_INT_CONTROL, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @writel_relaxed(i32 %45, i64 %50)
  %52 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %3, align 8
  %53 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %3, align 8
  %56 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @REG_MMU_IVRP_PADDR, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writel_relaxed(i32 %54, i64 %59)
  %61 = load i32, i32* @F_MMU_DCM_ON, align 4
  %62 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %3, align 8
  %63 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @REG_MMU_DCM, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writel_relaxed(i32 %61, i64 %66)
  %68 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %3, align 8
  %69 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %3, align 8
  %72 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @mtk_iommu_isr, align 4
  %75 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %3, align 8
  %76 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @dev_name(i32 %77)
  %79 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %3, align 8
  %80 = bitcast %struct.mtk_iommu_data* %79 to i8*
  %81 = call i64 @devm_request_irq(i32 %70, i32 %73, i32 %74, i32 0, i32 %78, i8* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %103

83:                                               ; preds = %19
  %84 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %3, align 8
  %85 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @REG_MMU_PT_BASE_ADDR, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @writel_relaxed(i32 0, i64 %88)
  %90 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %3, align 8
  %91 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @clk_disable_unprepare(i32 %92)
  %94 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %3, align 8
  %95 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %3, align 8
  %98 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @dev_err(i32 %96, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* @ENODEV, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %2, align 4
  br label %104

103:                                              ; preds = %19
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %103, %83, %12
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @F_MMU_TF_PROTECT_SEL(i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i64 @devm_request_irq(i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
