; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_pm.c_amdgpu_set_dpm_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_pm.c_amdgpu_set_dpm_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.drm_device = type { i64, %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"battery\00", align 1
@POWER_STATE_TYPE_BATTERY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"balanced\00", align 1
@POWER_STATE_TYPE_BALANCED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"performance\00", align 1
@POWER_STATE_TYPE_PERFORMANCE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@AMD_PP_TASK_ENABLE_USER_STATE = common dso_local global i32 0, align 4
@AMD_IS_PX = common dso_local global i32 0, align 4
@DRM_SWITCH_POWER_ON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @amdgpu_set_dpm_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @amdgpu_set_dpm_state(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca %struct.amdgpu_device*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.drm_device* @dev_get_drvdata(%struct.device* %12)
  store %struct.drm_device* %13, %struct.drm_device** %9, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 1
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %15, align 8
  store %struct.amdgpu_device* %16, %struct.amdgpu_device** %10, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %19 = call i64 @strncmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %17, i32 %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @POWER_STATE_TYPE_BATTERY, align 4
  store i32 %22, i32* %11, align 4
  br label %42

23:                                               ; preds = %4
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %26 = call i64 @strncmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %24, i32 %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @POWER_STATE_TYPE_BALANCED, align 4
  store i32 %29, i32* %11, align 4
  br label %41

30:                                               ; preds = %23
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @strlen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %33 = call i64 @strncmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %31, i32 %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @POWER_STATE_TYPE_PERFORMANCE, align 4
  store i32 %36, i32* %11, align 4
  br label %40

37:                                               ; preds = %30
  %38 = load i64, i64* @EINVAL, align 8
  %39 = sub i64 0, %38
  store i64 %39, i64* %8, align 8
  br label %104

40:                                               ; preds = %35
  br label %41

41:                                               ; preds = %40, %28
  br label %42

42:                                               ; preds = %41, %21
  %43 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %44 = call i64 @is_support_sw_smu(%struct.amdgpu_device* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %42
  %47 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %48 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = call i32 @mutex_lock(i32* %49)
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %53 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  store i32 %51, i32* %55, align 4
  %56 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %57 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  br label %103

60:                                               ; preds = %42
  %61 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %62 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %60
  %69 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %70 = load i32, i32* @AMD_PP_TASK_ENABLE_USER_STATE, align 4
  %71 = call i32 @amdgpu_dpm_dispatch_task(%struct.amdgpu_device* %69, i32 %70, i32* %11)
  br label %102

72:                                               ; preds = %60
  %73 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %74 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = call i32 @mutex_lock(i32* %75)
  %77 = load i32, i32* %11, align 4
  %78 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %79 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  store i32 %77, i32* %81, align 4
  %82 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %83 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = call i32 @mutex_unlock(i32* %84)
  %86 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %87 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @AMD_IS_PX, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %72
  %93 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %94 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @DRM_SWITCH_POWER_ON, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %92, %72
  %99 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %100 = call i32 @amdgpu_pm_compute_clocks(%struct.amdgpu_device* %99)
  br label %101

101:                                              ; preds = %98, %92
  br label %102

102:                                              ; preds = %101, %68
  br label %103

103:                                              ; preds = %102, %46
  br label %104

104:                                              ; preds = %103, %37
  %105 = load i64, i64* %8, align 8
  ret i64 %105
}

declare dso_local %struct.drm_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @is_support_sw_smu(%struct.amdgpu_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @amdgpu_dpm_dispatch_task(%struct.amdgpu_device*, i32, i32*) #1

declare dso_local i32 @amdgpu_pm_compute_clocks(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
