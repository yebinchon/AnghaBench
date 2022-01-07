; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_pm.c_amdgpu_get_dpm_forced_performance_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_pm.c_amdgpu_get_dpm_forced_performance_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.drm_device = type { i64, %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32, %struct.TYPE_8__, %struct.TYPE_6__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@AMD_IS_PX = common dso_local global i32 0, align 4
@DRM_SWITCH_POWER_ON = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"off\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@AMD_DPM_FORCED_LEVEL_AUTO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@AMD_DPM_FORCED_LEVEL_LOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@AMD_DPM_FORCED_LEVEL_HIGH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@AMD_DPM_FORCED_LEVEL_MANUAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"manual\00", align 1
@AMD_DPM_FORCED_LEVEL_PROFILE_STANDARD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"profile_standard\00", align 1
@AMD_DPM_FORCED_LEVEL_PROFILE_MIN_SCLK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"profile_min_sclk\00", align 1
@AMD_DPM_FORCED_LEVEL_PROFILE_MIN_MCLK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"profile_min_mclk\00", align 1
@AMD_DPM_FORCED_LEVEL_PROFILE_PEAK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"profile_peak\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @amdgpu_get_dpm_forced_performance_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_get_dpm_forced_performance_level(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.amdgpu_device*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.drm_device* @dev_get_drvdata(%struct.device* %11)
  store %struct.drm_device* %12, %struct.drm_device** %8, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 1
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %14, align 8
  store %struct.amdgpu_device* %15, %struct.amdgpu_device** %9, align 8
  store i32 255, i32* %10, align 4
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %17 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %121

20:                                               ; preds = %3
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %22 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @AMD_IS_PX, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %20
  %28 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %29 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DRM_SWITCH_POWER_ON, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* @PAGE_SIZE, align 4
  %36 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %34, i32 %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %36, i32* %4, align 4
  br label %121

37:                                               ; preds = %27, %20
  %38 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %39 = call i64 @is_support_sw_smu(%struct.amdgpu_device* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %43 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %42, i32 0, i32 3
  %44 = call i32 @smu_get_performance_level(i32* %43)
  store i32 %44, i32* %10, align 4
  br label %63

45:                                               ; preds = %37
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %47 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %55 = call i32 @amdgpu_dpm_get_performance_level(%struct.amdgpu_device* %54)
  store i32 %55, i32* %10, align 4
  br label %62

56:                                               ; preds = %45
  %57 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %58 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %56, %53
  br label %63

63:                                               ; preds = %62, %41
  %64 = load i8*, i8** %7, align 8
  %65 = load i32, i32* @PAGE_SIZE, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @AMD_DPM_FORCED_LEVEL_AUTO, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %118

70:                                               ; preds = %63
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @AMD_DPM_FORCED_LEVEL_LOW, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %116

75:                                               ; preds = %70
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @AMD_DPM_FORCED_LEVEL_HIGH, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %114

80:                                               ; preds = %75
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @AMD_DPM_FORCED_LEVEL_MANUAL, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  br label %112

85:                                               ; preds = %80
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @AMD_DPM_FORCED_LEVEL_PROFILE_STANDARD, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  br label %110

90:                                               ; preds = %85
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @AMD_DPM_FORCED_LEVEL_PROFILE_MIN_SCLK, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  br label %108

95:                                               ; preds = %90
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* @AMD_DPM_FORCED_LEVEL_PROFILE_MIN_MCLK, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  br label %106

100:                                              ; preds = %95
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @AMD_DPM_FORCED_LEVEL_PROFILE_PEAK, align 4
  %103 = icmp eq i32 %101, %102
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0)
  br label %106

106:                                              ; preds = %100, %99
  %107 = phi i8* [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), %99 ], [ %105, %100 ]
  br label %108

108:                                              ; preds = %106, %94
  %109 = phi i8* [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), %94 ], [ %107, %106 ]
  br label %110

110:                                              ; preds = %108, %89
  %111 = phi i8* [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), %89 ], [ %109, %108 ]
  br label %112

112:                                              ; preds = %110, %84
  %113 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), %84 ], [ %111, %110 ]
  br label %114

114:                                              ; preds = %112, %79
  %115 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %79 ], [ %113, %112 ]
  br label %116

116:                                              ; preds = %114, %74
  %117 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), %74 ], [ %115, %114 ]
  br label %118

118:                                              ; preds = %116, %69
  %119 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %69 ], [ %117, %116 ]
  %120 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %64, i32 %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %119)
  store i32 %120, i32* %4, align 4
  br label %121

121:                                              ; preds = %118, %33, %19
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local %struct.drm_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i64 @is_support_sw_smu(%struct.amdgpu_device*) #1

declare dso_local i32 @smu_get_performance_level(i32*) #1

declare dso_local i32 @amdgpu_dpm_get_performance_level(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
