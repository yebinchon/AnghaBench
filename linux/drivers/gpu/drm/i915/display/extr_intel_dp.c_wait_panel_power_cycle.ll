; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_wait_panel_power_cycle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_wait_panel_power_cycle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i64, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Wait for panel power cycle\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@IDLE_CYCLE_MASK = common dso_local global i32 0, align 4
@IDLE_CYCLE_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_dp*)* @wait_panel_power_cycle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait_panel_power_cycle(%struct.intel_dp* %0) #0 {
  %2 = alloca %struct.intel_dp*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.intel_dp* %0, %struct.intel_dp** %2, align 8
  %5 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 (...) @ktime_get_boottime()
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %9 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @ktime_ms_delta(i32 %7, i32 %10)
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %14 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %12, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load i32, i32* @jiffies, align 4
  %19 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %20 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %4, align 8
  %23 = sub nsw i64 %21, %22
  %24 = call i32 @wait_remaining_ms_from_jiffies(i32 %18, i64 %23)
  br label %25

25:                                               ; preds = %17, %1
  %26 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %27 = load i32, i32* @IDLE_CYCLE_MASK, align 4
  %28 = load i32, i32* @IDLE_CYCLE_VALUE, align 4
  %29 = call i32 @wait_panel_status(%struct.intel_dp* %26, i32 %27, i32 %28)
  ret void
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @ktime_get_boottime(...) #1

declare dso_local i64 @ktime_ms_delta(i32, i32) #1

declare dso_local i32 @wait_remaining_ms_from_jiffies(i32, i64) #1

declare dso_local i32 @wait_panel_status(%struct.intel_dp*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
