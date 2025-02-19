; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_psr.c_intel_dp_get_su_x_granulartiy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_psr.c_intel_dp_get_su_x_granulartiy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32*, i32 }

@DP_PSR2_SU_GRANULARITY_REQUIRED = common dso_local global i32 0, align 4
@DP_PSR2_SU_X_GRANULARITY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Unable to read DP_PSR2_SU_X_GRANULARITY\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_dp*)* @intel_dp_get_su_x_granulartiy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_dp_get_su_x_granulartiy(%struct.intel_dp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_dp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %3, align 8
  %6 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %7 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @DP_PSR2_SU_GRANULARITY_REQUIRED, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 4, i32* %2, align 4
  br label %33

15:                                               ; preds = %1
  %16 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %17 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %16, i32 0, i32 1
  %18 = load i32, i32* @DP_PSR2_SU_X_GRANULARITY, align 4
  %19 = call i32 @drm_dp_dpcd_read(i32* %17, i32 %18, i32* %4, i32 2)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 2
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %15
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 2
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %24
  store i32 4, i32* %4, align 4
  br label %31

31:                                               ; preds = %30, %27
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %14
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @drm_dp_dpcd_read(i32*, i32, i32*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
