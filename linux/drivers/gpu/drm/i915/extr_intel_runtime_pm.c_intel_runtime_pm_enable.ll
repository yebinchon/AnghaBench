; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_runtime_pm.c_intel_runtime_pm_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_runtime_pm.c_intel_runtime_pm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_runtime_pm = type { i32, %struct.device* }
%struct.device = type { i32 }

@DPM_FLAG_NEVER_SKIP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"pm_runtime_get_sync() failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_runtime_pm_enable(%struct.intel_runtime_pm* %0) #0 {
  %2 = alloca %struct.intel_runtime_pm*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_runtime_pm* %0, %struct.intel_runtime_pm** %2, align 8
  %5 = load %struct.intel_runtime_pm*, %struct.intel_runtime_pm** %2, align 8
  %6 = getelementptr inbounds %struct.intel_runtime_pm, %struct.intel_runtime_pm* %5, i32 0, i32 1
  %7 = load %struct.device*, %struct.device** %6, align 8
  store %struct.device* %7, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = load i32, i32* @DPM_FLAG_NEVER_SKIP, align 4
  %10 = call i32 @dev_pm_set_driver_flags(%struct.device* %8, i32 %9)
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call i32 @pm_runtime_set_autosuspend_delay(%struct.device* %11, i32 10000)
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = call i32 @pm_runtime_mark_last_busy(%struct.device* %13)
  %15 = load %struct.intel_runtime_pm*, %struct.intel_runtime_pm** %2, align 8
  %16 = getelementptr inbounds %struct.intel_runtime_pm, %struct.intel_runtime_pm* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = call i32 @pm_runtime_dont_use_autosuspend(%struct.device* %20)
  %22 = load %struct.device*, %struct.device** %3, align 8
  %23 = call i32 @pm_runtime_get_sync(%struct.device* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @WARN(i32 %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %32

29:                                               ; preds = %1
  %30 = load %struct.device*, %struct.device** %3, align 8
  %31 = call i32 @pm_runtime_use_autosuspend(%struct.device* %30)
  br label %32

32:                                               ; preds = %29, %19
  %33 = load %struct.device*, %struct.device** %3, align 8
  %34 = call i32 @pm_runtime_put_autosuspend(%struct.device* %33)
  ret void
}

declare dso_local i32 @dev_pm_set_driver_flags(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(%struct.device*) #1

declare dso_local i32 @pm_runtime_dont_use_autosuspend(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
