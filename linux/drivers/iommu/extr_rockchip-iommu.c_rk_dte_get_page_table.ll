; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_rockchip-iommu.c_rk_dte_get_page_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_rockchip-iommu.c_rk_dte_get_page_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_iommu_domain = type { i64*, i64, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@GFP_DMA32 = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dma_dev = common dso_local global i32 0, align 4
@SPAGE_SIZE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"DMA mapping error while allocating page table\0A\00", align 1
@NUM_PT_ENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (%struct.rk_iommu_domain*, i64)* @rk_dte_get_page_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @rk_dte_get_page_table(%struct.rk_iommu_domain* %0, i64 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.rk_iommu_domain*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.rk_iommu_domain* %0, %struct.rk_iommu_domain** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.rk_iommu_domain*, %struct.rk_iommu_domain** %4, align 8
  %13 = getelementptr inbounds %struct.rk_iommu_domain, %struct.rk_iommu_domain* %12, i32 0, i32 2
  %14 = call i32 @assert_spin_locked(i32* %13)
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @rk_iova_dte_index(i64 %15)
  store i64 %16, i64* %8, align 8
  %17 = load %struct.rk_iommu_domain*, %struct.rk_iommu_domain** %4, align 8
  %18 = getelementptr inbounds %struct.rk_iommu_domain, %struct.rk_iommu_domain* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i64, i64* %8, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  store i64* %21, i64** %7, align 8
  %22 = load i64*, i64** %7, align 8
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = call i64 @rk_dte_is_pt_valid(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %76

28:                                               ; preds = %2
  %29 = load i32, i32* @GFP_ATOMIC, align 4
  %30 = load i32, i32* @GFP_DMA32, align 4
  %31 = or i32 %29, %30
  %32 = call i64 @get_zeroed_page(i32 %31)
  %33 = inttoptr i64 %32 to i64*
  store i64* %33, i64** %6, align 8
  %34 = load i64*, i64** %6, align 8
  %35 = icmp ne i64* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %28
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  %39 = call i64* @ERR_PTR(i32 %38)
  store i64* %39, i64** %3, align 8
  br label %82

40:                                               ; preds = %28
  %41 = load i32, i32* @dma_dev, align 4
  %42 = load i64*, i64** %6, align 8
  %43 = load i32, i32* @SPAGE_SIZE, align 4
  %44 = load i32, i32* @DMA_TO_DEVICE, align 4
  %45 = call i64 @dma_map_single(i32 %41, i64* %42, i32 %43, i32 %44)
  store i64 %45, i64* %11, align 8
  %46 = load i32, i32* @dma_dev, align 4
  %47 = load i64, i64* %11, align 8
  %48 = call i64 @dma_mapping_error(i32 %46, i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %40
  %51 = load i32, i32* @dma_dev, align 4
  %52 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %53 = load i64*, i64** %6, align 8
  %54 = ptrtoint i64* %53 to i64
  %55 = call i32 @free_page(i64 %54)
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  %58 = call i64* @ERR_PTR(i32 %57)
  store i64* %58, i64** %3, align 8
  br label %82

59:                                               ; preds = %40
  %60 = load i64, i64* %11, align 8
  %61 = call i64 @rk_mk_dte(i64 %60)
  store i64 %61, i64* %9, align 8
  %62 = load i64, i64* %9, align 8
  %63 = load i64*, i64** %7, align 8
  store i64 %62, i64* %63, align 8
  %64 = load %struct.rk_iommu_domain*, %struct.rk_iommu_domain** %4, align 8
  %65 = load i64, i64* %11, align 8
  %66 = load i32, i32* @NUM_PT_ENTRIES, align 4
  %67 = call i32 @rk_table_flush(%struct.rk_iommu_domain* %64, i64 %65, i32 %66)
  %68 = load %struct.rk_iommu_domain*, %struct.rk_iommu_domain** %4, align 8
  %69 = load %struct.rk_iommu_domain*, %struct.rk_iommu_domain** %4, align 8
  %70 = getelementptr inbounds %struct.rk_iommu_domain, %struct.rk_iommu_domain* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %8, align 8
  %73 = mul i64 %72, 8
  %74 = add i64 %71, %73
  %75 = call i32 @rk_table_flush(%struct.rk_iommu_domain* %68, i64 %74, i32 1)
  br label %76

76:                                               ; preds = %59, %27
  %77 = load i64, i64* %9, align 8
  %78 = call i32 @rk_dte_pt_address(i64 %77)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i64 @phys_to_virt(i32 %79)
  %81 = inttoptr i64 %80 to i64*
  store i64* %81, i64** %3, align 8
  br label %82

82:                                               ; preds = %76, %50, %36
  %83 = load i64*, i64** %3, align 8
  ret i64* %83
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i64 @rk_iova_dte_index(i64) #1

declare dso_local i64 @rk_dte_is_pt_valid(i64) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i64* @ERR_PTR(i32) #1

declare dso_local i64 @dma_map_single(i32, i64*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i64 @rk_mk_dte(i64) #1

declare dso_local i32 @rk_table_flush(%struct.rk_iommu_domain*, i64, i32) #1

declare dso_local i32 @rk_dte_pt_address(i64) #1

declare dso_local i64 @phys_to_virt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
