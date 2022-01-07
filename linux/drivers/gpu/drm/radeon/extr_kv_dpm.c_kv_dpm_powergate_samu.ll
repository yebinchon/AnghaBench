; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_kv_dpm.c_kv_dpm_powergate_samu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_kv_dpm.c_kv_dpm_powergate_samu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.kv_power_info = type { i32, i64 }

@PPSMC_MSG_SAMPowerOFF = common dso_local global i32 0, align 4
@PPSMC_MSG_SAMPowerON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32)* @kv_dpm_powergate_samu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kv_dpm_powergate_samu(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kv_power_info*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = call %struct.kv_power_info* @kv_get_pi(%struct.radeon_device* %6)
  store %struct.kv_power_info* %7, %struct.kv_power_info** %5, align 8
  %8 = load %struct.kv_power_info*, %struct.kv_power_info** %5, align 8
  %9 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %44

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.kv_power_info*, %struct.kv_power_info** %5, align 8
  %17 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %14
  %21 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %22 = call i32 @kv_update_samu_dpm(%struct.radeon_device* %21, i32 1)
  %23 = load %struct.kv_power_info*, %struct.kv_power_info** %5, align 8
  %24 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %29 = load i32, i32* @PPSMC_MSG_SAMPowerOFF, align 4
  %30 = call i32 @kv_notify_message_to_smu(%struct.radeon_device* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %20
  br label %44

32:                                               ; preds = %14
  %33 = load %struct.kv_power_info*, %struct.kv_power_info** %5, align 8
  %34 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %39 = load i32, i32* @PPSMC_MSG_SAMPowerON, align 4
  %40 = call i32 @kv_notify_message_to_smu(%struct.radeon_device* %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %32
  %42 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %43 = call i32 @kv_update_samu_dpm(%struct.radeon_device* %42, i32 0)
  br label %44

44:                                               ; preds = %13, %41, %31
  ret void
}

declare dso_local %struct.kv_power_info* @kv_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @kv_update_samu_dpm(%struct.radeon_device*, i32) #1

declare dso_local i32 @kv_notify_message_to_smu(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
