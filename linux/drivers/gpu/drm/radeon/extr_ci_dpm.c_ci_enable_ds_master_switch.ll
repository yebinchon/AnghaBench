; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_enable_ds_master_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_enable_ds_master_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.ci_power_info = type { i64 }

@PPSMC_MSG_MASTER_DeepSleep_ON = common dso_local global i32 0, align 4
@PPSMC_Result_OK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PPSMC_MSG_MASTER_DeepSleep_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, i32)* @ci_enable_ds_master_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_enable_ds_master_switch(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ci_power_info*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %8 = call %struct.ci_power_info* @ci_get_pi(%struct.radeon_device* %7)
  store %struct.ci_power_info* %8, %struct.ci_power_info** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %37

11:                                               ; preds = %2
  %12 = load %struct.ci_power_info*, %struct.ci_power_info** %6, align 8
  %13 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %18 = load i32, i32* @PPSMC_MSG_MASTER_DeepSleep_ON, align 4
  %19 = call i64 @ci_send_msg_to_smc(%struct.radeon_device* %17, i32 %18)
  %20 = load i64, i64* @PPSMC_Result_OK, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %54

25:                                               ; preds = %16
  br label %36

26:                                               ; preds = %11
  %27 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %28 = load i32, i32* @PPSMC_MSG_MASTER_DeepSleep_OFF, align 4
  %29 = call i64 @ci_send_msg_to_smc(%struct.radeon_device* %27, i32 %28)
  %30 = load i64, i64* @PPSMC_Result_OK, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %54

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %25
  br label %53

37:                                               ; preds = %2
  %38 = load %struct.ci_power_info*, %struct.ci_power_info** %6, align 8
  %39 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %44 = load i32, i32* @PPSMC_MSG_MASTER_DeepSleep_OFF, align 4
  %45 = call i64 @ci_send_msg_to_smc(%struct.radeon_device* %43, i32 %44)
  %46 = load i64, i64* @PPSMC_Result_OK, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %54

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %51, %37
  br label %53

53:                                               ; preds = %52, %36
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %48, %32, %22
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.ci_power_info* @ci_get_pi(%struct.radeon_device*) #1

declare dso_local i64 @ci_send_msg_to_smc(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
