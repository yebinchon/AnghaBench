; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_uc.c_intel_uc_runtime_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_uc.c_intel_uc_runtime_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uc = type { %struct.intel_guc }
%struct.intel_guc = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Failed to suspend GuC, err=%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_uc_runtime_suspend(%struct.intel_uc* %0) #0 {
  %2 = alloca %struct.intel_uc*, align 8
  %3 = alloca %struct.intel_guc*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_uc* %0, %struct.intel_uc** %2, align 8
  %5 = load %struct.intel_uc*, %struct.intel_uc** %2, align 8
  %6 = getelementptr inbounds %struct.intel_uc, %struct.intel_uc* %5, i32 0, i32 0
  store %struct.intel_guc* %6, %struct.intel_guc** %3, align 8
  %7 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %8 = call i32 @intel_guc_is_running(%struct.intel_guc* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %22

11:                                               ; preds = %1
  %12 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %13 = call i32 @intel_guc_suspend(%struct.intel_guc* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %16, %11
  %20 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %21 = call i32 @guc_disable_communication(%struct.intel_guc* %20)
  br label %22

22:                                               ; preds = %19, %10
  ret void
}

declare dso_local i32 @intel_guc_is_running(%struct.intel_guc*) #1

declare dso_local i32 @intel_guc_suspend(%struct.intel_guc*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32) #1

declare dso_local i32 @guc_disable_communication(%struct.intel_guc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
