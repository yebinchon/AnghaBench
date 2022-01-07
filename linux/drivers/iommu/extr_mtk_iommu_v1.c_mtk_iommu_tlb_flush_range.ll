; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_mtk_iommu_v1.c_mtk_iommu_tlb_flush_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_mtk_iommu_v1.c_mtk_iommu_tlb_flush_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_iommu_data = type { i64, i32 }

@F_INVLD_EN1 = common dso_local global i64 0, align 8
@F_INVLD_EN0 = common dso_local global i64 0, align 8
@REG_MMU_INV_SEL = common dso_local global i64 0, align 8
@F_MMU_FAULT_VA_MSK = common dso_local global i64 0, align 8
@REG_MMU_INVLD_START_A = common dso_local global i64 0, align 8
@REG_MMU_INVLD_END_A = common dso_local global i64 0, align 8
@F_MMU_INV_RANGE = common dso_local global i64 0, align 8
@REG_MMU_INVALIDATE = common dso_local global i64 0, align 8
@REG_MMU_CPE_DONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"Partial TLB flush timed out, falling back to full flush\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_iommu_data*, i64, i64)* @mtk_iommu_tlb_flush_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_iommu_tlb_flush_range(%struct.mtk_iommu_data* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.mtk_iommu_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.mtk_iommu_data* %0, %struct.mtk_iommu_data** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* @F_INVLD_EN1, align 8
  %10 = load i64, i64* @F_INVLD_EN0, align 8
  %11 = or i64 %9, %10
  %12 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %4, align 8
  %13 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @REG_MMU_INV_SEL, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @writel_relaxed(i64 %11, i64 %16)
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @F_MMU_FAULT_VA_MSK, align 8
  %20 = and i64 %18, %19
  %21 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %4, align 8
  %22 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @REG_MMU_INVLD_START_A, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel_relaxed(i64 %20, i64 %25)
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = add i64 %27, %28
  %30 = sub i64 %29, 1
  %31 = load i64, i64* @F_MMU_FAULT_VA_MSK, align 8
  %32 = and i64 %30, %31
  %33 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %4, align 8
  %34 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @REG_MMU_INVLD_END_A, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel_relaxed(i64 %32, i64 %37)
  %39 = load i64, i64* @F_MMU_INV_RANGE, align 8
  %40 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %4, align 8
  %41 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @REG_MMU_INVALIDATE, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel_relaxed(i64 %39, i64 %44)
  %46 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %4, align 8
  %47 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @REG_MMU_CPE_DONE, align 8
  %50 = add nsw i64 %48, %49
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %8, align 8
  %53 = icmp ne i64 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @readl_poll_timeout_atomic(i64 %50, i64 %51, i32 %54, i32 10, i32 100000)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %3
  %59 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %4, align 8
  %60 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @dev_warn(i32 %61, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %63 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %4, align 8
  %64 = call i32 @mtk_iommu_tlb_flush_all(%struct.mtk_iommu_data* %63)
  br label %65

65:                                               ; preds = %58, %3
  %66 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %4, align 8
  %67 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @REG_MMU_CPE_DONE, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @writel_relaxed(i64 0, i64 %70)
  ret void
}

declare dso_local i32 @writel_relaxed(i64, i64) #1

declare dso_local i32 @readl_poll_timeout_atomic(i64, i64, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @mtk_iommu_tlb_flush_all(%struct.mtk_iommu_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
