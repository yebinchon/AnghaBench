; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_uc.c___uc_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_uc.c___uc_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uc = type { %struct.intel_guc }
%struct.intel_guc = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Failed to resume GuC, err=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_uc*, i32)* @__uc_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__uc_resume(%struct.intel_uc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_uc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_guc*, align 8
  %7 = alloca i32, align 4
  store %struct.intel_uc* %0, %struct.intel_uc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.intel_uc*, %struct.intel_uc** %4, align 8
  %9 = getelementptr inbounds %struct.intel_uc, %struct.intel_uc* %8, i32 0, i32 0
  store %struct.intel_guc* %9, %struct.intel_guc** %6, align 8
  %10 = load %struct.intel_guc*, %struct.intel_guc** %6, align 8
  %11 = call i32 @intel_guc_is_running(%struct.intel_guc* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %36

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.intel_guc*, %struct.intel_guc** %6, align 8
  %17 = call i32 @guc_communication_enabled(%struct.intel_guc* %16)
  %18 = icmp eq i32 %15, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @GEM_BUG_ON(i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = load %struct.intel_guc*, %struct.intel_guc** %6, align 8
  %25 = call i32 @guc_enable_communication(%struct.intel_guc* %24)
  br label %26

26:                                               ; preds = %23, %14
  %27 = load %struct.intel_guc*, %struct.intel_guc** %6, align 8
  %28 = call i32 @intel_guc_resume(%struct.intel_guc* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %36

35:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %31, %13
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @intel_guc_is_running(%struct.intel_guc*) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @guc_communication_enabled(%struct.intel_guc*) #1

declare dso_local i32 @guc_enable_communication(%struct.intel_guc*) #1

declare dso_local i32 @intel_guc_resume(%struct.intel_guc*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
