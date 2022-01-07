; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_kv_dpm.c_kv_set_enabled_levels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_kv_dpm.c_kv_set_enabled_levels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.kv_power_info = type { i32, i32 }

@PPSMC_MSG_SCLKDPM_SetEnabledMask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @kv_set_enabled_levels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kv_set_enabled_levels(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.kv_power_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %7 = call %struct.kv_power_info* @kv_get_pi(%struct.radeon_device* %6)
  store %struct.kv_power_info* %7, %struct.kv_power_info** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.kv_power_info*, %struct.kv_power_info** %3, align 8
  %9 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  br label %11

11:                                               ; preds = %22, %1
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.kv_power_info*, %struct.kv_power_info** %3, align 8
  %14 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp sle i32 %12, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %11
  %18 = load i32, i32* %4, align 4
  %19 = shl i32 1, %18
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %11

25:                                               ; preds = %11
  %26 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %27 = load i32, i32* @PPSMC_MSG_SCLKDPM_SetEnabledMask, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @kv_send_msg_to_smc_with_parameter(%struct.radeon_device* %26, i32 %27, i32 %28)
  ret i32 %29
}

declare dso_local %struct.kv_power_info* @kv_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @kv_send_msg_to_smc_with_parameter(%struct.radeon_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
