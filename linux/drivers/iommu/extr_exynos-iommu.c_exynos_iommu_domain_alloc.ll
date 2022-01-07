; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_exynos-iommu.c_exynos_iommu_domain_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_exynos-iommu.c_exynos_iommu_domain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i64 }
%struct.exynos_iommu_domain = type { i16*, %struct.iommu_domain, i32*, i32, i32, i32 }

@PG_ENT_SHIFT = common dso_local global i64 0, align 8
@dma_dev = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IOMMU_DOMAIN_DMA = common dso_local global i32 0, align 4
@IOMMU_DOMAIN_UNMANAGED = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@NUM_LV1ENTRIES = common dso_local global i32 0, align 4
@ZERO_LV2LINK = common dso_local global i32 0, align 4
@LV1TABLE_SIZE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iommu_domain* (i32)* @exynos_iommu_domain_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iommu_domain* @exynos_iommu_domain_alloc(i32 %0) #0 {
  %2 = alloca %struct.iommu_domain*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.exynos_iommu_domain*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i64, i64* @PG_ENT_SHIFT, align 8
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @dma_dev, align 4
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br label %13

13:                                               ; preds = %9, %1
  %14 = phi i1 [ true, %1 ], [ %12, %9 ]
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.exynos_iommu_domain* @kzalloc(i32 56, i32 %17)
  store %struct.exynos_iommu_domain* %18, %struct.exynos_iommu_domain** %4, align 8
  %19 = load %struct.exynos_iommu_domain*, %struct.exynos_iommu_domain** %4, align 8
  %20 = icmp ne %struct.exynos_iommu_domain* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %13
  store %struct.iommu_domain* null, %struct.iommu_domain** %2, align 8
  br label %148

