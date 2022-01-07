; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_dpm_force_performance_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_dpm_force_performance_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@RADEON_DPM_FORCED_LEVEL_HIGH = common dso_local global i32 0, align 4
@PPSMC_MSG_SetEnabledLevels = common dso_local global i32 0, align 4
@PPSMC_Result_OK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PPSMC_MSG_SetForcedLevels = common dso_local global i32 0, align 4
@RADEON_DPM_FORCED_LEVEL_LOW = common dso_local global i32 0, align 4
@RADEON_DPM_FORCED_LEVEL_AUTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ni_dpm_force_performance_level(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @RADEON_DPM_FORCED_LEVEL_HIGH, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %28

9:                                                ; preds = %2
  %10 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %11 = load i32, i32* @PPSMC_MSG_SetEnabledLevels, align 4
  %12 = call i64 @ni_send_msg_to_smc_with_parameter(%struct.radeon_device* %10, i32 %11, i32 0)
  %13 = load i64, i64* @PPSMC_Result_OK, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %82

18:                                               ; preds = %9
  %19 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %20 = load i32, i32* @PPSMC_MSG_SetForcedLevels, align 4
  %21 = call i64 @ni_send_msg_to_smc_with_parameter(%struct.radeon_device* %19, i32 %20, i32 1)
  %22 = load i64, i64* @PPSMC_Result_OK, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %82

27:                                               ; preds = %18
  br label %76

28:                                               ; preds = %2
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @RADEON_DPM_FORCED_LEVEL_LOW, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %51

32:                                               ; preds = %28
  %33 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %34 = load i32, i32* @PPSMC_MSG_SetForcedLevels, align 4
  %35 = call i64 @ni_send_msg_to_smc_with_parameter(%struct.radeon_device* %33, i32 %34, i32 0)
  %36 = load i64, i64* @PPSMC_Result_OK, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %82

41:                                               ; preds = %32
  %42 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %43 = load i32, i32* @PPSMC_MSG_SetEnabledLevels, align 4
  %44 = call i64 @ni_send_msg_to_smc_with_parameter(%struct.radeon_device* %42, i32 %43, i32 1)
  %45 = load i64, i64* @PPSMC_Result_OK, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %82

50:                                               ; preds = %41
  br label %75

51:                                               ; preds = %28
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @RADEON_DPM_FORCED_LEVEL_AUTO, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %74

55:                                               ; preds = %51
  %56 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %57 = load i32, i32* @PPSMC_MSG_SetForcedLevels, align 4
  %58 = call i64 @ni_send_msg_to_smc_with_parameter(%struct.radeon_device* %56, i32 %57, i32 0)
  %59 = load i64, i64* @PPSMC_Result_OK, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %82

64:                                               ; preds = %55
  %65 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %66 = load i32, i32* @PPSMC_MSG_SetEnabledLevels, align 4
  %67 = call i64 @ni_send_msg_to_smc_with_parameter(%struct.radeon_device* %65, i32 %66, i32 0)
  %68 = load i64, i64* @PPSMC_Result_OK, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %82

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %73, %51
  br label %75

75:                                               ; preds = %74, %50
  br label %76

76:                                               ; preds = %75, %27
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %79 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  store i32 %77, i32* %81, align 4
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %76, %70, %61, %47, %38, %24, %15
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i64 @ni_send_msg_to_smc_with_parameter(%struct.radeon_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
