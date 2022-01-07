; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_vlv_detach_power_sequencer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_vlv_detach_power_sequencer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32, i64 }
%struct.intel_digital_port = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@INVALID_PIPE = common dso_local global i64 0, align 8
@PIPE_A = common dso_local global i32 0, align 4
@PIPE_B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"detaching pipe %c power sequencer from port %c\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_dp*)* @vlv_detach_power_sequencer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlv_detach_power_sequencer(%struct.intel_dp* %0) #0 {
  %2 = alloca %struct.intel_dp*, align 8
  %3 = alloca %struct.intel_digital_port*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %2, align 8
  %7 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %8 = call %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp* %7)
  store %struct.intel_digital_port* %8, %struct.intel_digital_port** %3, align 8
  %9 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %10 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.drm_i915_private* @to_i915(i32 %13)
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %4, align 8
  %15 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %16 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @PP_ON_DELAYS(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %21 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @INVALID_PIPE, align 8
  %24 = icmp ne i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @WARN_ON(i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @PIPE_A, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %1
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @PIPE_B, align 4
  %33 = icmp ne i32 %31, %32
  br label %34

34:                                               ; preds = %30, %1
  %35 = phi i1 [ false, %1 ], [ %33, %30 ]
  %36 = zext i1 %35 to i32
  %37 = call i64 @WARN_ON(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %59

40:                                               ; preds = %34
  %41 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %42 = call i32 @edp_panel_vdd_off_sync(%struct.intel_dp* %41)
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @pipe_name(i32 %43)
  %45 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %46 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @port_name(i32 %48)
  %50 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %49)
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @I915_WRITE(i32 %51, i32 0)
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @POSTING_READ(i32 %53)
  %55 = load i64, i64* @INVALID_PIPE, align 8
  %56 = trunc i64 %55 to i32
  %57 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %58 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  br label %59

59:                                               ; preds = %40, %39
  ret void
}

declare dso_local %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp*) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @PP_ON_DELAYS(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @edp_panel_vdd_off_sync(%struct.intel_dp*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

declare dso_local i32 @pipe_name(i32) #1

declare dso_local i32 @port_name(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
