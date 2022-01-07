; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_submission.c_reserve_doorbell.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_submission.c_reserve_doorbell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_guc_client = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GUC_DOORBELL_INVALID = common dso_local global i64 0, align 8
@GUC_NUM_DOORBELLS = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"client %u (high prio=%s) reserved doorbell: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_guc_client*)* @reserve_doorbell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reserve_doorbell(%struct.intel_guc_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_guc_client*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.intel_guc_client* %0, %struct.intel_guc_client** %3, align 8
  %7 = load %struct.intel_guc_client*, %struct.intel_guc_client** %3, align 8
  %8 = getelementptr inbounds %struct.intel_guc_client, %struct.intel_guc_client* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @GUC_DOORBELL_INVALID, align 8
  %11 = icmp ne i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @GEM_BUG_ON(i32 %12)
  store i64 0, i64* %4, align 8
  %14 = load i32, i32* @GUC_NUM_DOORBELLS, align 4
  %15 = sdiv i32 %14, 2
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %5, align 8
  %17 = load %struct.intel_guc_client*, %struct.intel_guc_client** %3, align 8
  %18 = call i64 @is_high_priority(%struct.intel_guc_client* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load i64, i64* %5, align 8
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = add i64 %23, %22
  store i64 %24, i64* %5, align 8
  br label %25

25:                                               ; preds = %20, %1
  %26 = load %struct.intel_guc_client*, %struct.intel_guc_client** %3, align 8
  %27 = getelementptr inbounds %struct.intel_guc_client, %struct.intel_guc_client* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %4, align 8
  %33 = call i64 @find_next_zero_bit(i32 %30, i64 %31, i64 %32)
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %25
  %38 = load i32, i32* @ENOSPC, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %59

40:                                               ; preds = %25
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.intel_guc_client*, %struct.intel_guc_client** %3, align 8
  %43 = getelementptr inbounds %struct.intel_guc_client, %struct.intel_guc_client* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @__set_bit(i64 %41, i32 %46)
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.intel_guc_client*, %struct.intel_guc_client** %3, align 8
  %50 = getelementptr inbounds %struct.intel_guc_client, %struct.intel_guc_client* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.intel_guc_client*, %struct.intel_guc_client** %3, align 8
  %52 = getelementptr inbounds %struct.intel_guc_client, %struct.intel_guc_client* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.intel_guc_client*, %struct.intel_guc_client** %3, align 8
  %55 = call i64 @is_high_priority(%struct.intel_guc_client* %54)
  %56 = call i32 @yesno(i64 %55)
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %56, i64 %57)
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %40, %37
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i64 @is_high_priority(%struct.intel_guc_client*) #1

declare dso_local i64 @find_next_zero_bit(i32, i64, i64) #1

declare dso_local i32 @__set_bit(i64, i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, i32, i64) #1

declare dso_local i32 @yesno(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
