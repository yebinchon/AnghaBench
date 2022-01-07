; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_iommu_set_root_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_iommu_set_root_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_iommu = type { i32, i32, i64, i32 }

@DMA_RTADDR_SMT = common dso_local global i32 0, align 4
@DMAR_RTADDR_REG = common dso_local global i64 0, align 8
@DMA_GCMD_SRTP = common dso_local global i32 0, align 4
@DMAR_GCMD_REG = common dso_local global i64 0, align 8
@DMAR_GSTS_REG = common dso_local global i32 0, align 4
@readl = common dso_local global i32 0, align 4
@DMA_GSTS_RTPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_iommu*)* @iommu_set_root_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iommu_set_root_entry(%struct.intel_iommu* %0) #0 {
  %2 = alloca %struct.intel_iommu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.intel_iommu* %0, %struct.intel_iommu** %2, align 8
  %6 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %7 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @virt_to_phys(i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %11 = call i64 @sm_supported(%struct.intel_iommu* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* @DMA_RTADDR_SMT, align 4
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %13, %1
  %18 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %19 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %18, i32 0, i32 1
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @raw_spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %23 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DMAR_RTADDR_REG, align 8
  %26 = add nsw i64 %24, %25
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @dmar_writeq(i64 %26, i32 %27)
  %29 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %30 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @DMA_GCMD_SRTP, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %35 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @DMAR_GCMD_REG, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel(i32 %33, i64 %38)
  %40 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %41 = load i32, i32* @DMAR_GSTS_REG, align 4
  %42 = load i32, i32* @readl, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @DMA_GSTS_RTPS, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @IOMMU_WAIT_OP(%struct.intel_iommu* %40, i32 %41, i32 %42, i32 %45, i32 %46)
  %48 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %49 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %48, i32 0, i32 1
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @raw_spin_unlock_irqrestore(i32* %49, i64 %50)
  ret void
}

declare dso_local i32 @virt_to_phys(i32) #1

declare dso_local i64 @sm_supported(%struct.intel_iommu*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dmar_writeq(i64, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @IOMMU_WAIT_OP(%struct.intel_iommu*, i32, i32, i32, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
