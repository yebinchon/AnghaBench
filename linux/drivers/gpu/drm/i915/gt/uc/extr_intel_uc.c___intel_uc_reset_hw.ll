; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_uc.c___intel_uc_reset_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_uc.c___intel_uc_reset_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uc = type { i32 }
%struct.intel_gt = type { i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to reset GuC, ret = %d\0A\00", align 1
@GUC_STATUS = common dso_local global i32 0, align 4
@GS_MIA_IN_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"GuC status: 0x%x, MIA core expected to be in reset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_uc*)* @__intel_uc_reset_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__intel_uc_reset_hw(%struct.intel_uc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_uc*, align 8
  %4 = alloca %struct.intel_gt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.intel_uc* %0, %struct.intel_uc** %3, align 8
  %7 = load %struct.intel_uc*, %struct.intel_uc** %3, align 8
  %8 = call %struct.intel_gt* @uc_to_gt(%struct.intel_uc* %7)
  store %struct.intel_gt* %8, %struct.intel_gt** %4, align 8
  %9 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %10 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @ENXIO, align 4
  %13 = sub nsw i32 0, %12
  %14 = call i32 @i915_inject_load_error(i32 %11, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %43

19:                                               ; preds = %1
  %20 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %21 = call i32 @intel_reset_guc(%struct.intel_gt* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %2, align 4
  br label %43

28:                                               ; preds = %19
  %29 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %30 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @GUC_STATUS, align 4
  %33 = call i32 @intel_uncore_read(i32 %31, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @GS_MIA_IN_RESET, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @WARN(i32 %39, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %28, %24, %17
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.intel_gt* @uc_to_gt(%struct.intel_uc*) #1

declare dso_local i32 @i915_inject_load_error(i32, i32) #1

declare dso_local i32 @intel_reset_guc(%struct.intel_gt*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @intel_uncore_read(i32, i32) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
