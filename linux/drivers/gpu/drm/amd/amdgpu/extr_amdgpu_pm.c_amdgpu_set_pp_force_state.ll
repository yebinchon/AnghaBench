; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_pm.c_amdgpu_set_pp_force_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_pm.c_amdgpu_set_pp_force_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.pp_states_info = type { i32* }

@EINVAL = common dso_local global i64 0, align 8
@POWER_STATE_TYPE_INTERNAL_BOOT = common dso_local global i32 0, align 4
@POWER_STATE_TYPE_DEFAULT = common dso_local global i32 0, align 4
@AMD_PP_TASK_ENABLE_USER_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @amdgpu_set_pp_force_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @amdgpu_set_pp_force_state(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca %struct.amdgpu_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.pp_states_info, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call %struct.drm_device* @dev_get_drvdata(%struct.device* %15)
  store %struct.drm_device* %16, %struct.drm_device** %9, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 0
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %18, align 8
  store %struct.amdgpu_device* %19, %struct.amdgpu_device** %10, align 8
  store i32 0, i32* %11, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %25 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  br label %92

26:                                               ; preds = %4
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %28 = call i64 @is_support_sw_smu(%struct.amdgpu_device* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %32 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  br label %91

33:                                               ; preds = %26
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %35 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %90

41:                                               ; preds = %33
  %42 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %43 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %90

49:                                               ; preds = %41
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @kstrtoul(i8* %50, i32 0, i64* %12)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %49
  %55 = load i64, i64* %12, align 8
  %56 = getelementptr inbounds %struct.pp_states_info, %struct.pp_states_info* %14, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = call i64 @ARRAY_SIZE(i32* %57)
  %59 = icmp uge i64 %55, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %54, %49
  %61 = load i64, i64* @EINVAL, align 8
  %62 = sub i64 0, %61
  store i64 %62, i64* %8, align 8
  br label %93

63:                                               ; preds = %54
  %64 = load i64, i64* %12, align 8
  %65 = getelementptr inbounds %struct.pp_states_info, %struct.pp_states_info* %14, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = call i64 @ARRAY_SIZE(i32* %66)
  %68 = call i64 @array_index_nospec(i64 %64, i64 %67)
  store i64 %68, i64* %12, align 8
  %69 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %70 = call i32 @amdgpu_dpm_get_pp_num_states(%struct.amdgpu_device* %69, %struct.pp_states_info* %14)
  %71 = getelementptr inbounds %struct.pp_states_info, %struct.pp_states_info* %14, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* %12, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @POWER_STATE_TYPE_INTERNAL_BOOT, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %63
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @POWER_STATE_TYPE_DEFAULT, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %85 = load i32, i32* @AMD_PP_TASK_ENABLE_USER_STATE, align 4
  %86 = call i32 @amdgpu_dpm_dispatch_task(%struct.amdgpu_device* %84, i32 %85, i32* %11)
  %87 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %88 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %87, i32 0, i32 0
  store i32 1, i32* %88, align 8
  br label %89

89:                                               ; preds = %83, %79, %63
  br label %90

90:                                               ; preds = %89, %41, %33
  br label %91

91:                                               ; preds = %90, %30
  br label %92

92:                                               ; preds = %91, %23
  br label %93

93:                                               ; preds = %92, %60
  %94 = load i64, i64* %8, align 8
  ret i64 %94
}

declare dso_local %struct.drm_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @is_support_sw_smu(%struct.amdgpu_device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @array_index_nospec(i64, i64) #1

declare dso_local i32 @amdgpu_dpm_get_pp_num_states(%struct.amdgpu_device*, %struct.pp_states_info*) #1

declare dso_local i32 @amdgpu_dpm_dispatch_task(%struct.amdgpu_device*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
