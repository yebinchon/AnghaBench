; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_i845_update_wm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_i845_update_wm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc = type { %struct.TYPE_6__*, %struct.TYPE_8__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.drm_i915_private.0*, i32)* }
%struct.drm_i915_private.0 = type opaque

@i845_wm_info = common dso_local global i32 0, align 4
@PLANE_A = common dso_local global i32 0, align 4
@pessimal_latency_ns = common dso_local global i32 0, align 4
@FW_BLC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Setting FIFO watermarks - A: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc*)* @i845_update_wm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i845_update_wm(%struct.intel_crtc* %0) #0 {
  %2 = alloca %struct.intel_crtc*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_crtc*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.intel_crtc* %0, %struct.intel_crtc** %2, align 8
  %8 = load %struct.intel_crtc*, %struct.intel_crtc** %2, align 8
  %9 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.drm_i915_private* @to_i915(i32 %11)
  store %struct.drm_i915_private* %12, %struct.drm_i915_private** %3, align 8
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %14 = call %struct.intel_crtc* @single_enabled_crtc(%struct.drm_i915_private* %13)
  store %struct.intel_crtc* %14, %struct.intel_crtc** %4, align 8
  %15 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %16 = icmp eq %struct.intel_crtc* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %49

18:                                               ; preds = %1
  %19 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %20 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store %struct.drm_display_mode* %23, %struct.drm_display_mode** %5, align 8
  %24 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %25 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %28 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32 (%struct.drm_i915_private.0*, i32)*, i32 (%struct.drm_i915_private.0*, i32)** %29, align 8
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %32 = bitcast %struct.drm_i915_private* %31 to %struct.drm_i915_private.0*
  %33 = load i32, i32* @PLANE_A, align 4
  %34 = call i32 %30(%struct.drm_i915_private.0* %32, i32 %33)
  %35 = load i32, i32* @pessimal_latency_ns, align 4
  %36 = call i32 @intel_calculate_wm(i32 %26, i32* @i845_wm_info, i32 %34, i32 4, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* @FW_BLC, align 4
  %38 = call i32 @I915_READ(i32 %37)
  %39 = and i32 %38, -4096
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = or i32 768, %40
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @FW_BLC, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @I915_WRITE(i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %18, %17
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_crtc* @single_enabled_crtc(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_calculate_wm(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
