; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_rockchip-iommu.c_rk_iommu_domain_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_rockchip-iommu.c_rk_iommu_domain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.rk_iommu_domain = type { %struct.iommu_domain, i32*, i32, i32, i32, i32 }

@IOMMU_DOMAIN_UNMANAGED = common dso_local global i32 0, align 4
@IOMMU_DOMAIN_DMA = common dso_local global i32 0, align 4
@dma_dev = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA32 = common dso_local global i32 0, align 4
@SPAGE_SIZE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"DMA map error for DT\0A\00", align 1
@NUM_DT_ENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iommu_domain* (i32)* @rk_iommu_domain_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iommu_domain* @rk_iommu_domain_alloc(i32 %0) #0 {
  %2 = alloca %struct.iommu_domain*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.rk_iommu_domain*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @IOMMU_DOMAIN_UNMANAGED, align 4
  %7 = icmp ne i32 %5, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @IOMMU_DOMAIN_DMA, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store %struct.iommu_domain* null, %struct.iommu_domain** %2, align 8
  br label %112

13:                                               ; preds = %8, %1
  %14 = load i32, i32* @dma_dev, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  store %struct.iommu_domain* null, %struct.iommu_domain** %2, align 8
  br label %112

17:                                               ; preds = %13
  %18 = load i32, i32* @dma_dev, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.rk_iommu_domain* @devm_kzalloc(i32 %18, i32 40, i32 %19)
  store %struct.rk_iommu_domain* %20, %struct.rk_iommu_domain** %4, align 8
  %21 = load %struct.rk_iommu_domain*, %struct.rk_iommu_domain** %4, align 8
  %22 = icmp ne %struct.rk_iommu_domain* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  store %struct.iommu_domain* null, %struct.iommu_domain** %2, align 8
  br label %112

