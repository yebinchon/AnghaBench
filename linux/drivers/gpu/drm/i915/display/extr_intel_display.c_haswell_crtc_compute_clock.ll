; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_haswell_crtc_compute_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_haswell_crtc_compute_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.intel_crtc_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_atomic_state = type { i32 }
%struct.intel_encoder = type { i32 }

@INTEL_OUTPUT_DSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to find PLL for pipe %c\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crtc*, %struct.intel_crtc_state*)* @haswell_crtc_compute_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @haswell_crtc_compute_clock(%struct.intel_crtc* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_crtc*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.intel_atomic_state*, align 8
  %8 = alloca %struct.intel_encoder*, align 8
  store %struct.intel_crtc* %0, %struct.intel_crtc** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  %9 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %10 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.drm_i915_private* @to_i915(i32 %12)
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %6, align 8
  %14 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %15 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.intel_atomic_state* @to_intel_atomic_state(i32 %17)
  store %struct.intel_atomic_state* %18, %struct.intel_atomic_state** %7, align 8
  %19 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %20 = load i32, i32* @INTEL_OUTPUT_DSI, align 4
  %21 = call i32 @intel_crtc_has_type(%struct.intel_crtc_state* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %25 = call i32 @INTEL_GEN(%struct.drm_i915_private* %24)
  %26 = icmp sge i32 %25, 11
  br i1 %26, label %27, label %45

27:                                               ; preds = %23, %2
  %28 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %7, align 8
  %29 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %30 = call %struct.intel_encoder* @intel_get_crtc_new_encoder(%struct.intel_atomic_state* %28, %struct.intel_crtc_state* %29)
  store %struct.intel_encoder* %30, %struct.intel_encoder** %8, align 8
  %31 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %7, align 8
  %32 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %33 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  %34 = call i32 @intel_reserve_shared_dplls(%struct.intel_atomic_state* %31, %struct.intel_crtc* %32, %struct.intel_encoder* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %27
  %37 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %38 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @pipe_name(i32 %39)
  %41 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %46

44:                                               ; preds = %27
  br label %45

45:                                               ; preds = %44, %23
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %36
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_atomic_state* @to_intel_atomic_state(i32) #1

declare dso_local i32 @intel_crtc_has_type(%struct.intel_crtc_state*, i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local %struct.intel_encoder* @intel_get_crtc_new_encoder(%struct.intel_atomic_state*, %struct.intel_crtc_state*) #1

declare dso_local i32 @intel_reserve_shared_dplls(%struct.intel_atomic_state*, %struct.intel_crtc*, %struct.intel_encoder*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @pipe_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
