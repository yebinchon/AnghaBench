; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_mtk_iommu_v1.c_mtk_iommu_domain_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_mtk_iommu_v1.c_mtk_iommu_domain_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { i32 }
%struct.mtk_iommu_domain = type { i32, i32, %struct.mtk_iommu_data* }
%struct.mtk_iommu_data = type { i32 }

@M2701_IOMMU_PGT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iommu_domain*)* @mtk_iommu_domain_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_iommu_domain_free(%struct.iommu_domain* %0) #0 {
  %2 = alloca %struct.iommu_domain*, align 8
  %3 = alloca %struct.mtk_iommu_domain*, align 8
  %4 = alloca %struct.mtk_iommu_data*, align 8
  store %struct.iommu_domain* %0, %struct.iommu_domain** %2, align 8
  %5 = load %struct.iommu_domain*, %struct.iommu_domain** %2, align 8
  %6 = call %struct.mtk_iommu_domain* @to_mtk_domain(%struct.iommu_domain* %5)
  store %struct.mtk_iommu_domain* %6, %struct.mtk_iommu_domain** %3, align 8
  %7 = load %struct.mtk_iommu_domain*, %struct.mtk_iommu_domain** %3, align 8
  %8 = getelementptr inbounds %struct.mtk_iommu_domain, %struct.mtk_iommu_domain* %7, i32 0, i32 2
  %9 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %8, align 8
  store %struct.mtk_iommu_data* %9, %struct.mtk_iommu_data** %4, align 8
  %10 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %4, align 8
  %11 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @M2701_IOMMU_PGT_SIZE, align 4
  %14 = load %struct.mtk_iommu_domain*, %struct.mtk_iommu_domain** %3, align 8
  %15 = getelementptr inbounds %struct.mtk_iommu_domain, %struct.mtk_iommu_domain* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.mtk_iommu_domain*, %struct.mtk_iommu_domain** %3, align 8
  %18 = getelementptr inbounds %struct.mtk_iommu_domain, %struct.mtk_iommu_domain* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @dma_free_coherent(i32 %12, i32 %13, i32 %16, i32 %19)
  %21 = load %struct.iommu_domain*, %struct.iommu_domain** %2, align 8
  %22 = call %struct.mtk_iommu_domain* @to_mtk_domain(%struct.iommu_domain* %21)
  %23 = call i32 @kfree(%struct.mtk_iommu_domain* %22)
  ret void
}

declare dso_local %struct.mtk_iommu_domain* @to_mtk_domain(%struct.iommu_domain*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.mtk_iommu_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
