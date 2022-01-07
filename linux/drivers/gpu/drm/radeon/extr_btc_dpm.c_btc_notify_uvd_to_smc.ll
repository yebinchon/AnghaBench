; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_btc_dpm.c_btc_notify_uvd_to_smc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_btc_dpm.c_btc_notify_uvd_to_smc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i32, i32 }
%struct.evergreen_power_info = type { i32 }

@RV770_SMC_SOFT_REGISTER_uvd_enabled = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btc_notify_uvd_to_smc(%struct.radeon_device* %0, %struct.radeon_ps* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ps*, align 8
  %5 = alloca %struct.evergreen_power_info*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %4, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device* %6)
  store %struct.evergreen_power_info* %7, %struct.evergreen_power_info** %5, align 8
  %8 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %9 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %12 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @r600_is_uvd_state(i32 %10, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %18 = load i32, i32* @RV770_SMC_SOFT_REGISTER_uvd_enabled, align 4
  %19 = call i32 @rv770_write_smc_soft_register(%struct.radeon_device* %17, i32 %18, i32 1)
  %20 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %21 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  br label %28

22:                                               ; preds = %2
  %23 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %24 = load i32, i32* @RV770_SMC_SOFT_REGISTER_uvd_enabled, align 4
  %25 = call i32 @rv770_write_smc_soft_register(%struct.radeon_device* %23, i32 %24, i32 0)
  %26 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %27 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  br label %28

28:                                               ; preds = %22, %16
  ret void
}

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device*) #1

declare dso_local i64 @r600_is_uvd_state(i32, i32) #1

declare dso_local i32 @rv770_write_smc_soft_register(%struct.radeon_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
