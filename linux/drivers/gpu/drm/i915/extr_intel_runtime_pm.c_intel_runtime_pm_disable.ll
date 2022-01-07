; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_runtime_pm.c_intel_runtime_pm_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_runtime_pm.c_intel_runtime_pm_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_runtime_pm = type { i32, %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"Failed to pass rpm ownership back to core\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_runtime_pm_disable(%struct.intel_runtime_pm* %0) #0 {
  %2 = alloca %struct.intel_runtime_pm*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.intel_runtime_pm* %0, %struct.intel_runtime_pm** %2, align 8
  %4 = load %struct.intel_runtime_pm*, %struct.intel_runtime_pm** %2, align 8
  %5 = getelementptr inbounds %struct.intel_runtime_pm, %struct.intel_runtime_pm* %4, i32 0, i32 1
  %6 = load %struct.device*, %struct.device** %5, align 8
  store %struct.device* %6, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call i64 @pm_runtime_get_sync(%struct.device* %7)
  %9 = icmp slt i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @WARN(i32 %10, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = call i32 @pm_runtime_dont_use_autosuspend(%struct.device* %12)
  %14 = load %struct.intel_runtime_pm*, %struct.intel_runtime_pm** %2, align 8
  %15 = getelementptr inbounds %struct.intel_runtime_pm, %struct.intel_runtime_pm* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %3, align 8
  %20 = call i32 @pm_runtime_put(%struct.device* %19)
  br label %21

21:                                               ; preds = %18, %1
  ret void
}

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i64 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @pm_runtime_dont_use_autosuspend(%struct.device*) #1

declare dso_local i32 @pm_runtime_put(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
