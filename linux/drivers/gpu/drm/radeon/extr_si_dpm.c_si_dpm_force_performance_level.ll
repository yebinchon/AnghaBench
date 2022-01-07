; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_dpm_force_performance_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_dpm_force_performance_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.radeon_ps* }
%struct.radeon_ps = type { i32 }
%struct.ni_ps = type { i32 }

@RADEON_DPM_FORCED_LEVEL_HIGH = common dso_local global i32 0, align 4
@PPSMC_MSG_SetEnabledLevels = common dso_local global i32 0, align 4
@PPSMC_Result_OK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PPSMC_MSG_SetForcedLevels = common dso_local global i32 0, align 4
@RADEON_DPM_FORCED_LEVEL_LOW = common dso_local global i32 0, align 4
@RADEON_DPM_FORCED_LEVEL_AUTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @si_dpm_force_performance_level(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.radeon_ps*, align 8
  %7 = alloca %struct.ni_ps*, align 8
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %10 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load %struct.radeon_ps*, %struct.radeon_ps** %12, align 8
  store %struct.radeon_ps* %13, %struct.radeon_ps** %6, align 8
  %14 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %15 = call %struct.ni_ps* @ni_get_ps(%struct.radeon_ps* %14)
  store %struct.ni_ps* %15, %struct.ni_ps** %7, align 8
  %16 = load %struct.ni_ps*, %struct.ni_ps** %7, align 8
  %17 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @RADEON_DPM_FORCED_LEVEL_HIGH, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %2
  %23 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %24 = load i32, i32* @PPSMC_MSG_SetEnabledLevels, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i64 @si_send_msg_to_smc_with_parameter(%struct.radeon_device* %23, i32 %24, i32 %25)
  %27 = load i64, i64* @PPSMC_Result_OK, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %97

32:                                               ; preds = %22
  %33 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %34 = load i32, i32* @PPSMC_MSG_SetForcedLevels, align 4
  %35 = call i64 @si_send_msg_to_smc_with_parameter(%struct.radeon_device* %33, i32 %34, i32 1)
  %36 = load i64, i64* @PPSMC_Result_OK, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %97

41:                                               ; preds = %32
  br label %91

42:                                               ; preds = %2
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @RADEON_DPM_FORCED_LEVEL_LOW, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %65

46:                                               ; preds = %42
  %47 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %48 = load i32, i32* @PPSMC_MSG_SetForcedLevels, align 4
  %49 = call i64 @si_send_msg_to_smc_with_parameter(%struct.radeon_device* %47, i32 %48, i32 0)
  %50 = load i64, i64* @PPSMC_Result_OK, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %97

55:                                               ; preds = %46
  %56 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %57 = load i32, i32* @PPSMC_MSG_SetEnabledLevels, align 4
  %58 = call i64 @si_send_msg_to_smc_with_parameter(%struct.radeon_device* %56, i32 %57, i32 1)
  %59 = load i64, i64* @PPSMC_Result_OK, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %97

64:                                               ; preds = %55
  br label %90

65:                                               ; preds = %42
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @RADEON_DPM_FORCED_LEVEL_AUTO, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %89

69:                                               ; preds = %65
  %70 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %71 = load i32, i32* @PPSMC_MSG_SetForcedLevels, align 4
  %72 = call i64 @si_send_msg_to_smc_with_parameter(%struct.radeon_device* %70, i32 %71, i32 0)
  %73 = load i64, i64* @PPSMC_Result_OK, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %97

78:                                               ; preds = %69
  %79 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %80 = load i32, i32* @PPSMC_MSG_SetEnabledLevels, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i64 @si_send_msg_to_smc_with_parameter(%struct.radeon_device* %79, i32 %80, i32 %81)
  %83 = load i64, i64* @PPSMC_Result_OK, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %97

88:                                               ; preds = %78
  br label %89

89:                                               ; preds = %88, %65
  br label %90

90:                                               ; preds = %89, %64
  br label %91

91:                                               ; preds = %90, %41
  %92 = load i32, i32* %5, align 4
  %93 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %94 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  store i32 %92, i32* %96, align 8
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %91, %85, %75, %61, %52, %38, %29
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.ni_ps* @ni_get_ps(%struct.radeon_ps*) #1

declare dso_local i64 @si_send_msg_to_smc_with_parameter(%struct.radeon_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
