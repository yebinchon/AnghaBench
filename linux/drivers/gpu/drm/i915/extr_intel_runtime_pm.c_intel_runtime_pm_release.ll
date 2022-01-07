; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_runtime_pm.c_intel_runtime_pm_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_runtime_pm.c_intel_runtime_pm_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_runtime_pm = type { i32 }

@INTEL_RPM_WAKELOCK_BIAS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_runtime_pm*, i32)* @intel_runtime_pm_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_runtime_pm_release(%struct.intel_runtime_pm* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_runtime_pm*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_runtime_pm* %0, %struct.intel_runtime_pm** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = load %struct.intel_runtime_pm*, %struct.intel_runtime_pm** %3, align 8
  %9 = call i32 @assert_rpm_wakelock_held(%struct.intel_runtime_pm* %8)
  %10 = load i32, i32* @INTEL_RPM_WAKELOCK_BIAS, align 4
  %11 = load %struct.intel_runtime_pm*, %struct.intel_runtime_pm** %3, align 8
  %12 = getelementptr inbounds %struct.intel_runtime_pm, %struct.intel_runtime_pm* %11, i32 0, i32 0
  %13 = call i32 @atomic_sub(i32 %10, i32* %12)
  br label %17

14:                                               ; preds = %2
  %15 = load %struct.intel_runtime_pm*, %struct.intel_runtime_pm** %3, align 8
  %16 = call i32 @assert_rpm_raw_wakeref_held(%struct.intel_runtime_pm* %15)
  br label %17

17:                                               ; preds = %14, %7
  %18 = load %struct.intel_runtime_pm*, %struct.intel_runtime_pm** %3, align 8
  %19 = call i32 @__intel_wakeref_dec_and_check_tracking(%struct.intel_runtime_pm* %18)
  ret void
}

declare dso_local i32 @assert_rpm_wakelock_held(%struct.intel_runtime_pm*) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

declare dso_local i32 @assert_rpm_raw_wakeref_held(%struct.intel_runtime_pm*) #1

declare dso_local i32 @__intel_wakeref_dec_and_check_tracking(%struct.intel_runtime_pm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
