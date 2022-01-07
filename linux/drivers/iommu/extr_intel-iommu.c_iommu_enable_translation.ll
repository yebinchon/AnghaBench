; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_iommu_enable_translation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_iommu_enable_translation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_iommu = type { i32, i64, i32 }

@DMA_GCMD_TE = common dso_local global i32 0, align 4
@DMAR_GCMD_REG = common dso_local global i64 0, align 8
@DMAR_GSTS_REG = common dso_local global i32 0, align 4
@readl = common dso_local global i32 0, align 4
@DMA_GSTS_TES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_iommu*)* @iommu_enable_translation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iommu_enable_translation(%struct.intel_iommu* %0) #0 {
  %2 = alloca %struct.intel_iommu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.intel_iommu* %0, %struct.intel_iommu** %2, align 8
  %5 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %6 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %5, i32 0, i32 0
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @raw_spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load i32, i32* @DMA_GCMD_TE, align 4
  %10 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %11 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 8
  %14 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %15 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %18 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DMAR_GCMD_REG, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel(i32 %16, i64 %21)
  %23 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %24 = load i32, i32* @DMAR_GSTS_REG, align 4
  %25 = load i32, i32* @readl, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @DMA_GSTS_TES, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @IOMMU_WAIT_OP(%struct.intel_iommu* %23, i32 %24, i32 %25, i32 %28, i32 %29)
  %31 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %32 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %31, i32 0, i32 0
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @raw_spin_unlock_irqrestore(i32* %32, i64 %33)
  ret void
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @IOMMU_WAIT_OP(%struct.intel_iommu*, i32, i32, i32, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
