; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_kv_dpm.c_kv_dpm_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_kv_dpm.c_kv_dpm_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@CHIP_MULLINS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kv_dpm_disable(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %3 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %4 = call i32 @kv_smc_bapm_enable(%struct.radeon_device* %3, i32 0)
  %5 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %6 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @CHIP_MULLINS, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %12 = call i32 @kv_enable_nb_dpm(%struct.radeon_device* %11, i32 0)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %15 = call i32 @kv_dpm_powergate_acp(%struct.radeon_device* %14, i32 0)
  %16 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %17 = call i32 @kv_dpm_powergate_samu(%struct.radeon_device* %16, i32 0)
  %18 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %19 = call i32 @kv_dpm_powergate_vce(%struct.radeon_device* %18, i32 0)
  %20 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %21 = call i32 @kv_dpm_powergate_uvd(%struct.radeon_device* %20, i32 0)
  %22 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %23 = call i32 @kv_enable_smc_cac(%struct.radeon_device* %22, i32 0)
  %24 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %25 = call i32 @kv_enable_didt(%struct.radeon_device* %24, i32 0)
  %26 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %27 = call i32 @kv_clear_vc(%struct.radeon_device* %26)
  %28 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %29 = call i32 @kv_stop_dpm(%struct.radeon_device* %28)
  %30 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %31 = call i32 @kv_enable_ulv(%struct.radeon_device* %30, i32 0)
  %32 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %33 = call i32 @kv_reset_am(%struct.radeon_device* %32)
  %34 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %35 = call i32 @kv_enable_thermal_int(%struct.radeon_device* %34, i32 0)
  %36 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %37 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %38 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @kv_update_current_ps(%struct.radeon_device* %36, i32 %41)
  ret void
}

declare dso_local i32 @kv_smc_bapm_enable(%struct.radeon_device*, i32) #1

declare dso_local i32 @kv_enable_nb_dpm(%struct.radeon_device*, i32) #1

declare dso_local i32 @kv_dpm_powergate_acp(%struct.radeon_device*, i32) #1

declare dso_local i32 @kv_dpm_powergate_samu(%struct.radeon_device*, i32) #1

declare dso_local i32 @kv_dpm_powergate_vce(%struct.radeon_device*, i32) #1

declare dso_local i32 @kv_dpm_powergate_uvd(%struct.radeon_device*, i32) #1

declare dso_local i32 @kv_enable_smc_cac(%struct.radeon_device*, i32) #1

declare dso_local i32 @kv_enable_didt(%struct.radeon_device*, i32) #1

declare dso_local i32 @kv_clear_vc(%struct.radeon_device*) #1

declare dso_local i32 @kv_stop_dpm(%struct.radeon_device*) #1

declare dso_local i32 @kv_enable_ulv(%struct.radeon_device*, i32) #1

declare dso_local i32 @kv_reset_am(%struct.radeon_device*) #1

declare dso_local i32 @kv_enable_thermal_int(%struct.radeon_device*, i32) #1

declare dso_local i32 @kv_update_current_ps(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
