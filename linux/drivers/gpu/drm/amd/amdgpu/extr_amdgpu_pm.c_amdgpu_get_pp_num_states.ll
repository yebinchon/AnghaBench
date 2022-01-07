; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_pm.c_amdgpu_get_pp_num_states.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_pm.c_amdgpu_get_pp_num_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.pp_states_info = type { i32, i64* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"states: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d %s\0A\00", align 1
@POWER_STATE_TYPE_INTERNAL_BOOT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"boot\00", align 1
@POWER_STATE_TYPE_BATTERY = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"battery\00", align 1
@POWER_STATE_TYPE_BALANCED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"balanced\00", align 1
@POWER_STATE_TYPE_PERFORMANCE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"performance\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @amdgpu_get_pp_num_states to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_get_pp_num_states(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.amdgpu_device*, align 8
  %10 = alloca %struct.pp_states_info, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.drm_device* @dev_get_drvdata(%struct.device* %14)
  store %struct.drm_device* %15, %struct.drm_device** %8, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %17, align 8
  store %struct.amdgpu_device* %18, %struct.amdgpu_device** %9, align 8
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %20 = call i64 @is_support_sw_smu(%struct.amdgpu_device* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %3
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 1
  %25 = call i32 @smu_get_power_num_states(i32* %24, %struct.pp_states_info* %10)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %13, align 4
  store i32 %29, i32* %4, align 4
  br label %115

30:                                               ; preds = %22
  br label %43

31:                                               ; preds = %3
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %33 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %41 = call i32 @amdgpu_dpm_get_pp_num_states(%struct.amdgpu_device* %40, %struct.pp_states_info* %10)
  br label %42

42:                                               ; preds = %39, %31
  br label %43

43:                                               ; preds = %42, %30
  %44 = load i8*, i8** %7, align 8
  %45 = load i32, i32* @PAGE_SIZE, align 4
  %46 = getelementptr inbounds %struct.pp_states_info, %struct.pp_states_info* %10, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %44, i32 %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %47)
  store i32 %48, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %49

49:                                               ; preds = %110, %43
  %50 = load i32, i32* %11, align 4
  %51 = getelementptr inbounds %struct.pp_states_info, %struct.pp_states_info* %10, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %113

54:                                               ; preds = %49
  %55 = load i8*, i8** %7, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i32, i32* @PAGE_SIZE, align 4
  %60 = load i32, i32* %11, align 4
  %61 = getelementptr inbounds %struct.pp_states_info, %struct.pp_states_info* %10, i32 0, i32 1
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @POWER_STATE_TYPE_INTERNAL_BOOT, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %54
  br label %105

70:                                               ; preds = %54
  %71 = getelementptr inbounds %struct.pp_states_info, %struct.pp_states_info* %10, i32 0, i32 1
  %72 = load i64*, i64** %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @POWER_STATE_TYPE_BATTERY, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %70
  br label %103

80:                                               ; preds = %70
  %81 = getelementptr inbounds %struct.pp_states_info, %struct.pp_states_info* %10, i32 0, i32 1
  %82 = load i64*, i64** %81, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @POWER_STATE_TYPE_BALANCED, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %80
  br label %101

90:                                               ; preds = %80
  %91 = getelementptr inbounds %struct.pp_states_info, %struct.pp_states_info* %10, i32 0, i32 1
  %92 = load i64*, i64** %91, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @POWER_STATE_TYPE_PERFORMANCE, align 8
  %98 = icmp eq i64 %96, %97
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)
  br label %101

101:                                              ; preds = %90, %89
  %102 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), %89 ], [ %100, %90 ]
  br label %103

103:                                              ; preds = %101, %79
  %104 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %79 ], [ %102, %101 ]
  br label %105

105:                                              ; preds = %103, %69
  %106 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %69 ], [ %104, %103 ]
  %107 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %58, i32 %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %60, i8* %106)
  %108 = load i32, i32* %12, align 4
  %109 = add nsw i32 %108, %107
  store i32 %109, i32* %12, align 4
  br label %110

110:                                              ; preds = %105
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %11, align 4
  br label %49

113:                                              ; preds = %49
  %114 = load i32, i32* %12, align 4
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %113, %28
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local %struct.drm_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @is_support_sw_smu(%struct.amdgpu_device*) #1

declare dso_local i32 @smu_get_power_num_states(i32*, %struct.pp_states_info*) #1

declare dso_local i32 @amdgpu_dpm_get_pp_num_states(%struct.amdgpu_device*, %struct.pp_states_info*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
