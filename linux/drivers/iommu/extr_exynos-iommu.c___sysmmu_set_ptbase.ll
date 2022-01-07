; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_exynos-iommu.c___sysmmu_set_ptbase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_exynos-iommu.c___sysmmu_set_ptbase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysmmu_drvdata = type { i64, i32 }

@REG_PT_BASE_ADDR = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@REG_V5_PT_BASE_PFN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sysmmu_drvdata*, i32)* @__sysmmu_set_ptbase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__sysmmu_set_ptbase(%struct.sysmmu_drvdata* %0, i32 %1) #0 {
  %3 = alloca %struct.sysmmu_drvdata*, align 8
  %4 = alloca i32, align 4
  store %struct.sysmmu_drvdata* %0, %struct.sysmmu_drvdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %3, align 8
  %6 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @MMU_MAJ_VER(i32 %7)
  %9 = icmp slt i32 %8, 5
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %3, align 8
  %13 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @REG_PT_BASE_ADDR, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @writel(i32 %11, i64 %16)
  br label %28

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @PAGE_SHIFT, align 4
  %21 = ashr i32 %19, %20
  %22 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %3, align 8
  %23 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @REG_V5_PT_BASE_PFN, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel(i32 %21, i64 %26)
  br label %28

28:                                               ; preds = %18, %10
  %29 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %3, align 8
  %30 = call i32 @__sysmmu_tlb_invalidate(%struct.sysmmu_drvdata* %29)
  ret void
}

declare dso_local i32 @MMU_MAJ_VER(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @__sysmmu_tlb_invalidate(%struct.sysmmu_drvdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
