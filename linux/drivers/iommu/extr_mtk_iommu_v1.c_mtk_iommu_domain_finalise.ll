; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_mtk_iommu_v1.c_mtk_iommu_domain_finalise.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_mtk_iommu_v1.c_mtk_iommu_domain_finalise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_iommu_data = type { i64, i32, %struct.mtk_iommu_domain* }
%struct.mtk_iommu_domain = type { %struct.mtk_iommu_data*, i32, i32, i32 }

@M2701_IOMMU_PGT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@REG_MMU_PT_BASE_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_iommu_data*)* @mtk_iommu_domain_finalise to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_iommu_domain_finalise(%struct.mtk_iommu_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtk_iommu_data*, align 8
  %4 = alloca %struct.mtk_iommu_domain*, align 8
  store %struct.mtk_iommu_data* %0, %struct.mtk_iommu_data** %3, align 8
  %5 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %3, align 8
  %6 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %5, i32 0, i32 2
  %7 = load %struct.mtk_iommu_domain*, %struct.mtk_iommu_domain** %6, align 8
  store %struct.mtk_iommu_domain* %7, %struct.mtk_iommu_domain** %4, align 8
  %8 = load %struct.mtk_iommu_domain*, %struct.mtk_iommu_domain** %4, align 8
  %9 = getelementptr inbounds %struct.mtk_iommu_domain, %struct.mtk_iommu_domain* %8, i32 0, i32 3
  %10 = call i32 @spin_lock_init(i32* %9)
  %11 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %3, align 8
  %12 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @M2701_IOMMU_PGT_SIZE, align 4
  %15 = load %struct.mtk_iommu_domain*, %struct.mtk_iommu_domain** %4, align 8
  %16 = getelementptr inbounds %struct.mtk_iommu_domain, %struct.mtk_iommu_domain* %15, i32 0, i32 1
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i32 @dma_alloc_coherent(i32 %13, i32 %14, i32* %16, i32 %17)
  %19 = load %struct.mtk_iommu_domain*, %struct.mtk_iommu_domain** %4, align 8
  %20 = getelementptr inbounds %struct.mtk_iommu_domain, %struct.mtk_iommu_domain* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load %struct.mtk_iommu_domain*, %struct.mtk_iommu_domain** %4, align 8
  %22 = getelementptr inbounds %struct.mtk_iommu_domain, %struct.mtk_iommu_domain* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %41

28:                                               ; preds = %1
  %29 = load %struct.mtk_iommu_domain*, %struct.mtk_iommu_domain** %4, align 8
  %30 = getelementptr inbounds %struct.mtk_iommu_domain, %struct.mtk_iommu_domain* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %3, align 8
  %33 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @REG_MMU_PT_BASE_ADDR, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel(i32 %31, i64 %36)
  %38 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %3, align 8
  %39 = load %struct.mtk_iommu_domain*, %struct.mtk_iommu_domain** %4, align 8
  %40 = getelementptr inbounds %struct.mtk_iommu_domain, %struct.mtk_iommu_domain* %39, i32 0, i32 0
  store %struct.mtk_iommu_data* %38, %struct.mtk_iommu_data** %40, align 8
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %28, %25
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
