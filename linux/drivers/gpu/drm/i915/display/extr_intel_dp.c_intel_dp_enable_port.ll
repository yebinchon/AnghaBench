; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_enable_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_enable_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32, i32 }
%struct.intel_crtc_state = type { i64 }
%struct.drm_i915_private = type { i32 }

@DP_TRAINING_PATTERN_1 = common dso_local global i32 0, align 4
@DP_PORT_EN = common dso_local global i32 0, align 4
@DP_AUDIO_OUTPUT_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_dp*, %struct.intel_crtc_state*)* @intel_dp_enable_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_dp_enable_port(%struct.intel_dp* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_dp*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_dp* %0, %struct.intel_dp** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %6 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %7 = call %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp* %6)
  store %struct.drm_i915_private* %7, %struct.drm_i915_private** %5, align 8
  %8 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %9 = load i32, i32* @DP_TRAINING_PATTERN_1, align 4
  %10 = call i32 @intel_dp_program_link_training_pattern(%struct.intel_dp* %8, i32 %9)
  %11 = load i32, i32* @DP_PORT_EN, align 4
  %12 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %13 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %17 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load i32, i32* @DP_AUDIO_OUTPUT_ENABLE, align 4
  %22 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %23 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %20, %2
  %27 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %28 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %31 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @I915_WRITE(i32 %29, i32 %32)
  %34 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %35 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @POSTING_READ(i32 %36)
  ret void
}

declare dso_local %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp*) #1

declare dso_local i32 @intel_dp_program_link_training_pattern(%struct.intel_dp*, i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
