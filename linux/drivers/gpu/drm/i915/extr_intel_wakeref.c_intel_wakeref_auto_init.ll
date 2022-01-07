; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_wakeref.c_intel_wakeref_auto_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_wakeref.c_intel_wakeref_auto_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_wakeref_auto = type { %struct.intel_runtime_pm*, i64, i32, i32, i32 }
%struct.intel_runtime_pm = type { i32 }

@wakeref_auto_timeout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_wakeref_auto_init(%struct.intel_wakeref_auto* %0, %struct.intel_runtime_pm* %1) #0 {
  %3 = alloca %struct.intel_wakeref_auto*, align 8
  %4 = alloca %struct.intel_runtime_pm*, align 8
  store %struct.intel_wakeref_auto* %0, %struct.intel_wakeref_auto** %3, align 8
  store %struct.intel_runtime_pm* %1, %struct.intel_runtime_pm** %4, align 8
  %5 = load %struct.intel_wakeref_auto*, %struct.intel_wakeref_auto** %3, align 8
  %6 = getelementptr inbounds %struct.intel_wakeref_auto, %struct.intel_wakeref_auto* %5, i32 0, i32 4
  %7 = call i32 @spin_lock_init(i32* %6)
  %8 = load %struct.intel_wakeref_auto*, %struct.intel_wakeref_auto** %3, align 8
  %9 = getelementptr inbounds %struct.intel_wakeref_auto, %struct.intel_wakeref_auto* %8, i32 0, i32 3
  %10 = load i32, i32* @wakeref_auto_timeout, align 4
  %11 = call i32 @timer_setup(i32* %9, i32 %10, i32 0)
  %12 = load %struct.intel_wakeref_auto*, %struct.intel_wakeref_auto** %3, align 8
  %13 = getelementptr inbounds %struct.intel_wakeref_auto, %struct.intel_wakeref_auto* %12, i32 0, i32 2
  %14 = call i32 @refcount_set(i32* %13, i32 0)
  %15 = load %struct.intel_wakeref_auto*, %struct.intel_wakeref_auto** %3, align 8
  %16 = getelementptr inbounds %struct.intel_wakeref_auto, %struct.intel_wakeref_auto* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.intel_runtime_pm*, %struct.intel_runtime_pm** %4, align 8
  %18 = load %struct.intel_wakeref_auto*, %struct.intel_wakeref_auto** %3, align 8
  %19 = getelementptr inbounds %struct.intel_wakeref_auto, %struct.intel_wakeref_auto* %18, i32 0, i32 0
  store %struct.intel_runtime_pm* %17, %struct.intel_runtime_pm** %19, align 8
  ret void
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
