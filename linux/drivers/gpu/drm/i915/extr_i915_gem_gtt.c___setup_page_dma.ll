; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c___setup_page_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c___setup_page_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_address_space = type { i32 }
%struct.i915_page_dma = type { i32, i32 }

@I915_GFP_ALLOW_FAIL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@DMA_ATTR_SKIP_CPU_SYNC = common dso_local global i32 0, align 4
@DMA_ATTR_NO_WARN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_address_space*, %struct.i915_page_dma*, i32)* @__setup_page_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__setup_page_dma(%struct.i915_address_space* %0, %struct.i915_page_dma* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i915_address_space*, align 8
  %6 = alloca %struct.i915_page_dma*, align 8
  %7 = alloca i32, align 4
  store %struct.i915_address_space* %0, %struct.i915_address_space** %5, align 8
  store %struct.i915_page_dma* %1, %struct.i915_page_dma** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.i915_address_space*, %struct.i915_address_space** %5, align 8
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @I915_GFP_ALLOW_FAIL, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @vm_alloc_page(%struct.i915_address_space* %8, i32 %11)
  %13 = load %struct.i915_page_dma*, %struct.i915_page_dma** %6, align 8
  %14 = getelementptr inbounds %struct.i915_page_dma, %struct.i915_page_dma* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.i915_page_dma*, %struct.i915_page_dma** %6, align 8
  %16 = getelementptr inbounds %struct.i915_page_dma, %struct.i915_page_dma* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %59

26:                                               ; preds = %3
  %27 = load %struct.i915_address_space*, %struct.i915_address_space** %5, align 8
  %28 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.i915_page_dma*, %struct.i915_page_dma** %6, align 8
  %31 = getelementptr inbounds %struct.i915_page_dma, %struct.i915_page_dma* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %35 = load i32, i32* @DMA_ATTR_SKIP_CPU_SYNC, align 4
  %36 = load i32, i32* @DMA_ATTR_NO_WARN, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @dma_map_page_attrs(i32 %29, i32 %32, i32 0, i32 %33, i32 %34, i32 %37)
  %39 = load %struct.i915_page_dma*, %struct.i915_page_dma** %6, align 8
  %40 = getelementptr inbounds %struct.i915_page_dma, %struct.i915_page_dma* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.i915_address_space*, %struct.i915_address_space** %5, align 8
  %42 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.i915_page_dma*, %struct.i915_page_dma** %6, align 8
  %45 = getelementptr inbounds %struct.i915_page_dma, %struct.i915_page_dma* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dma_mapping_error(i32 %43, i32 %46)
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %26
  %51 = load %struct.i915_address_space*, %struct.i915_address_space** %5, align 8
  %52 = load %struct.i915_page_dma*, %struct.i915_page_dma** %6, align 8
  %53 = getelementptr inbounds %struct.i915_page_dma, %struct.i915_page_dma* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @vm_free_page(%struct.i915_address_space* %51, i32 %54)
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %59

58:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %50, %23
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @vm_alloc_page(%struct.i915_address_space*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_map_page_attrs(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @vm_free_page(%struct.i915_address_space*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
