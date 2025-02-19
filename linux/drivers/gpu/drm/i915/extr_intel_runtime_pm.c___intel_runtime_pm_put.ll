; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_runtime_pm.c___intel_runtime_pm_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_runtime_pm.c___intel_runtime_pm_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_runtime_pm = type { %struct.device* }
%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_runtime_pm*, i32, i32)* @__intel_runtime_pm_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__intel_runtime_pm_put(%struct.intel_runtime_pm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.intel_runtime_pm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  store %struct.intel_runtime_pm* %0, %struct.intel_runtime_pm** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.intel_runtime_pm*, %struct.intel_runtime_pm** %4, align 8
  %9 = getelementptr inbounds %struct.intel_runtime_pm, %struct.intel_runtime_pm* %8, i32 0, i32 0
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %7, align 8
  %11 = load %struct.intel_runtime_pm*, %struct.intel_runtime_pm** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @untrack_intel_runtime_pm_wakeref(%struct.intel_runtime_pm* %11, i32 %12)
  %14 = load %struct.intel_runtime_pm*, %struct.intel_runtime_pm** %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @intel_runtime_pm_release(%struct.intel_runtime_pm* %14, i32 %15)
  %17 = load %struct.device*, %struct.device** %7, align 8
  %18 = call i32 @pm_runtime_mark_last_busy(%struct.device* %17)
  %19 = load %struct.device*, %struct.device** %7, align 8
  %20 = call i32 @pm_runtime_put_autosuspend(%struct.device* %19)
  ret void
}

declare dso_local i32 @untrack_intel_runtime_pm_wakeref(%struct.intel_runtime_pm*, i32) #1

declare dso_local i32 @intel_runtime_pm_release(%struct.intel_runtime_pm*, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
