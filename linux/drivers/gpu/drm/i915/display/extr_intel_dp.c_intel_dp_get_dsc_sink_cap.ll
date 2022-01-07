; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_get_dsc_sink_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_get_dsc_sink_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32*, i64*, i32, i32, i32 }

@DP_DPCD_REV = common dso_local global i64 0, align 8
@DP_EDP_14 = common dso_local global i64 0, align 8
@DP_DSC_SUPPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to read DPCD register 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"DSC DPCD: %*ph\0A\00", align 1
@DP_FEC_CAPABILITY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to read FEC DPCD register\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"FEC CAPABILITY: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_dp*)* @intel_dp_get_dsc_sink_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_dp_get_dsc_sink_cap(%struct.intel_dp* %0) #0 {
  %2 = alloca %struct.intel_dp*, align 8
  store %struct.intel_dp* %0, %struct.intel_dp** %2, align 8
  %3 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %4 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %3, i32 0, i32 4
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @memset(i32 %5, i32 0, i32 4)
  %7 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %8 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %7, i32 0, i32 2
  store i32 0, i32* %8, align 8
  %9 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %10 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* @DP_DPCD_REV, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = icmp sge i32 %14, 20
  br i1 %15, label %24, label %16

16:                                               ; preds = %1
  %17 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %18 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DP_EDP_14, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %24, label %59

24:                                               ; preds = %16, %1
  %25 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %26 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %25, i32 0, i32 3
  %27 = load i32, i32* @DP_DSC_SUPPORT, align 4
  %28 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %29 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @drm_dp_dpcd_read(i32* %26, i32 %27, i32 %30, i32 4)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load i32, i32* @DP_DSC_SUPPORT, align 4
  %35 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %33, %24
  %37 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %38 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 4, i32 %39)
  %41 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %42 = call i32 @intel_dp_is_edp(%struct.intel_dp* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %36
  %45 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %46 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %45, i32 0, i32 3
  %47 = load i32, i32* @DP_FEC_CAPABILITY, align 4
  %48 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %49 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %48, i32 0, i32 2
  %50 = call i64 @drm_dp_dpcd_readb(i32* %46, i32 %47, i32* %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %44, %36
  %55 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %56 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %54, %16
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @drm_dp_dpcd_read(i32*, i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, ...) #1

declare dso_local i32 @intel_dp_is_edp(%struct.intel_dp*) #1

declare dso_local i64 @drm_dp_dpcd_readb(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
