; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_dpm_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_dpm_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.kv_power_info = type { i64, i64 }

@AMDGPU_THERMAL_IRQ_LOW_TO_HIGH = common dso_local global i32 0, align 4
@AMDGPU_THERMAL_IRQ_HIGH_TO_LOW = common dso_local global i32 0, align 4
@CHIP_MULLINS = common dso_local global i64 0, align 8
@PPSMC_MSG_VCEPowerON = common dso_local global i32 0, align 4
@PPSMC_MSG_UVDPowerON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @kv_dpm_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kv_dpm_disable(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca %struct.kv_power_info*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %4 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %5 = call %struct.kv_power_info* @kv_get_pi(%struct.amdgpu_device* %4)
  store %struct.kv_power_info* %5, %struct.kv_power_info** %3, align 8
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %8 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* @AMDGPU_THERMAL_IRQ_LOW_TO_HIGH, align 4
  %13 = call i32 @amdgpu_irq_put(%struct.amdgpu_device* %6, i32* %11, i32 %12)
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %16 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* @AMDGPU_THERMAL_IRQ_HIGH_TO_LOW, align 4
  %21 = call i32 @amdgpu_irq_put(%struct.amdgpu_device* %14, i32* %19, i32 %20)
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %23 = call i32 @amdgpu_kv_smc_bapm_enable(%struct.amdgpu_device* %22, i32 0)
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %25 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CHIP_MULLINS, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %31 = call i32 @kv_enable_nb_dpm(%struct.amdgpu_device* %30, i32 0)
  br label %32

32:                                               ; preds = %29, %1
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %34 = call i32 @kv_dpm_powergate_acp(%struct.amdgpu_device* %33, i32 0)
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %36 = call i32 @kv_dpm_powergate_samu(%struct.amdgpu_device* %35, i32 0)
  %37 = load %struct.kv_power_info*, %struct.kv_power_info** %3, align 8
  %38 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %32
  %42 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %43 = load i32, i32* @PPSMC_MSG_VCEPowerON, align 4
  %44 = call i32 @amdgpu_kv_notify_message_to_smu(%struct.amdgpu_device* %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %32
  %46 = load %struct.kv_power_info*, %struct.kv_power_info** %3, align 8
  %47 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %52 = load i32, i32* @PPSMC_MSG_UVDPowerON, align 4
  %53 = call i32 @amdgpu_kv_notify_message_to_smu(%struct.amdgpu_device* %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %45
  %55 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %56 = call i32 @kv_enable_smc_cac(%struct.amdgpu_device* %55, i32 0)
  %57 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %58 = call i32 @kv_enable_didt(%struct.amdgpu_device* %57, i32 0)
  %59 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %60 = call i32 @kv_clear_vc(%struct.amdgpu_device* %59)
  %61 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %62 = call i32 @kv_stop_dpm(%struct.amdgpu_device* %61)
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %64 = call i32 @kv_enable_ulv(%struct.amdgpu_device* %63, i32 0)
  %65 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %66 = call i32 @kv_reset_am(%struct.amdgpu_device* %65)
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %68 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %69 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @kv_update_current_ps(%struct.amdgpu_device* %67, i32 %72)
  ret void
}

declare dso_local %struct.kv_power_info* @kv_get_pi(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_irq_put(%struct.amdgpu_device*, i32*, i32) #1

declare dso_local i32 @amdgpu_kv_smc_bapm_enable(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @kv_enable_nb_dpm(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @kv_dpm_powergate_acp(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @kv_dpm_powergate_samu(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_kv_notify_message_to_smu(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @kv_enable_smc_cac(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @kv_enable_didt(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @kv_clear_vc(%struct.amdgpu_device*) #1

declare dso_local i32 @kv_stop_dpm(%struct.amdgpu_device*) #1

declare dso_local i32 @kv_enable_ulv(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @kv_reset_am(%struct.amdgpu_device*) #1

declare dso_local i32 @kv_update_current_ps(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
