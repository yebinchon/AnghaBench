; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_exynos-iommu.c___sysmmu_tlb_invalidate_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_exynos-iommu.c___sysmmu_tlb_invalidate_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysmmu_drvdata = type { i64, i32 }

@SPAGE_MASK = common dso_local global i32 0, align 4
@REG_MMU_FLUSH_ENTRY = common dso_local global i64 0, align 8
@SPAGE_SIZE = common dso_local global i32 0, align 4
@REG_V5_MMU_FLUSH_ENTRY = common dso_local global i64 0, align 8
@REG_V5_MMU_FLUSH_START = common dso_local global i64 0, align 8
@REG_V5_MMU_FLUSH_END = common dso_local global i64 0, align 8
@REG_V5_MMU_FLUSH_RANGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sysmmu_drvdata*, i32, i32)* @__sysmmu_tlb_invalidate_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__sysmmu_tlb_invalidate_entry(%struct.sysmmu_drvdata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sysmmu_drvdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sysmmu_drvdata* %0, %struct.sysmmu_drvdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %4, align 8
  %9 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @MMU_MAJ_VER(i32 %10)
  %12 = icmp slt i32 %11, 5
  br i1 %12, label %13, label %36

13:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %32, %13
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @SPAGE_MASK, align 4
  %21 = and i32 %19, %20
  %22 = or i32 %21, 1
  %23 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %4, align 8
  %24 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @REG_MMU_FLUSH_ENTRY, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel(i32 %22, i64 %27)
  %29 = load i32, i32* @SPAGE_SIZE, align 4
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, %29
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %18
  %33 = load i32, i32* %7, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %14

35:                                               ; preds = %14
  br label %81

36:                                               ; preds = %3
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @SPAGE_MASK, align 4
  %42 = and i32 %40, %41
  %43 = or i32 %42, 1
  %44 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %4, align 8
  %45 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @REG_V5_MMU_FLUSH_ENTRY, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writel(i32 %43, i64 %48)
  br label %80

50:                                               ; preds = %36
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @SPAGE_MASK, align 4
  %53 = and i32 %51, %52
  %54 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %4, align 8
  %55 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @REG_V5_MMU_FLUSH_START, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel(i32 %53, i64 %58)
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @SPAGE_MASK, align 4
  %62 = and i32 %60, %61
  %63 = load i32, i32* %6, align 4
  %64 = sub i32 %63, 1
  %65 = load i32, i32* @SPAGE_SIZE, align 4
  %66 = mul i32 %64, %65
  %67 = add i32 %62, %66
  %68 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %4, align 8
  %69 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @REG_V5_MMU_FLUSH_END, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @writel(i32 %67, i64 %72)
  %74 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %4, align 8
  %75 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @REG_V5_MMU_FLUSH_RANGE, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @writel(i32 1, i64 %78)
  br label %80

80:                                               ; preds = %50, %39
  br label %81

81:                                               ; preds = %80, %35
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
