; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_vlv_initial_power_sequencer_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_vlv_initial_power_sequencer_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i64 }
%struct.drm_i915_private = type { i32 }
%struct.intel_digital_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@vlv_pipe_has_pp_on = common dso_local global i32 0, align 4
@INVALID_PIPE = common dso_local global i64 0, align 8
@vlv_pipe_has_vdd_on = common dso_local global i32 0, align 4
@vlv_pipe_any = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"no initial power sequencer for port %c\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"initial power sequencer for port %c: pipe %c\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_dp*)* @vlv_initial_power_sequencer_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlv_initial_power_sequencer_setup(%struct.intel_dp* %0) #0 {
  %2 = alloca %struct.intel_dp*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_digital_port*, align 8
  %5 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %2, align 8
  %6 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %7 = call %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp* %6)
  store %struct.drm_i915_private* %7, %struct.drm_i915_private** %3, align 8
  %8 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %9 = call %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp* %8)
  store %struct.intel_digital_port* %9, %struct.intel_digital_port** %4, align 8
  %10 = load %struct.intel_digital_port*, %struct.intel_digital_port** %4, align 8
  %11 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %15 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %14, i32 0, i32 0
  %16 = call i32 @lockdep_assert_held(i32* %15)
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @vlv_pipe_has_pp_on, align 4
  %20 = call i8* @vlv_initial_pps_pipe(%struct.drm_i915_private* %17, i32 %18, i32 %19)
  %21 = ptrtoint i8* %20 to i64
  %22 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %23 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %25 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @INVALID_PIPE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %1
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @vlv_pipe_has_vdd_on, align 4
  %33 = call i8* @vlv_initial_pps_pipe(%struct.drm_i915_private* %30, i32 %31, i32 %32)
  %34 = ptrtoint i8* %33 to i64
  %35 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %36 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %29, %1
  %38 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %39 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @INVALID_PIPE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %37
  %44 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @vlv_pipe_any, align 4
  %47 = call i8* @vlv_initial_pps_pipe(%struct.drm_i915_private* %44, i32 %45, i32 %46)
  %48 = ptrtoint i8* %47 to i64
  %49 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %50 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %43, %37
  %52 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %53 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @INVALID_PIPE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @port_name(i32 %58)
  %60 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %73

61:                                               ; preds = %51
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @port_name(i32 %62)
  %64 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %65 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @pipe_name(i64 %66)
  %68 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %67)
  %69 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %70 = call i32 @intel_dp_init_panel_power_sequencer(%struct.intel_dp* %69)
  %71 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %72 = call i32 @intel_dp_init_panel_power_sequencer_registers(%struct.intel_dp* %71, i32 0)
  br label %73

73:                                               ; preds = %61, %57
  ret void
}

declare dso_local %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp*) #1

declare dso_local %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i8* @vlv_initial_pps_pipe(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, ...) #1

declare dso_local i32 @port_name(i32) #1

declare dso_local i32 @pipe_name(i64) #1

declare dso_local i32 @intel_dp_init_panel_power_sequencer(%struct.intel_dp*) #1

declare dso_local i32 @intel_dp_init_panel_power_sequencer_registers(%struct.intel_dp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
