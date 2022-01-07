; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_vlv_init_panel_power_sequencer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_vlv_init_panel_power_sequencer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.intel_crtc_state = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_dp = type { i64, i64 }
%struct.intel_crtc = type { i64 }

@INVALID_PIPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"initializing pipe %c power sequencer for port %c\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, %struct.intel_crtc_state*)* @vlv_init_panel_power_sequencer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlv_init_panel_power_sequencer(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_encoder*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.intel_dp*, align 8
  %7 = alloca %struct.intel_crtc*, align 8
  store %struct.intel_encoder* %0, %struct.intel_encoder** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %8 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %9 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.drm_i915_private* @to_i915(i32 %11)
  store %struct.drm_i915_private* %12, %struct.drm_i915_private** %5, align 8
  %13 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %14 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %13, i32 0, i32 1
  %15 = call %struct.intel_dp* @enc_to_intel_dp(%struct.TYPE_4__* %14)
  store %struct.intel_dp* %15, %struct.intel_dp** %6, align 8
  %16 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %17 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.intel_crtc* @to_intel_crtc(i32 %19)
  store %struct.intel_crtc* %20, %struct.intel_crtc** %7, align 8
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %22 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %21, i32 0, i32 0
  %23 = call i32 @lockdep_assert_held(i32* %22)
  %24 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %25 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @INVALID_PIPE, align 8
  %28 = icmp ne i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @WARN_ON(i32 %29)
  %31 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %32 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @INVALID_PIPE, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %2
  %37 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %38 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.intel_crtc*, %struct.intel_crtc** %7, align 8
  %41 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %39, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %46 = call i32 @vlv_detach_power_sequencer(%struct.intel_dp* %45)
  br label %47

47:                                               ; preds = %44, %36, %2
  %48 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %49 = load %struct.intel_crtc*, %struct.intel_crtc** %7, align 8
  %50 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @vlv_steal_power_sequencer(%struct.drm_i915_private* %48, i64 %51)
  %53 = load %struct.intel_crtc*, %struct.intel_crtc** %7, align 8
  %54 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %57 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %59 = call i32 @intel_dp_is_edp(%struct.intel_dp* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %47
  br label %81

62:                                               ; preds = %47
  %63 = load %struct.intel_crtc*, %struct.intel_crtc** %7, align 8
  %64 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %67 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  %68 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %69 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @pipe_name(i64 %70)
  %72 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %73 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @port_name(i32 %74)
  %76 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %75)
  %77 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %78 = call i32 @intel_dp_init_panel_power_sequencer(%struct.intel_dp* %77)
  %79 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %80 = call i32 @intel_dp_init_panel_power_sequencer_registers(%struct.intel_dp* %79, i32 1)
  br label %81

81:                                               ; preds = %62, %61
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_dp* @enc_to_intel_dp(%struct.TYPE_4__*) #1

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @vlv_detach_power_sequencer(%struct.intel_dp*) #1

declare dso_local i32 @vlv_steal_power_sequencer(%struct.drm_i915_private*, i64) #1

declare dso_local i32 @intel_dp_is_edp(%struct.intel_dp*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

declare dso_local i32 @pipe_name(i64) #1

declare dso_local i32 @port_name(i32) #1

declare dso_local i32 @intel_dp_init_panel_power_sequencer(%struct.intel_dp*) #1

declare dso_local i32 @intel_dp_init_panel_power_sequencer_registers(%struct.intel_dp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
