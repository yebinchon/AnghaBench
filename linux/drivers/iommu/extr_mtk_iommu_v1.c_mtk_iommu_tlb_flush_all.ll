; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_mtk_iommu_v1.c_mtk_iommu_tlb_flush_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_mtk_iommu_v1.c_mtk_iommu_tlb_flush_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_iommu_data = type { i64 }

@F_INVLD_EN1 = common dso_local global i32 0, align 4
@F_INVLD_EN0 = common dso_local global i32 0, align 4
@REG_MMU_INV_SEL = common dso_local global i64 0, align 8
@F_ALL_INVLD = common dso_local global i32 0, align 4
@REG_MMU_INVALIDATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_iommu_data*)* @mtk_iommu_tlb_flush_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_iommu_tlb_flush_all(%struct.mtk_iommu_data* %0) #0 {
  %2 = alloca %struct.mtk_iommu_data*, align 8
  store %struct.mtk_iommu_data* %0, %struct.mtk_iommu_data** %2, align 8
  %3 = load i32, i32* @F_INVLD_EN1, align 4
  %4 = load i32, i32* @F_INVLD_EN0, align 4
  %5 = or i32 %3, %4
  %6 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %2, align 8
  %7 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @REG_MMU_INV_SEL, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @writel_relaxed(i32 %5, i64 %10)
  %12 = load i32, i32* @F_ALL_INVLD, align 4
  %13 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %2, align 8
  %14 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @REG_MMU_INVALIDATE, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writel_relaxed(i32 %12, i64 %17)
  %19 = call i32 (...) @wmb()
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
