; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_hsw_post_update_enable_ips.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_hsw_post_update_enable_ips.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i64, i32, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.intel_crtc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@GAMMA_MODE_MODE_SPLIT = common dso_local global i64 0, align 8
@I915_MODE_FLAG_INHERITED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crtc_state*, %struct.intel_crtc_state*)* @hsw_post_update_enable_ips to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsw_post_update_enable_ips(%struct.intel_crtc_state* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.intel_crtc*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  %8 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %9 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.intel_crtc* @to_intel_crtc(i32 %11)
  store %struct.intel_crtc* %12, %struct.intel_crtc** %6, align 8
  %13 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %14 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.drm_i915_private* @to_i915(i32 %16)
  store %struct.drm_i915_private* %17, %struct.drm_i915_private** %7, align 8
  %18 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %19 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %72

23:                                               ; preds = %2
  %24 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %25 = call i64 @needs_modeset(%struct.intel_crtc_state* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 1, i32* %3, align 4
  br label %72

28:                                               ; preds = %23
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %30 = call i64 @IS_HASWELL(%struct.drm_i915_private* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %28
  %33 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %34 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %32
  %39 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %40 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38, %32
  %44 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %45 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @GAMMA_MODE_MODE_SPLIT, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i32 1, i32* %3, align 4
  br label %72

50:                                               ; preds = %43, %38, %28
  %51 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %52 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %50
  %56 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %57 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @I915_MODE_FLAG_INHERITED, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  store i32 1, i32* %3, align 4
  br label %72

65:                                               ; preds = %55, %50
  %66 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %67 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %65, %64, %49, %27, %22
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i64 @needs_modeset(%struct.intel_crtc_state*) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