22:                                               ; preds = %13
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @IOMMU_DOMAIN_DMA, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load %struct.exynos_iommu_domain*, %struct.exynos_iommu_domain** %4, align 8
  %28 = getelementptr inbounds %struct.exynos_iommu_domain, %struct.exynos_iommu_domain* %27, i32 0, i32 1
  %29 = call i64 @iommu_get_dma_cookie(%struct.iommu_domain* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %145

32:                                               ; preds = %26
  br label %39

33:                                               ; preds = %22
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @IOMMU_DOMAIN_UNMANAGED, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %145

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38, %32
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i64 @__get_free_pages(i32 %40, i32 2)
  %42 = inttoptr i64 %41 to i32*
  %43 = load %struct.exynos_iommu_domain*, %struct.exynos_iommu_domain** %4, align 8
  %44 = getelementptr inbounds %struct.exynos_iommu_domain, %struct.exynos_iommu_domain* %43, i32 0, i32 2
  store i32* %42, i32** %44, align 8
  %45 = load %struct.exynos_iommu_domain*, %struct.exynos_iommu_domain** %4, align 8
  %46 = getelementptr inbounds %struct.exynos_iommu_domain, %struct.exynos_iommu_domain* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %39
  br label %136

50:                                               ; preds = %39
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = load i32, i32* @__GFP_ZERO, align 4
  %53 = or i32 %51, %52
  %54 = call i64 @__get_free_pages(i32 %53, i32 1)
  %55 = inttoptr i64 %54 to i16*
  %56 = load %struct.exynos_iommu_domain*, %struct.exynos_iommu_domain** %4, align 8
  %57 = getelementptr inbounds %struct.exynos_iommu_domain, %struct.exynos_iommu_domain* %56, i32 0, i32 0
  store i16* %55, i16** %57, align 8
  %58 = load %struct.exynos_iommu_domain*, %struct.exynos_iommu_domain** %4, align 8
  %59 = getelementptr inbounds %struct.exynos_iommu_domain, %struct.exynos_iommu_domain* %58, i32 0, i32 0
  %60 = load i16*, i16** %59, align 8
  %61 = icmp ne i16* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %50
  br label %130

63:                                               ; preds = %50
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %76, %63
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @NUM_LV1ENTRIES, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %64
  %69 = load i32, i32* @ZERO_LV2LINK, align 4
  %70 = load %struct.exynos_iommu_domain*, %struct.exynos_iommu_domain** %4, align 8
  %71 = getelementptr inbounds %struct.exynos_iommu_domain, %struct.exynos_iommu_domain* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %69, i32* %75, align 4
  br label %76

76:                                               ; preds = %68
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %64

79:                                               ; preds = %64
  %80 = load i32, i32* @dma_dev, align 4
  %81 = load %struct.exynos_iommu_domain*, %struct.exynos_iommu_domain** %4, align 8
  %82 = getelementptr inbounds %struct.exynos_iommu_domain, %struct.exynos_iommu_domain* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* @LV1TABLE_SIZE, align 4
  %85 = load i32, i32* @DMA_TO_DEVICE, align 4
  %86 = call i64 @dma_map_single(i32 %80, i32* %83, i32 %84, i32 %85)
  store i64 %86, i64* %5, align 8
  %87 = load i64, i64* %5, align 8
  %88 = load %struct.exynos_iommu_domain*, %struct.exynos_iommu_domain** %4, align 8
  %89 = getelementptr inbounds %struct.exynos_iommu_domain, %struct.exynos_iommu_domain* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = call i64 @virt_to_phys(i32* %90)
  %92 = icmp ne i64 %87, %91
  %93 = zext i1 %92 to i32
  %94 = call i32 @BUG_ON(i32 %93)
  %95 = load i32, i32* @dma_dev, align 4
  %96 = load i64, i64* %5, align 8
  %97 = call i64 @dma_mapping_error(i32 %95, i64 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %79
  br label %124

100:                                              ; preds = %79
  %101 = load %struct.exynos_iommu_domain*, %struct.exynos_iommu_domain** %4, align 8
  %102 = getelementptr inbounds %struct.exynos_iommu_domain, %struct.exynos_iommu_domain* %101, i32 0, i32 5
  %103 = call i32 @spin_lock_init(i32* %102)
  %104 = load %struct.exynos_iommu_domain*, %struct.exynos_iommu_domain** %4, align 8
  %105 = getelementptr inbounds %struct.exynos_iommu_domain, %struct.exynos_iommu_domain* %104, i32 0, i32 4
  %106 = call i32 @spin_lock_init(i32* %105)
  %107 = load %struct.exynos_iommu_domain*, %struct.exynos_iommu_domain** %4, align 8
  %108 = getelementptr inbounds %struct.exynos_iommu_domain, %struct.exynos_iommu_domain* %107, i32 0, i32 3
  %109 = call i32 @INIT_LIST_HEAD(i32* %108)
  %110 = load %struct.exynos_iommu_domain*, %struct.exynos_iommu_domain** %4, align 8
  %111 = getelementptr inbounds %struct.exynos_iommu_domain, %struct.exynos_iommu_domain* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 2
  store i64 0, i64* %113, align 8
  %114 = load %struct.exynos_iommu_domain*, %struct.exynos_iommu_domain** %4, align 8
  %115 = getelementptr inbounds %struct.exynos_iommu_domain, %struct.exynos_iommu_domain* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  store i64 -1, i64* %117, align 8
  %118 = load %struct.exynos_iommu_domain*, %struct.exynos_iommu_domain** %4, align 8
  %119 = getelementptr inbounds %struct.exynos_iommu_domain, %struct.exynos_iommu_domain* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  store i32 1, i32* %121, align 8
  %122 = load %struct.exynos_iommu_domain*, %struct.exynos_iommu_domain** %4, align 8
  %123 = getelementptr inbounds %struct.exynos_iommu_domain, %struct.exynos_iommu_domain* %122, i32 0, i32 1
  store %struct.iommu_domain* %123, %struct.iommu_domain** %2, align 8
  br label %148

124:                                              ; preds = %99
  %125 = load %struct.exynos_iommu_domain*, %struct.exynos_iommu_domain** %4, align 8
  %126 = getelementptr inbounds %struct.exynos_iommu_domain, %struct.exynos_iommu_domain* %125, i32 0, i32 0
  %127 = load i16*, i16** %126, align 8
  %128 = ptrtoint i16* %127 to i64
  %129 = call i32 @free_pages(i64 %128, i32 1)
  br label %130

130:                                              ; preds = %124, %62
  %131 = load %struct.exynos_iommu_domain*, %struct.exynos_iommu_domain** %4, align 8
  %132 = getelementptr inbounds %struct.exynos_iommu_domain, %struct.exynos_iommu_domain* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = ptrtoint i32* %133 to i64
  %135 = call i32 @free_pages(i64 %134, i32 2)
  br label %136

136:                                              ; preds = %130, %49
  %137 = load i32, i32* %3, align 4
  %138 = load i32, i32* @IOMMU_DOMAIN_DMA, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %144

140:                                              ; preds = %136
  %141 = load %struct.exynos_iommu_domain*, %struct.exynos_iommu_domain** %4, align 8
  %142 = getelementptr inbounds %struct.exynos_iommu_domain, %struct.exynos_iommu_domain* %141, i32 0, i32 1
  %143 = call i32 @iommu_put_dma_cookie(%struct.iommu_domain* %142)
  br label %144

144:                                              ; preds = %140, %136
  br label %145

145:                                              ; preds = %144, %37, %31
  %146 = load %struct.exynos_iommu_domain*, %struct.exynos_iommu_domain** %4, align 8
  %147 = call i32 @kfree(%struct.exynos_iommu_domain* %146)
  store %struct.iommu_domain* null, %struct.iommu_domain** %2, align 8
  br label %148

148:                                              ; preds = %145, %100, %21
  %149 = load %struct.iommu_domain*, %struct.iommu_domain** %2, align 8
  ret %struct.iommu_domain* %149
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.exynos_iommu_domain* @kzalloc(i32, i32) #1

declare dso_local i64 @iommu_get_dma_cookie(%struct.iommu_domain*) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i64 @dma_map_single(i32, i32*, i32, i32) #1

declare dso_local i64 @virt_to_phys(i32*) #1

declare dso_local i64 @dma_mapping_error(i32, i64) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i32 @iommu_put_dma_cookie(%struct.iommu_domain*) #1

declare dso_local i32 @kfree(%struct.exynos_iommu_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
