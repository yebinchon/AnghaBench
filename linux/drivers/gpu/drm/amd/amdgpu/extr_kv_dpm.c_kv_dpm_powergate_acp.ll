; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_dpm_powergate_acp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_dpm_powergate_acp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64 }
%struct.kv_power_info = type { i32, i64 }

@CHIP_KABINI = common dso_local global i64 0, align 8
@CHIP_MULLINS = common dso_local global i64 0, align 8
@PPSMC_MSG_ACPPowerOFF = common dso_local global i32 0, align 4
@PPSMC_MSG_ACPPowerON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @kv_dpm_powergate_acp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kv_dpm_powergate_acp(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kv_power_info*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %7 = call %struct.kv_power_info* @kv_get_pi(%struct.amdgpu_device* %6)
  store %struct.kv_power_info* %7, %struct.kv_power_info** %5, align 8
  %8 = load %struct.kv_power_info*, %struct.kv_power_info** %5, align 8
  %9 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %57

14:                                               ; preds = %2
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %16 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CHIP_KABINI, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %22 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CHIP_MULLINS, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20, %14
  br label %57

27:                                               ; preds = %20
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.kv_power_info*, %struct.kv_power_info** %5, align 8
  %30 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %27
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %35 = call i32 @kv_update_acp_dpm(%struct.amdgpu_device* %34, i32 1)
  %36 = load %struct.kv_power_info*, %struct.kv_power_info** %5, align 8
  %37 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %42 = load i32, i32* @PPSMC_MSG_ACPPowerOFF, align 4
  %43 = call i32 @amdgpu_kv_notify_message_to_smu(%struct.amdgpu_device* %41, i32 %42)
  br label %44

44:                                               ; preds = %40, %33
  br label %57

45:                                               ; preds = %27
  %46 = load %struct.kv_power_info*, %struct.kv_power_info** %5, align 8
  %47 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %52 = load i32, i32* @PPSMC_MSG_ACPPowerON, align 4
  %53 = call i32 @amdgpu_kv_notify_message_to_smu(%struct.amdgpu_device* %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %45
  %55 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %56 = call i32 @kv_update_acp_dpm(%struct.amdgpu_device* %55, i32 0)
  br label %57

57:                                               ; preds = %13, %26, %54, %44
  ret void
}

declare dso_local %struct.kv_power_info* @kv_get_pi(%struct.amdgpu_device*) #1

declare dso_local i32 @kv_update_acp_dpm(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_kv_notify_message_to_smu(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
