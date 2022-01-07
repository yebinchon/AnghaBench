; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc.c_intel_guc_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc.c_intel_guc_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_guc = type { i32 }
%struct.intel_uncore = type { i32 }
%struct.TYPE_2__ = type { %struct.intel_uncore* }

@INTEL_GUC_ACTION_ENTER_S_STATE = common dso_local global i64 0, align 8
@GUC_POWER_D1 = common dso_local global i64 0, align 8
@INTEL_GUC_SLEEP_STATE_INVALID_MASK = common dso_local global i32 0, align 4
@INTEL_GUC_SLEEP_STATE_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"GuC failed to change sleep state. action=0x%x, err=%u\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_guc_suspend(%struct.intel_guc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_guc*, align 8
  %4 = alloca %struct.intel_uncore*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca [2 x i64], align 16
  store %struct.intel_guc* %0, %struct.intel_guc** %3, align 8
  %8 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %9 = call %struct.TYPE_2__* @guc_to_gt(%struct.intel_guc* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.intel_uncore*, %struct.intel_uncore** %10, align 8
  store %struct.intel_uncore* %11, %struct.intel_uncore** %4, align 8
  %12 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %13 = load i64, i64* @INTEL_GUC_ACTION_ENTER_S_STATE, align 8
  store i64 %13, i64* %12, align 8
  %14 = getelementptr inbounds i64, i64* %12, i64 1
  %15 = load i64, i64* @GUC_POWER_D1, align 8
  store i64 %15, i64* %14, align 8
  %16 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %17 = call i32 @SOFT_SCRATCH(i32 14)
  %18 = load i32, i32* @INTEL_GUC_SLEEP_STATE_INVALID_MASK, align 4
  %19 = call i32 @intel_uncore_write(%struct.intel_uncore* %16, i32 %17, i32 %18)
  %20 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %21 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %22 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %23 = call i32 @ARRAY_SIZE(i64* %22)
  %24 = call i32 @intel_guc_send(%struct.intel_guc* %20, i64* %21, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %50

29:                                               ; preds = %1
  %30 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %31 = call i32 @SOFT_SCRATCH(i32 14)
  %32 = load i32, i32* @INTEL_GUC_SLEEP_STATE_INVALID_MASK, align 4
  %33 = call i32 @__intel_wait_for_register(%struct.intel_uncore* %30, i32 %31, i32 %32, i32 0, i32 0, i32 10, i64* %6)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %50

38:                                               ; preds = %29
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @INTEL_GUC_SLEEP_STATE_SUCCESS, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %44 = load i64, i64* %43, align 16
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %44, i64 %45)
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %50

49:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %42, %36, %27
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.TYPE_2__* @guc_to_gt(%struct.intel_guc*) #1

declare dso_local i32 @intel_uncore_write(%struct.intel_uncore*, i32, i32) #1

declare dso_local i32 @SOFT_SCRATCH(i32) #1

declare dso_local i32 @intel_guc_send(%struct.intel_guc*, i64*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @__intel_wait_for_register(%struct.intel_uncore*, i32, i32, i32, i32, i32, i64*) #1

declare dso_local i32 @DRM_ERROR(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
