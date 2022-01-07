; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_print_rates.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_print_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32, i32, i32, i32, i32, i32 }

@drm_debug = common dso_local global i32 0, align 4
@DRM_UT_KMS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"source rates: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"sink rates: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"common rates: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_dp*)* @intel_dp_print_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_dp_print_rates(%struct.intel_dp* %0) #0 {
  %2 = alloca %struct.intel_dp*, align 8
  %3 = alloca [128 x i8], align 16
  store %struct.intel_dp* %0, %struct.intel_dp** %2, align 8
  %4 = load i32, i32* @drm_debug, align 4
  %5 = load i32, i32* @DRM_UT_KMS, align 4
  %6 = and i32 %4, %5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %40

9:                                                ; preds = %1
  %10 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %11 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %12 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %15 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @snprintf_int_array(i8* %10, i32 128, i32 %13, i32 %16)
  %18 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %19 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %21 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %22 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %25 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @snprintf_int_array(i8* %20, i32 128, i32 %23, i32 %26)
  %28 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %29 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  %30 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %31 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %32 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %35 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @snprintf_int_array(i8* %30, i32 128, i32 %33, i32 %36)
  %38 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %39 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %38)
  br label %40

40:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @snprintf_int_array(i8*, i32, i32, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
