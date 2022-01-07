; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_selftest_guc.c_check_all_doorbells.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_selftest_guc.c_check_all_doorbells.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_guc = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Max number of doorbells: %d\00", align 1
@GUC_NUM_DOORBELLS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"doorbell %d, not ok\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_guc*)* @check_all_doorbells to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_all_doorbells(%struct.intel_guc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_guc*, align 8
  %4 = alloca i64, align 8
  store %struct.intel_guc* %0, %struct.intel_guc** %3, align 8
  %5 = load i64, i64* @GUC_NUM_DOORBELLS, align 8
  %6 = call i32 @pr_info_once(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %5)
  store i64 0, i64* %4, align 8
  br label %7

7:                                                ; preds = %22, %1
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @GUC_NUM_DOORBELLS, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %25

11:                                               ; preds = %7
  %12 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @doorbell_ok(%struct.intel_guc* %12, i64 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %17)
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %26

21:                                               ; preds = %11
  br label %22

22:                                               ; preds = %21
  %23 = load i64, i64* %4, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %4, align 8
  br label %7

25:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %16
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @pr_info_once(i8*, i64) #1

declare dso_local i32 @doorbell_ok(%struct.intel_guc*, i64) #1

declare dso_local i32 @pr_err(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
