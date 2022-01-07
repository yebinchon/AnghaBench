; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_mtk_iommu.c_mtk_iommu_domain_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_mtk_iommu.c_mtk_iommu_domain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.mtk_iommu_domain = type { %struct.iommu_domain }

@IOMMU_DOMAIN_DMA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iommu_domain* (i32)* @mtk_iommu_domain_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iommu_domain* @mtk_iommu_domain_alloc(i32 %0) #0 {
  %2 = alloca %struct.iommu_domain*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_iommu_domain*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @IOMMU_DOMAIN_DMA, align 4
  %7 = icmp ne i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.iommu_domain* null, %struct.iommu_domain** %2, align 8
  br label %49

9:                                                ; preds = %1
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.mtk_iommu_domain* @kzalloc(i32 16, i32 %10)
  store %struct.mtk_iommu_domain* %11, %struct.mtk_iommu_domain** %4, align 8
  %12 = load %struct.mtk_iommu_domain*, %struct.mtk_iommu_domain** %4, align 8
  %13 = icmp ne %struct.mtk_iommu_domain* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  store %struct.iommu_domain* null, %struct.iommu_domain** %2, align 8
  br label %49

15:                                               ; preds = %9
  %16 = load %struct.mtk_iommu_domain*, %struct.mtk_iommu_domain** %4, align 8
  %17 = getelementptr inbounds %struct.mtk_iommu_domain, %struct.mtk_iommu_domain* %16, i32 0, i32 0
  %18 = call i64 @iommu_get_dma_cookie(%struct.iommu_domain* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %46

21:                                               ; preds = %15
  %22 = load %struct.mtk_iommu_domain*, %struct.mtk_iommu_domain** %4, align 8
  %23 = call i64 @mtk_iommu_domain_finalise(%struct.mtk_iommu_domain* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %42

26:                                               ; preds = %21
  %27 = load %struct.mtk_iommu_domain*, %struct.mtk_iommu_domain** %4, align 8
  %28 = getelementptr inbounds %struct.mtk_iommu_domain, %struct.mtk_iommu_domain* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = call i32 @DMA_BIT_MASK(i32 32)
  %32 = load %struct.mtk_iommu_domain*, %struct.mtk_iommu_domain** %4, align 8
  %33 = getelementptr inbounds %struct.mtk_iommu_domain, %struct.mtk_iommu_domain* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i32 %31, i32* %35, align 4
  %36 = load %struct.mtk_iommu_domain*, %struct.mtk_iommu_domain** %4, align 8
  %37 = getelementptr inbounds %struct.mtk_iommu_domain, %struct.mtk_iommu_domain* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load %struct.mtk_iommu_domain*, %struct.mtk_iommu_domain** %4, align 8
  %41 = getelementptr inbounds %struct.mtk_iommu_domain, %struct.mtk_iommu_domain* %40, i32 0, i32 0
  store %struct.iommu_domain* %41, %struct.iommu_domain** %2, align 8
  br label %49

42:                                               ; preds = %25
  %43 = load %struct.mtk_iommu_domain*, %struct.mtk_iommu_domain** %4, align 8
  %44 = getelementptr inbounds %struct.mtk_iommu_domain, %struct.mtk_iommu_domain* %43, i32 0, i32 0
  %45 = call i32 @iommu_put_dma_cookie(%struct.iommu_domain* %44)
  br label %46

46:                                               ; preds = %42, %20
  %47 = load %struct.mtk_iommu_domain*, %struct.mtk_iommu_domain** %4, align 8
  %48 = call i32 @kfree(%struct.mtk_iommu_domain* %47)
  store %struct.iommu_domain* null, %struct.iommu_domain** %2, align 8
  br label %49

49:                                               ; preds = %46, %26, %14, %8
  %50 = load %struct.iommu_domain*, %struct.iommu_domain** %2, align 8
  ret %struct.iommu_domain* %50
}

declare dso_local %struct.mtk_iommu_domain* @kzalloc(i32, i32) #1

declare dso_local i64 @iommu_get_dma_cookie(%struct.iommu_domain*) #1

declare dso_local i64 @mtk_iommu_domain_finalise(%struct.mtk_iommu_domain*) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @iommu_put_dma_cookie(%struct.iommu_domain*) #1

declare dso_local i32 @kfree(%struct.mtk_iommu_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
