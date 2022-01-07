; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_rockchip-iommu.c_rk_iommu_domain_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_rockchip-iommu.c_rk_iommu_domain_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { i64 }
%struct.rk_iommu_domain = type { i32, i32*, i32, i32 }

@NUM_DT_ENTRIES = common dso_local global i32 0, align 4
@dma_dev = common dso_local global i32 0, align 4
@SPAGE_SIZE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@IOMMU_DOMAIN_DMA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iommu_domain*)* @rk_iommu_domain_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk_iommu_domain_free(%struct.iommu_domain* %0) #0 {
  %2 = alloca %struct.iommu_domain*, align 8
  %3 = alloca %struct.rk_iommu_domain*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.iommu_domain* %0, %struct.iommu_domain** %2, align 8
  %8 = load %struct.iommu_domain*, %struct.iommu_domain** %2, align 8
  %9 = call %struct.rk_iommu_domain* @to_rk_domain(%struct.iommu_domain* %8)
  store %struct.rk_iommu_domain* %9, %struct.rk_iommu_domain** %3, align 8
  %10 = load %struct.rk_iommu_domain*, %struct.rk_iommu_domain** %3, align 8
  %11 = getelementptr inbounds %struct.rk_iommu_domain, %struct.rk_iommu_domain* %10, i32 0, i32 3
  %12 = call i32 @list_empty(i32* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON(i32 %15)
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %46, %1
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @NUM_DT_ENTRIES, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %49

21:                                               ; preds = %17
  %22 = load %struct.rk_iommu_domain*, %struct.rk_iommu_domain** %3, align 8
  %23 = getelementptr inbounds %struct.rk_iommu_domain, %struct.rk_iommu_domain* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i64 @rk_dte_is_pt_valid(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %21
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @rk_dte_pt_address(i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32* @phys_to_virt(i32 %35)
  store i32* %36, i32** %7, align 8
  %37 = load i32, i32* @dma_dev, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @SPAGE_SIZE, align 4
  %40 = load i32, i32* @DMA_TO_DEVICE, align 4
  %41 = call i32 @dma_unmap_single(i32 %37, i32 %38, i32 %39, i32 %40)
  %42 = load i32*, i32** %7, align 8
  %43 = ptrtoint i32* %42 to i64
  %44 = call i32 @free_page(i64 %43)
  br label %45

45:                                               ; preds = %32, %21
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %17

49:                                               ; preds = %17
  %50 = load i32, i32* @dma_dev, align 4
  %51 = load %struct.rk_iommu_domain*, %struct.rk_iommu_domain** %3, align 8
  %52 = getelementptr inbounds %struct.rk_iommu_domain, %struct.rk_iommu_domain* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @SPAGE_SIZE, align 4
  %55 = load i32, i32* @DMA_TO_DEVICE, align 4
  %56 = call i32 @dma_unmap_single(i32 %50, i32 %53, i32 %54, i32 %55)
  %57 = load %struct.rk_iommu_domain*, %struct.rk_iommu_domain** %3, align 8
  %58 = getelementptr inbounds %struct.rk_iommu_domain, %struct.rk_iommu_domain* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = ptrtoint i32* %59 to i64
  %61 = call i32 @free_page(i64 %60)
  %62 = load %struct.iommu_domain*, %struct.iommu_domain** %2, align 8
  %63 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @IOMMU_DOMAIN_DMA, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %49
  %68 = load %struct.rk_iommu_domain*, %struct.rk_iommu_domain** %3, align 8
  %69 = getelementptr inbounds %struct.rk_iommu_domain, %struct.rk_iommu_domain* %68, i32 0, i32 0
  %70 = call i32 @iommu_put_dma_cookie(i32* %69)
  br label %71

71:                                               ; preds = %67, %49
  ret void
}

declare dso_local %struct.rk_iommu_domain* @to_rk_domain(%struct.iommu_domain*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i64 @rk_dte_is_pt_valid(i32) #1

declare dso_local i32 @rk_dte_pt_address(i32) #1

declare dso_local i32* @phys_to_virt(i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @iommu_put_dma_cookie(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
