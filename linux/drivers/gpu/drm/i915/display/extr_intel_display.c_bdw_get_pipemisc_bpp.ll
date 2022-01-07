; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_bdw_get_pipemisc_bpp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_bdw_get_pipemisc_bpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@PIPEMISC_DITHER_BPC_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bdw_get_pipemisc_bpp(%struct.intel_crtc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  store %struct.intel_crtc* %0, %struct.intel_crtc** %3, align 8
  %6 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %7 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.drm_i915_private* @to_i915(i32 %9)
  store %struct.drm_i915_private* %10, %struct.drm_i915_private** %4, align 8
  %11 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %12 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @PIPEMISC(i32 %13)
  %15 = call i32 @I915_READ(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @PIPEMISC_DITHER_BPC_MASK, align 4
  %18 = and i32 %16, %17
  switch i32 %18, label %23 [
    i32 129, label %19
    i32 128, label %20
    i32 131, label %21
    i32 130, label %22
  ]

19:                                               ; preds = %1
  store i32 18, i32* %2, align 4
  br label %26

20:                                               ; preds = %1
  store i32 24, i32* %2, align 4
  br label %26

21:                                               ; preds = %1
  store i32 30, i32* %2, align 4
  br label %26

22:                                               ; preds = %1
  store i32 36, i32* %2, align 4
  br label %26

23:                                               ; preds = %1
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @MISSING_CASE(i32 %24)
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %23, %22, %21, %20, %19
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @PIPEMISC(i32) #1

declare dso_local i32 @MISSING_CASE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
