; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_iommu_disable_protect_mem_regions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_iommu_disable_protect_mem_regions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_iommu = type { i32, i64, i32 }

@DMAR_PMEN_REG = common dso_local global i64 0, align 8
@DMA_PMEN_EPM = common dso_local global i32 0, align 4
@DMA_PMEN_PRS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_iommu*)* @iommu_disable_protect_mem_regions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iommu_disable_protect_mem_regions(%struct.intel_iommu* %0) #0 {
  %2 = alloca %struct.intel_iommu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.intel_iommu* %0, %struct.intel_iommu** %2, align 8
  %5 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %6 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @cap_plmr(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %12 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @cap_phmr(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  br label %53

17:                                               ; preds = %10, %1
  %18 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %19 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %18, i32 0, i32 0
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @raw_spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %23 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DMAR_PMEN_REG, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @readl(i64 %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* @DMA_PMEN_EPM, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %3, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %34 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @DMAR_PMEN_REG, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel(i32 %32, i64 %37)
  %39 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %40 = load i64, i64* @DMAR_PMEN_REG, align 8
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @DMA_PMEN_PRS, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @IOMMU_WAIT_OP(%struct.intel_iommu* %39, i64 %40, i32 (i64)* @readl, i32 %46, i32 %47)
  %49 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %50 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %49, i32 0, i32 0
  %51 = load i64, i64* %4, align 8
  %52 = call i32 @raw_spin_unlock_irqrestore(i32* %50, i64 %51)
  br label %53

53:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @cap_plmr(i32) #1

declare dso_local i32 @cap_phmr(i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @IOMMU_WAIT_OP(%struct.intel_iommu*, i64, i32 (i64)*, i32, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
