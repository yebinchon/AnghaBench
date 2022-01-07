; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_dpm_force_performance_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_dpm_force_performance_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.amdgpu_ps* }
%struct.amdgpu_ps = type { i32 }
%struct.si_ps = type { i32 }

@AMD_DPM_FORCED_LEVEL_HIGH = common dso_local global i32 0, align 4
@PPSMC_MSG_SetEnabledLevels = common dso_local global i32 0, align 4
@PPSMC_Result_OK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PPSMC_MSG_SetForcedLevels = common dso_local global i32 0, align 4
@AMD_DPM_FORCED_LEVEL_LOW = common dso_local global i32 0, align 4
@AMD_DPM_FORCED_LEVEL_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @si_dpm_force_performance_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_dpm_force_performance_level(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca %struct.amdgpu_ps*, align 8
  %8 = alloca %struct.si_ps*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %11, %struct.amdgpu_device** %6, align 8
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %15, align 8
  store %struct.amdgpu_ps* %16, %struct.amdgpu_ps** %7, align 8
  %17 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %7, align 8
  %18 = call %struct.si_ps* @si_get_ps(%struct.amdgpu_ps* %17)
  store %struct.si_ps* %18, %struct.si_ps** %8, align 8
  %19 = load %struct.si_ps*, %struct.si_ps** %8, align 8
  %20 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @AMD_DPM_FORCED_LEVEL_HIGH, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %45

25:                                               ; preds = %2
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %27 = load i32, i32* @PPSMC_MSG_SetEnabledLevels, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i64 @si_send_msg_to_smc_with_parameter(%struct.amdgpu_device* %26, i32 %27, i32 %28)
  %30 = load i64, i64* @PPSMC_Result_OK, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %100

35:                                               ; preds = %25
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %37 = load i32, i32* @PPSMC_MSG_SetForcedLevels, align 4
  %38 = call i64 @si_send_msg_to_smc_with_parameter(%struct.amdgpu_device* %36, i32 %37, i32 1)
  %39 = load i64, i64* @PPSMC_Result_OK, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %100

44:                                               ; preds = %35
  br label %94

45:                                               ; preds = %2
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @AMD_DPM_FORCED_LEVEL_LOW, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %68

49:                                               ; preds = %45
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %51 = load i32, i32* @PPSMC_MSG_SetForcedLevels, align 4
  %52 = call i64 @si_send_msg_to_smc_with_parameter(%struct.amdgpu_device* %50, i32 %51, i32 0)
  %53 = load i64, i64* @PPSMC_Result_OK, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %100

58:                                               ; preds = %49
  %59 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %60 = load i32, i32* @PPSMC_MSG_SetEnabledLevels, align 4
  %61 = call i64 @si_send_msg_to_smc_with_parameter(%struct.amdgpu_device* %59, i32 %60, i32 1)
  %62 = load i64, i64* @PPSMC_Result_OK, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %100

67:                                               ; preds = %58
  br label %93

68:                                               ; preds = %45
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @AMD_DPM_FORCED_LEVEL_AUTO, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %92

72:                                               ; preds = %68
  %73 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %74 = load i32, i32* @PPSMC_MSG_SetForcedLevels, align 4
  %75 = call i64 @si_send_msg_to_smc_with_parameter(%struct.amdgpu_device* %73, i32 %74, i32 0)
  %76 = load i64, i64* @PPSMC_Result_OK, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %100

81:                                               ; preds = %72
  %82 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %83 = load i32, i32* @PPSMC_MSG_SetEnabledLevels, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i64 @si_send_msg_to_smc_with_parameter(%struct.amdgpu_device* %82, i32 %83, i32 %84)
  %86 = load i64, i64* @PPSMC_Result_OK, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %100

91:                                               ; preds = %81
  br label %92

92:                                               ; preds = %91, %68
  br label %93

93:                                               ; preds = %92, %67
  br label %94

94:                                               ; preds = %93, %44
  %95 = load i32, i32* %5, align 4
  %96 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %97 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  store i32 %95, i32* %99, align 8
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %94, %88, %78, %64, %55, %41, %32
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local %struct.si_ps* @si_get_ps(%struct.amdgpu_ps*) #1

declare dso_local i64 @si_send_msg_to_smc_with_parameter(%struct.amdgpu_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
