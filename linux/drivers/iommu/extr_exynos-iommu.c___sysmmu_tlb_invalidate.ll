; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_exynos-iommu.c___sysmmu_tlb_invalidate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_exynos-iommu.c___sysmmu_tlb_invalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysmmu_drvdata = type { i64, i32 }

@REG_MMU_FLUSH = common dso_local global i64 0, align 8
@REG_V5_MMU_FLUSH_ALL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sysmmu_drvdata*)* @__sysmmu_tlb_invalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__sysmmu_tlb_invalidate(%struct.sysmmu_drvdata* %0) #0 {
  %2 = alloca %struct.sysmmu_drvdata*, align 8
  store %struct.sysmmu_drvdata* %0, %struct.sysmmu_drvdata** %2, align 8
  %3 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %2, align 8
  %4 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @MMU_MAJ_VER(i32 %5)
  %7 = icmp slt i32 %6, 5
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %2, align 8
  %10 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @REG_MMU_FLUSH, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @writel(i32 1, i64 %13)
  br label %22

15:                                               ; preds = %1
  %16 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %2, align 8
  %17 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @REG_V5_MMU_FLUSH_ALL, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @writel(i32 1, i64 %20)
  br label %22

22:                                               ; preds = %15, %8
  ret void
}

declare dso_local i32 @MMU_MAJ_VER(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
