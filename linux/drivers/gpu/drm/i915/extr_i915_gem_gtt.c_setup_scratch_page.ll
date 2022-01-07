; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_setup_scratch_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_setup_scratch_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_address_space = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.page* }
%struct.page = type { i32 }

@I915_GTT_PAGE_SIZE_4K = common dso_local global i64 0, align 8
@I915_GTT_PAGE_SIZE_64K = common dso_local global i64 0, align 8
@__GFP_NOWARN = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@__GFP_RETRY_MAYFAIL = common dso_local global i32 0, align 4
@PCI_DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@DMA_ATTR_SKIP_CPU_SYNC = common dso_local global i32 0, align 4
@DMA_ATTR_NO_WARN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_address_space*, i32)* @setup_scratch_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_scratch_page(%struct.i915_address_space* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i915_address_space*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  store %struct.i915_address_space* %0, %struct.i915_address_space** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i64, i64* @I915_GTT_PAGE_SIZE_4K, align 8
  store i64 %10, i64* %6, align 8
  %11 = load %struct.i915_address_space*, %struct.i915_address_space** %4, align 8
  %12 = call i64 @i915_vm_is_4lvl(%struct.i915_address_space* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = load %struct.i915_address_space*, %struct.i915_address_space** %4, align 8
  %16 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load i64, i64* @I915_GTT_PAGE_SIZE_64K, align 8
  %19 = call i64 @HAS_PAGE_SIZES(i32 %17, i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load i64, i64* @I915_GTT_PAGE_SIZE_64K, align 8
  store i64 %22, i64* %6, align 8
  %23 = load i32, i32* @__GFP_NOWARN, align 4
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %21, %14, %2
  %27 = load i32, i32* @__GFP_ZERO, align 4
  %28 = load i32, i32* @__GFP_RETRY_MAYFAIL, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %117, %26
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @get_order(i64 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call %struct.page* @alloc_pages(i32 %35, i32 %36)
  store %struct.page* %37, %struct.page** %8, align 8
  %38 = load %struct.page*, %struct.page** %8, align 8
  %39 = icmp ne %struct.page* %38, null
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  br label %104

45:                                               ; preds = %32
  %46 = load %struct.i915_address_space*, %struct.i915_address_space** %4, align 8
  %47 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.page*, %struct.page** %8, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %52 = load i32, i32* @DMA_ATTR_SKIP_CPU_SYNC, align 4
  %53 = load i32, i32* @DMA_ATTR_NO_WARN, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @dma_map_page_attrs(i32 %48, %struct.page* %49, i32 0, i64 %50, i32 %51, i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load %struct.i915_address_space*, %struct.i915_address_space** %4, align 8
  %57 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @dma_mapping_error(i32 %58, i32 %59)
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %45
  br label %100

64:                                               ; preds = %45
  %65 = load i32, i32* %9, align 4
  %66 = load i64, i64* %6, align 8
  %67 = call i32 @IS_ALIGNED(i32 %65, i64 %66)
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  br label %92

74:                                               ; preds = %64
  %75 = load %struct.page*, %struct.page** %8, align 8
  %76 = load %struct.i915_address_space*, %struct.i915_address_space** %4, align 8
  %77 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %76, i32 0, i32 2
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i64 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  store %struct.page* %75, %struct.page** %81, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.i915_address_space*, %struct.i915_address_space** %4, align 8
  %84 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %83, i32 0, i32 2
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  store i32 %82, i32* %88, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.i915_address_space*, %struct.i915_address_space** %4, align 8
  %91 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  store i32 0, i32* %3, align 4
  br label %118

92:                                               ; preds = %73
  %93 = load %struct.i915_address_space*, %struct.i915_address_space** %4, align 8
  %94 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %9, align 4
  %97 = load i64, i64* %6, align 8
  %98 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %99 = call i32 @dma_unmap_page(i32 %95, i32 %96, i64 %97, i32 %98)
  br label %100

100:                                              ; preds = %92, %63
  %101 = load %struct.page*, %struct.page** %8, align 8
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @__free_pages(%struct.page* %101, i32 %102)
  br label %104

104:                                              ; preds = %100, %44
  %105 = load i64, i64* %6, align 8
  %106 = load i64, i64* @I915_GTT_PAGE_SIZE_4K, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %3, align 4
  br label %118

111:                                              ; preds = %104
  %112 = load i64, i64* @I915_GTT_PAGE_SIZE_4K, align 8
  store i64 %112, i64* %6, align 8
  %113 = load i32, i32* @__GFP_NOWARN, align 4
  %114 = xor i32 %113, -1
  %115 = load i32, i32* %5, align 4
  %116 = and i32 %115, %114
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %111
  br i1 true, label %32, label %118

118:                                              ; preds = %74, %108, %117
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i64 @i915_vm_is_4lvl(%struct.i915_address_space*) #1

declare dso_local i64 @HAS_PAGE_SIZES(i32, i64) #1

declare dso_local i32 @get_order(i64) #1

declare dso_local %struct.page* @alloc_pages(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_map_page_attrs(i32, %struct.page*, i32, i64, i32, i32) #1

declare dso_local i32 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @IS_ALIGNED(i32, i64) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i64, i32) #1

declare dso_local i32 @__free_pages(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
