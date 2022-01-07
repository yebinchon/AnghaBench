; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_dpm_force_performance_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_dpm_force_performance_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@RADEON_DPM_FORCED_LEVEL_HIGH = common dso_local global i32 0, align 4
@PPSMC_MSG_ZeroLevelsDisabled = common dso_local global i64 0, align 8
@PPSMC_Result_OK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PPSMC_MSG_ForceHigh = common dso_local global i64 0, align 8
@RADEON_DPM_FORCED_LEVEL_LOW = common dso_local global i32 0, align 4
@PPSMC_MSG_NoForcedLevel = common dso_local global i64 0, align 8
@PPSMC_MSG_TwoLevelsDisabled = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rv770_dpm_force_performance_level(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @RADEON_DPM_FORCED_LEVEL_HIGH, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %12 = load i64, i64* @PPSMC_MSG_ZeroLevelsDisabled, align 8
  %13 = call i64 @rv770_send_msg_to_smc(%struct.radeon_device* %11, i64 %12)
  %14 = load i64, i64* @PPSMC_Result_OK, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %63

19:                                               ; preds = %10
  %20 = load i64, i64* @PPSMC_MSG_ForceHigh, align 8
  store i64 %20, i64* %6, align 8
  br label %48

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @RADEON_DPM_FORCED_LEVEL_LOW, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %27 = load i64, i64* @PPSMC_MSG_NoForcedLevel, align 8
  %28 = call i64 @rv770_send_msg_to_smc(%struct.radeon_device* %26, i64 %27)
  %29 = load i64, i64* @PPSMC_Result_OK, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %63

34:                                               ; preds = %25
  %35 = load i64, i64* @PPSMC_MSG_TwoLevelsDisabled, align 8
  store i64 %35, i64* %6, align 8
  br label %47

36:                                               ; preds = %21
  %37 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %38 = load i64, i64* @PPSMC_MSG_NoForcedLevel, align 8
  %39 = call i64 @rv770_send_msg_to_smc(%struct.radeon_device* %37, i64 %38)
  %40 = load i64, i64* @PPSMC_Result_OK, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %63

45:                                               ; preds = %36
  %46 = load i64, i64* @PPSMC_MSG_ZeroLevelsDisabled, align 8
  store i64 %46, i64* %6, align 8
  br label %47

47:                                               ; preds = %45, %34
  br label %48

48:                                               ; preds = %47, %19
  %49 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %50 = load i64, i64* %6, align 8
  %51 = call i64 @rv770_send_msg_to_smc(%struct.radeon_device* %49, i64 %50)
  %52 = load i64, i64* @PPSMC_Result_OK, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %63

57:                                               ; preds = %48
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %60 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store i32 %58, i32* %62, align 4
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %57, %54, %42, %31, %16
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i64 @rv770_send_msg_to_smc(%struct.radeon_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
