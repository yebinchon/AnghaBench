; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_ppgtt_alloc_spt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_ppgtt_alloc_spt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu_ppgtt_spt = type { %struct.TYPE_11__, i32, i32, %struct.intel_vgpu* }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.intel_vgpu = type { %struct.TYPE_10__, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.device }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"fail to allocate ppgtt shadow page\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PCI_DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"fail to map dma addr\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@I915_GTT_PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intel_vgpu_ppgtt_spt* (%struct.intel_vgpu*, i32)* @ppgtt_alloc_spt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intel_vgpu_ppgtt_spt* @ppgtt_alloc_spt(%struct.intel_vgpu* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_vgpu_ppgtt_spt*, align 8
  %4 = alloca %struct.intel_vgpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.intel_vgpu_ppgtt_spt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %11 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %10, i32 0, i32 1
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  store %struct.device* %18, %struct.device** %6, align 8
  store %struct.intel_vgpu_ppgtt_spt* null, %struct.intel_vgpu_ppgtt_spt** %7, align 8
  br label %19

19:                                               ; preds = %32, %2
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = load i32, i32* @__GFP_ZERO, align 4
  %22 = or i32 %20, %21
  %23 = call %struct.intel_vgpu_ppgtt_spt* @alloc_spt(i32 %22)
  store %struct.intel_vgpu_ppgtt_spt* %23, %struct.intel_vgpu_ppgtt_spt** %7, align 8
  %24 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %7, align 8
  %25 = icmp ne %struct.intel_vgpu_ppgtt_spt* %24, null
  br i1 %25, label %38, label %26

26:                                               ; preds = %19
  %27 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %28 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %27, i32 0, i32 1
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %30 = call i64 @reclaim_one_ppgtt_mm(%struct.TYPE_12__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %19

33:                                               ; preds = %26
  %34 = call i32 @gvt_vgpu_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.intel_vgpu_ppgtt_spt* @ERR_PTR(i32 %36)
  store %struct.intel_vgpu_ppgtt_spt* %37, %struct.intel_vgpu_ppgtt_spt** %3, align 8
  br label %107

38:                                               ; preds = %19
  %39 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %40 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %7, align 8
  %41 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %40, i32 0, i32 3
  store %struct.intel_vgpu* %39, %struct.intel_vgpu** %41, align 8
  %42 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %7, align 8
  %43 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %42, i32 0, i32 2
  %44 = call i32 @atomic_set(i32* %43, i32 1)
  %45 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %7, align 8
  %46 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %45, i32 0, i32 1
  %47 = call i32 @INIT_LIST_HEAD(i32* %46)
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %7, align 8
  %50 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  %52 = load %struct.device*, %struct.device** %6, align 8
  %53 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %7, align 8
  %54 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %58 = call i32 @dma_map_page(%struct.device* %52, i32 %56, i32 0, i32 4096, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load %struct.device*, %struct.device** %6, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i64 @dma_mapping_error(%struct.device* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %38
  %64 = call i32 @gvt_vgpu_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %9, align 4
  br label %102

67:                                               ; preds = %38
  %68 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %7, align 8
  %69 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @page_address(i32 %71)
  %73 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %7, align 8
  %74 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 3
  store i32 %72, i32* %75, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @I915_GTT_PAGE_SHIFT, align 4
  %78 = ashr i32 %76, %77
  %79 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %7, align 8
  %80 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 4
  %82 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %83 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %7, align 8
  %86 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %7, align 8
  %90 = call i32 @radix_tree_insert(i32* %84, i32 %88, %struct.intel_vgpu_ppgtt_spt* %89)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %67
  br label %96

94:                                               ; preds = %67
  %95 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %7, align 8
  store %struct.intel_vgpu_ppgtt_spt* %95, %struct.intel_vgpu_ppgtt_spt** %3, align 8
  br label %107

96:                                               ; preds = %93
  %97 = load %struct.device*, %struct.device** %6, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* @PAGE_SIZE, align 4
  %100 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %101 = call i32 @dma_unmap_page(%struct.device* %97, i32 %98, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %96, %63
  %103 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %7, align 8
  %104 = call i32 @free_spt(%struct.intel_vgpu_ppgtt_spt* %103)
  %105 = load i32, i32* %9, align 4
  %106 = call %struct.intel_vgpu_ppgtt_spt* @ERR_PTR(i32 %105)
  store %struct.intel_vgpu_ppgtt_spt* %106, %struct.intel_vgpu_ppgtt_spt** %3, align 8
  br label %107

107:                                              ; preds = %102, %94, %33
  %108 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %3, align 8
  ret %struct.intel_vgpu_ppgtt_spt* %108
}

declare dso_local %struct.intel_vgpu_ppgtt_spt* @alloc_spt(i32) #1

declare dso_local i64 @reclaim_one_ppgtt_mm(%struct.TYPE_12__*) #1

declare dso_local i32 @gvt_vgpu_err(i8*) #1

declare dso_local %struct.intel_vgpu_ppgtt_spt* @ERR_PTR(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dma_map_page(%struct.device*, i32, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @page_address(i32) #1

declare dso_local i32 @radix_tree_insert(i32*, i32, %struct.intel_vgpu_ppgtt_spt*) #1

declare dso_local i32 @dma_unmap_page(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @free_spt(%struct.intel_vgpu_ppgtt_spt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
