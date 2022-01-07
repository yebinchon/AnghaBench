; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_autotest_edid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_autotest_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { %struct.TYPE_5__, %struct.TYPE_6__, %struct.intel_connector* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.intel_connector = type { %struct.edid*, %struct.drm_connector }
%struct.edid = type { i32, i32 }
%struct.drm_connector = type { i64 }

@DP_TEST_ACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"EDID read had %d NACKs, %d DEFERs\0A\00", align 1
@INTEL_DP_RESOLUTION_FAILSAFE = common dso_local global i32 0, align 4
@DP_TEST_EDID_CHECKSUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to write EDID checksum\0A\00", align 1
@DP_TEST_EDID_CHECKSUM_WRITE = common dso_local global i32 0, align 4
@INTEL_DP_RESOLUTION_PREFERRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_dp*)* @intel_dp_autotest_edid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_dp_autotest_edid(%struct.intel_dp* %0) #0 {
  %2 = alloca %struct.intel_dp*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_connector*, align 8
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca %struct.edid*, align 8
  store %struct.intel_dp* %0, %struct.intel_dp** %2, align 8
  %7 = load i32, i32* @DP_TEST_ACK, align 4
  store i32 %7, i32* %3, align 4
  %8 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %9 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %8, i32 0, i32 2
  %10 = load %struct.intel_connector*, %struct.intel_connector** %9, align 8
  store %struct.intel_connector* %10, %struct.intel_connector** %4, align 8
  %11 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %12 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %11, i32 0, i32 1
  store %struct.drm_connector* %12, %struct.drm_connector** %5, align 8
  %13 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %14 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %13, i32 0, i32 0
  %15 = load %struct.edid*, %struct.edid** %14, align 8
  %16 = icmp eq %struct.edid* %15, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %1
  %18 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %19 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %24 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sgt i32 %26, 6
  br i1 %27, label %28, label %56

28:                                               ; preds = %22, %17, %1
  %29 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %30 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %36 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %34, %28
  %41 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %42 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %46 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %44, i32 %48)
  br label %50

50:                                               ; preds = %40, %34
  %51 = load i32, i32* @INTEL_DP_RESOLUTION_FAILSAFE, align 4
  %52 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %53 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 %51, i32* %55, align 4
  br label %87

56:                                               ; preds = %22
  %57 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %58 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %57, i32 0, i32 0
  %59 = load %struct.edid*, %struct.edid** %58, align 8
  store %struct.edid* %59, %struct.edid** %6, align 8
  %60 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %61 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %60, i32 0, i32 0
  %62 = load %struct.edid*, %struct.edid** %61, align 8
  %63 = getelementptr inbounds %struct.edid, %struct.edid* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.edid*, %struct.edid** %6, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds %struct.edid, %struct.edid* %65, i64 %66
  store %struct.edid* %67, %struct.edid** %6, align 8
  %68 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %69 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %68, i32 0, i32 1
  %70 = load i32, i32* @DP_TEST_EDID_CHECKSUM, align 4
  %71 = load %struct.edid*, %struct.edid** %6, align 8
  %72 = getelementptr inbounds %struct.edid, %struct.edid* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @drm_dp_dpcd_writeb(%struct.TYPE_6__* %69, i32 %70, i32 %73)
  %75 = icmp sle i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %56
  %77 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %56
  %79 = load i32, i32* @DP_TEST_ACK, align 4
  %80 = load i32, i32* @DP_TEST_EDID_CHECKSUM_WRITE, align 4
  %81 = or i32 %79, %80
  store i32 %81, i32* %3, align 4
  %82 = load i32, i32* @INTEL_DP_RESOLUTION_PREFERRED, align 4
  %83 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %84 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  store i32 %82, i32* %86, align 4
  br label %87

87:                                               ; preds = %78, %50
  %88 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %89 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  store i32 1, i32* %90, align 8
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i64 @drm_dp_dpcd_writeb(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
