; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_ggtt_probe_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_ggtt_probe_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_ggtt = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__*, i32 (i32, i32, i32)*, %struct.drm_i915_private* }
%struct.TYPE_6__ = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Failed to map the ggtt page table\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_DMA32 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Scratch setup failed\0A\00", align 1
@I915_CACHE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_ggtt*, i32)* @ggtt_probe_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ggtt_probe_common(%struct.i915_ggtt* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i915_ggtt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.i915_ggtt* %0, %struct.i915_ggtt** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.i915_ggtt*, %struct.i915_ggtt** %4, align 8
  %11 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %12, align 8
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %6, align 8
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %15 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  store %struct.pci_dev* %17, %struct.pci_dev** %7, align 8
  %18 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %19 = call i64 @pci_resource_start(%struct.pci_dev* %18, i32 0)
  %20 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %21 = call i32 @pci_resource_len(%struct.pci_dev* %20, i32 0)
  %22 = sdiv i32 %21, 2
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %19, %23
  store i64 %24, i64* %8, align 8
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %26 = call i64 @IS_GEN9_LP(%struct.drm_i915_private* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %2
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %30 = call i32 @INTEL_GEN(%struct.drm_i915_private* %29)
  %31 = icmp sge i32 %30, 10
  br i1 %31, label %32, label %38

32:                                               ; preds = %28, %2
  %33 = load i64, i64* %8, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @ioremap_nocache(i64 %33, i32 %34)
  %36 = load %struct.i915_ggtt*, %struct.i915_ggtt** %4, align 8
  %37 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  br label %44

38:                                               ; preds = %28
  %39 = load i64, i64* %8, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @ioremap_wc(i64 %39, i32 %40)
  %42 = load %struct.i915_ggtt*, %struct.i915_ggtt** %4, align 8
  %43 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  br label %44

44:                                               ; preds = %38, %32
  %45 = load %struct.i915_ggtt*, %struct.i915_ggtt** %4, align 8
  %46 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %44
  %50 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %86

53:                                               ; preds = %44
  %54 = load %struct.i915_ggtt*, %struct.i915_ggtt** %4, align 8
  %55 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %54, i32 0, i32 0
  %56 = load i32, i32* @GFP_DMA32, align 4
  %57 = call i32 @setup_scratch_page(%struct.TYPE_5__* %55, i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %53
  %61 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %62 = load %struct.i915_ggtt*, %struct.i915_ggtt** %4, align 8
  %63 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @iounmap(i32 %64)
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %3, align 4
  br label %86

67:                                               ; preds = %53
  %68 = load %struct.i915_ggtt*, %struct.i915_ggtt** %4, align 8
  %69 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %70, align 8
  %72 = load %struct.i915_ggtt*, %struct.i915_ggtt** %4, align 8
  %73 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i64 0
  %77 = call i32 @px_dma(%struct.TYPE_6__* %76)
  %78 = load i32, i32* @I915_CACHE_NONE, align 4
  %79 = call i32 %71(i32 %77, i32 %78, i32 0)
  %80 = load %struct.i915_ggtt*, %struct.i915_ggtt** %4, align 8
  %81 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i64 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  store i32 %79, i32* %85, align 4
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %67, %60, %49
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i64 @IS_GEN9_LP(%struct.drm_i915_private*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @ioremap_nocache(i64, i32) #1

declare dso_local i32 @ioremap_wc(i64, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @setup_scratch_page(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @px_dma(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