24:                                               ; preds = %17
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @IOMMU_DOMAIN_DMA, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load %struct.rk_iommu_domain*, %struct.rk_iommu_domain** %4, align 8
  %30 = getelementptr inbounds %struct.rk_iommu_domain, %struct.rk_iommu_domain* %29, i32 0, i32 0
  %31 = call i64 @iommu_get_dma_cookie(%struct.iommu_domain* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store %struct.iommu_domain* null, %struct.iommu_domain** %2, align 8
  br label %112

34:                                               ; preds = %28, %24
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = load i32, i32* @GFP_DMA32, align 4
  %37 = or i32 %35, %36
  %38 = call i64 @get_zeroed_page(i32 %37)
  %39 = inttoptr i64 %38 to i32*
  %40 = load %struct.rk_iommu_domain*, %struct.rk_iommu_domain** %4, align 8
  %41 = getelementptr inbounds %struct.rk_iommu_domain, %struct.rk_iommu_domain* %40, i32 0, i32 1
  store i32* %39, i32** %41, align 8
  %42 = load %struct.rk_iommu_domain*, %struct.rk_iommu_domain** %4, align 8
  %43 = getelementptr inbounds %struct.rk_iommu_domain, %struct.rk_iommu_domain* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %34
  br label %103

47:                                               ; preds = %34
  %48 = load i32, i32* @dma_dev, align 4
  %49 = load %struct.rk_iommu_domain*, %struct.rk_iommu_domain** %4, align 8
  %50 = getelementptr inbounds %struct.rk_iommu_domain, %struct.rk_iommu_domain* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* @SPAGE_SIZE, align 4
  %53 = load i32, i32* @DMA_TO_DEVICE, align 4
  %54 = call i32 @dma_map_single(i32 %48, i32* %51, i32 %52, i32 %53)
  %55 = load %struct.rk_iommu_domain*, %struct.rk_iommu_domain** %4, align 8
  %56 = getelementptr inbounds %struct.rk_iommu_domain, %struct.rk_iommu_domain* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @dma_dev, align 4
  %58 = load %struct.rk_iommu_domain*, %struct.rk_iommu_domain** %4, align 8
  %59 = getelementptr inbounds %struct.rk_iommu_domain, %struct.rk_iommu_domain* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @dma_mapping_error(i32 %57, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %47
  %64 = load i32, i32* @dma_dev, align 4
  %65 = call i32 @dev_err(i32 %64, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %97

66:                                               ; preds = %47
  %67 = load %struct.rk_iommu_domain*, %struct.rk_iommu_domain** %4, align 8
  %68 = load %struct.rk_iommu_domain*, %struct.rk_iommu_domain** %4, align 8
  %69 = getelementptr inbounds %struct.rk_iommu_domain, %struct.rk_iommu_domain* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @NUM_DT_ENTRIES, align 4
  %72 = call i32 @rk_table_flush(%struct.rk_iommu_domain* %67, i32 %70, i32 %71)
  %73 = load %struct.rk_iommu_domain*, %struct.rk_iommu_domain** %4, align 8
  %74 = getelementptr inbounds %struct.rk_iommu_domain, %struct.rk_iommu_domain* %73, i32 0, i32 4
  %75 = call i32 @spin_lock_init(i32* %74)
  %76 = load %struct.rk_iommu_domain*, %struct.rk_iommu_domain** %4, align 8
  %77 = getelementptr inbounds %struct.rk_iommu_domain, %struct.rk_iommu_domain* %76, i32 0, i32 3
  %78 = call i32 @spin_lock_init(i32* %77)
  %79 = load %struct.rk_iommu_domain*, %struct.rk_iommu_domain** %4, align 8
  %80 = getelementptr inbounds %struct.rk_iommu_domain, %struct.rk_iommu_domain* %79, i32 0, i32 2
  %81 = call i32 @INIT_LIST_HEAD(i32* %80)
  %82 = load %struct.rk_iommu_domain*, %struct.rk_iommu_domain** %4, align 8
  %83 = getelementptr inbounds %struct.rk_iommu_domain, %struct.rk_iommu_domain* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  store i64 0, i64* %85, align 8
  %86 = call i32 @DMA_BIT_MASK(i32 32)
  %87 = load %struct.rk_iommu_domain*, %struct.rk_iommu_domain** %4, align 8
  %88 = getelementptr inbounds %struct.rk_iommu_domain, %struct.rk_iommu_domain* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  store i32 %86, i32* %90, align 4
  %91 = load %struct.rk_iommu_domain*, %struct.rk_iommu_domain** %4, align 8
  %92 = getelementptr inbounds %struct.rk_iommu_domain, %struct.rk_iommu_domain* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  store i32 1, i32* %94, align 8
  %95 = load %struct.rk_iommu_domain*, %struct.rk_iommu_domain** %4, align 8
  %96 = getelementptr inbounds %struct.rk_iommu_domain, %struct.rk_iommu_domain* %95, i32 0, i32 0
  store %struct.iommu_domain* %96, %struct.iommu_domain** %2, align 8
  br label %112

97:                                               ; preds = %63
  %98 = load %struct.rk_iommu_domain*, %struct.rk_iommu_domain** %4, align 8
  %99 = getelementptr inbounds %struct.rk_iommu_domain, %struct.rk_iommu_domain* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = ptrtoint i32* %100 to i64
  %102 = call i32 @free_page(i64 %101)
  br label %103

103:                                              ; preds = %97, %46
  %104 = load i32, i32* %3, align 4
  %105 = load i32, i32* @IOMMU_DOMAIN_DMA, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load %struct.rk_iommu_domain*, %struct.rk_iommu_domain** %4, align 8
  %109 = getelementptr inbounds %struct.rk_iommu_domain, %struct.rk_iommu_domain* %108, i32 0, i32 0
  %110 = call i32 @iommu_put_dma_cookie(%struct.iommu_domain* %109)
  br label %111

111:                                              ; preds = %107, %103
  store %struct.iommu_domain* null, %struct.iommu_domain** %2, align 8
  br label %112

112:                                              ; preds = %111, %66, %33, %23, %16, %12
  %113 = load %struct.iommu_domain*, %struct.iommu_domain** %2, align 8
  ret %struct.iommu_domain* %113
}

declare dso_local %struct.rk_iommu_domain* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i64 @iommu_get_dma_cookie(%struct.iommu_domain*) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @dma_map_single(i32, i32*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @rk_table_flush(%struct.rk_iommu_domain*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @iommu_put_dma_cookie(%struct.iommu_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
