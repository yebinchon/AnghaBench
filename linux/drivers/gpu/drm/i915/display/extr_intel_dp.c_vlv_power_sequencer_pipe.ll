; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_vlv_power_sequencer_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_vlv_power_sequencer_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i64, i64 }
%struct.drm_i915_private = type { i32 }
%struct.intel_digital_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@INVALID_PIPE = common dso_local global i64 0, align 8
@PIPE_A = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"picked pipe %c power sequencer for port %c\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_dp*)* @vlv_power_sequencer_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlv_power_sequencer_pipe(%struct.intel_dp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_dp*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_digital_port*, align 8
  %6 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %3, align 8
  %7 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %8 = call %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp* %7)
  store %struct.drm_i915_private* %8, %struct.drm_i915_private** %4, align 8
  %9 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %10 = call %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp* %9)
  store %struct.intel_digital_port* %10, %struct.intel_digital_port** %5, align 8
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %12 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %11, i32 0, i32 0
  %13 = call i32 @lockdep_assert_held(i32* %12)
  %14 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %15 = call i32 @intel_dp_is_edp(%struct.intel_dp* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @WARN_ON(i32 %18)
  %20 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %21 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @INVALID_PIPE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %1
  %26 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %27 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %30 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  br label %33

33:                                               ; preds = %25, %1
  %34 = phi i1 [ false, %1 ], [ %32, %25 ]
  %35 = zext i1 %34 to i32
  %36 = call i64 @WARN_ON(i32 %35)
  %37 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %38 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @INVALID_PIPE, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %33
  %43 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %44 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %2, align 4
  br label %88

47:                                               ; preds = %33
  %48 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %49 = call i32 @vlv_find_free_pps(%struct.drm_i915_private* %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = zext i32 %50 to i64
  %52 = load i64, i64* @INVALID_PIPE, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i64 @WARN_ON(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = load i32, i32* @PIPE_A, align 4
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %57, %47
  %60 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @vlv_steal_power_sequencer(%struct.drm_i915_private* %60, i32 %61)
  %63 = load i32, i32* %6, align 4
  %64 = zext i32 %63 to i64
  %65 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %66 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  %67 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %68 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = call i32 @pipe_name(i32 %70)
  %72 = load %struct.intel_digital_port*, %struct.intel_digital_port** %5, align 8
  %73 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @port_name(i32 %75)
  %77 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %76)
  %78 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %79 = call i32 @intel_dp_init_panel_power_sequencer(%struct.intel_dp* %78)
  %80 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %81 = call i32 @intel_dp_init_panel_power_sequencer_registers(%struct.intel_dp* %80, i32 1)
  %82 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %83 = call i32 @vlv_power_sequencer_kick(%struct.intel_dp* %82)
  %84 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %85 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %59, %42
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp*) #1

declare dso_local %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @intel_dp_is_edp(%struct.intel_dp*) #1

declare dso_local i32 @vlv_find_free_pps(%struct.drm_i915_private*) #1

declare dso_local i32 @vlv_steal_power_sequencer(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

declare dso_local i32 @pipe_name(i32) #1

declare dso_local i32 @port_name(i32) #1

declare dso_local i32 @intel_dp_init_panel_power_sequencer(%struct.intel_dp*) #1

declare dso_local i32 @intel_dp_init_panel_power_sequencer_registers(%struct.intel_dp*, i32) #1

declare dso_local i32 @vlv_power_sequencer_kick(%struct.intel_dp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
