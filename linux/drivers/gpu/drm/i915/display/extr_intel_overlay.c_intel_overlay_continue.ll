; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_overlay.c_intel_overlay_continue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_overlay.c_intel_overlay_continue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_overlay = type { i32, i32, %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.i915_vma = type { i32 }
%struct.i915_request = type opaque

@OFC_UPDATE = common dso_local global i32 0, align 4
@DOVSTA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"overlay underrun, DOVSTA: %x\0A\00", align 1
@MI_OVERLAY_FLIP = common dso_local global i32 0, align 4
@MI_OVERLAY_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_overlay*, %struct.i915_vma*, i32)* @intel_overlay_continue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_overlay_continue(%struct.intel_overlay* %0, %struct.i915_vma* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_overlay*, align 8
  %6 = alloca %struct.i915_vma*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca %struct.i915_request*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.intel_overlay* %0, %struct.intel_overlay** %5, align 8
  store %struct.i915_vma* %1, %struct.i915_vma** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.intel_overlay*, %struct.intel_overlay** %5, align 8
  %14 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %13, i32 0, i32 2
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %14, align 8
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %8, align 8
  %16 = load %struct.intel_overlay*, %struct.intel_overlay** %5, align 8
  %17 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %10, align 4
  %19 = load %struct.intel_overlay*, %struct.intel_overlay** %5, align 8
  %20 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @WARN_ON(i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %3
  %29 = load i32, i32* @OFC_UPDATE, align 4
  %30 = load i32, i32* %10, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %28, %3
  %33 = load i32, i32* @DOVSTA, align 4
  %34 = call i32 @I915_READ(i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = and i32 %35, 131072
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %38, %32
  %42 = load %struct.intel_overlay*, %struct.intel_overlay** %5, align 8
  %43 = call i32* @alloc_request(%struct.intel_overlay* %42, i32* null)
  %44 = bitcast i32* %43 to %struct.i915_request*
  store %struct.i915_request* %44, %struct.i915_request** %9, align 8
  %45 = load %struct.i915_request*, %struct.i915_request** %9, align 8
  %46 = bitcast %struct.i915_request* %45 to i32*
  %47 = call i64 @IS_ERR(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load %struct.i915_request*, %struct.i915_request** %9, align 8
  %51 = bitcast %struct.i915_request* %50 to i32*
  %52 = call i32 @PTR_ERR(i32* %51)
  store i32 %52, i32* %4, align 4
  br label %85

53:                                               ; preds = %41
  %54 = load %struct.i915_request*, %struct.i915_request** %9, align 8
  %55 = bitcast %struct.i915_request* %54 to i32*
  %56 = call i32* @intel_ring_begin(i32* %55, i32 2)
  store i32* %56, i32** %12, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = call i64 @IS_ERR(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  %61 = load %struct.i915_request*, %struct.i915_request** %9, align 8
  %62 = bitcast %struct.i915_request* %61 to i32*
  %63 = call i32 @i915_request_add(i32* %62)
  %64 = load i32*, i32** %12, align 8
  %65 = call i32 @PTR_ERR(i32* %64)
  store i32 %65, i32* %4, align 4
  br label %85

66:                                               ; preds = %53
  %67 = load i32, i32* @MI_OVERLAY_FLIP, align 4
  %68 = load i32, i32* @MI_OVERLAY_CONTINUE, align 4
  %69 = or i32 %67, %68
  %70 = load i32*, i32** %12, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %12, align 8
  store i32 %69, i32* %70, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32*, i32** %12, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %12, align 8
  store i32 %72, i32* %73, align 4
  %75 = load %struct.i915_request*, %struct.i915_request** %9, align 8
  %76 = bitcast %struct.i915_request* %75 to i32*
  %77 = load i32*, i32** %12, align 8
  %78 = call i32 @intel_ring_advance(i32* %76, i32* %77)
  %79 = load %struct.intel_overlay*, %struct.intel_overlay** %5, align 8
  %80 = load %struct.i915_vma*, %struct.i915_vma** %6, align 8
  %81 = call i32 @intel_overlay_flip_prepare(%struct.intel_overlay* %79, %struct.i915_vma* %80)
  %82 = load %struct.i915_request*, %struct.i915_request** %9, align 8
  %83 = bitcast %struct.i915_request* %82 to i32*
  %84 = call i32 @i915_request_add(i32* %83)
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %66, %60, %49
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

declare dso_local i32* @alloc_request(%struct.intel_overlay*, i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32* @intel_ring_begin(i32*, i32) #1

declare dso_local i32 @i915_request_add(i32*) #1

declare dso_local i32 @intel_ring_advance(i32*, i32*) #1

declare dso_local i32 @intel_overlay_flip_prepare(%struct.intel_overlay*, %struct.i915_vma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
