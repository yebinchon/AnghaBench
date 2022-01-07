; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_vlv_get_fifo_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_vlv_get_fifo_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.vlv_fifo_state }
%struct.vlv_fifo_state = type { i32* }
%struct.TYPE_5__ = type { i32 }
%struct.intel_crtc = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@DSPARB = common dso_local global i32 0, align 4
@DSPARB2 = common dso_local global i32 0, align 4
@DSPARB3 = common dso_local global i32 0, align 4
@PLANE_PRIMARY = common dso_local global i64 0, align 8
@PLANE_SPRITE0 = common dso_local global i64 0, align 8
@PLANE_SPRITE1 = common dso_local global i64 0, align 8
@PLANE_CURSOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*)* @vlv_get_fifo_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlv_get_fifo_size(%struct.intel_crtc_state* %0) #0 {
  %2 = alloca %struct.intel_crtc_state*, align 8
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.vlv_fifo_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %2, align 8
  %12 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %13 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.intel_crtc* @to_intel_crtc(i32 %15)
  store %struct.intel_crtc* %16, %struct.intel_crtc** %3, align 8
  %17 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %18 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.drm_i915_private* @to_i915(i32 %20)
  store %struct.drm_i915_private* %21, %struct.drm_i915_private** %4, align 8
  %22 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %23 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  store %struct.vlv_fifo_state* %25, %struct.vlv_fifo_state** %5, align 8
  %26 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %27 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  switch i32 %29, label %63 [
    i32 130, label %30
    i32 129, label %41
    i32 128, label %52
  ]

30:                                               ; preds = %1
  %31 = load i32, i32* @DSPARB, align 4
  %32 = call i32 @I915_READ(i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* @DSPARB2, align 4
  %34 = call i32 @I915_READ(i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @VLV_FIFO_START(i32 %35, i32 %36, i32 0, i32 0)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @VLV_FIFO_START(i32 %38, i32 %39, i32 8, i32 4)
  store i32 %40, i32* %8, align 4
  br label %66

41:                                               ; preds = %1
  %42 = load i32, i32* @DSPARB, align 4
  %43 = call i32 @I915_READ(i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* @DSPARB2, align 4
  %45 = call i32 @I915_READ(i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @VLV_FIFO_START(i32 %46, i32 %47, i32 16, i32 8)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @VLV_FIFO_START(i32 %49, i32 %50, i32 24, i32 12)
  store i32 %51, i32* %8, align 4
  br label %66

52:                                               ; preds = %1
  %53 = load i32, i32* @DSPARB2, align 4
  %54 = call i32 @I915_READ(i32 %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* @DSPARB3, align 4
  %56 = call i32 @I915_READ(i32 %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @VLV_FIFO_START(i32 %57, i32 %58, i32 0, i32 16)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @VLV_FIFO_START(i32 %60, i32 %61, i32 8, i32 20)
  store i32 %62, i32* %8, align 4
  br label %66

63:                                               ; preds = %1
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @MISSING_CASE(i32 %64)
  br label %93

66:                                               ; preds = %52, %41, %30
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.vlv_fifo_state*, %struct.vlv_fifo_state** %5, align 8
  %69 = getelementptr inbounds %struct.vlv_fifo_state, %struct.vlv_fifo_state* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* @PLANE_PRIMARY, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32 %67, i32* %72, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %7, align 4
  %75 = sub nsw i32 %73, %74
  %76 = load %struct.vlv_fifo_state*, %struct.vlv_fifo_state** %5, align 8
  %77 = getelementptr inbounds %struct.vlv_fifo_state, %struct.vlv_fifo_state* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* @PLANE_SPRITE0, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32 %75, i32* %80, align 4
  %81 = load i32, i32* %8, align 4
  %82 = sub nsw i32 511, %81
  %83 = load %struct.vlv_fifo_state*, %struct.vlv_fifo_state** %5, align 8
  %84 = getelementptr inbounds %struct.vlv_fifo_state, %struct.vlv_fifo_state* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* @PLANE_SPRITE1, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32 %82, i32* %87, align 4
  %88 = load %struct.vlv_fifo_state*, %struct.vlv_fifo_state** %5, align 8
  %89 = getelementptr inbounds %struct.vlv_fifo_state, %struct.vlv_fifo_state* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i64, i64* @PLANE_CURSOR, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  store i32 63, i32* %92, align 4
  br label %93

93:                                               ; preds = %66, %63
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @VLV_FIFO_START(i32, i32, i32, i32) #1

declare dso_local i32 @MISSING_CASE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
