; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_extended_receiver_capabilities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_extended_receiver_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32*, i32 }

@DP_TRAINING_AUX_RD_INTERVAL = common dso_local global i64 0, align 8
@DP_EXTENDED_RECEIVER_CAP_FIELD_PRESENT = common dso_local global i32 0, align 4
@DP_DP13_DPCD_REV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"DPCD failed read at extended capabilities\0A\00", align 1
@DP_DPCD_REV = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"DPCD extended DPCD rev less than base DPCD rev\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Base DPCD: %*ph\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_dp*)* @intel_dp_extended_receiver_capabilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_dp_extended_receiver_capabilities(%struct.intel_dp* %0) #0 {
  %2 = alloca %struct.intel_dp*, align 8
  %3 = alloca [6 x i32], align 16
  store %struct.intel_dp* %0, %struct.intel_dp** %2, align 8
  %4 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %5 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = load i64, i64* @DP_TRAINING_AUX_RD_INTERVAL, align 8
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @DP_EXTENDED_RECEIVER_CAP_FIELD_PRESENT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %55

14:                                               ; preds = %1
  %15 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %16 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %15, i32 0, i32 1
  %17 = load i32, i32* @DP_DP13_DPCD_REV, align 4
  %18 = bitcast [6 x i32]* %3 to i32**
  %19 = call i32 @drm_dp_dpcd_read(i32* %16, i32 %17, i32** %18, i32 24)
  %20 = sext i32 %19 to i64
  %21 = icmp ne i64 %20, 24
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %55

24:                                               ; preds = %14
  %25 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %26 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @DP_DPCD_REV, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* @DP_DPCD_REV, align 8
  %32 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %30, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %55

37:                                               ; preds = %24
  %38 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %39 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  %42 = call i32 @memcmp(i32* %40, i32* %41, i32 24)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  br label %55

45:                                               ; preds = %37
  %46 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %47 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 8, i32* %48)
  %50 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %51 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  %54 = call i32 @memcpy(i32* %52, i32* %53, i32 24)
  br label %55

55:                                               ; preds = %45, %44, %35, %22, %13
  ret void
}

declare dso_local i32 @drm_dp_dpcd_read(i32*, i32, i32**, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
