; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_btc_dpm.c_btc_dpm_setup_asic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_btc_dpm.c_btc_dpm_setup_asic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.evergreen_power_info = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"Failed to load MC firmware!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btc_dpm_setup_asic(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.evergreen_power_info*, align 8
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %5 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %6 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device* %5)
  store %struct.evergreen_power_info* %6, %struct.evergreen_power_info** %3, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %8 = call i32 @ni_mc_load_microcode(%struct.radeon_device* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %1
  %14 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %15 = call i32 @rv770_get_memory_type(%struct.radeon_device* %14)
  %16 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %17 = call i32 @rv740_read_clock_registers(%struct.radeon_device* %16)
  %18 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %19 = call i32 @btc_read_arb_registers(%struct.radeon_device* %18)
  %20 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %21 = call i32 @rv770_read_voltage_smio_registers(%struct.radeon_device* %20)
  %22 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %3, align 8
  %23 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %13
  %27 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %28 = call i32 @cypress_advertise_gen2_capability(%struct.radeon_device* %27)
  br label %29

29:                                               ; preds = %26, %13
  %30 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %31 = call i32 @rv770_get_pcie_gen2_status(%struct.radeon_device* %30)
  %32 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %33 = call i32 @rv770_enable_acpi_pm(%struct.radeon_device* %32)
  ret void
}

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @ni_mc_load_microcode(%struct.radeon_device*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @rv770_get_memory_type(%struct.radeon_device*) #1

declare dso_local i32 @rv740_read_clock_registers(%struct.radeon_device*) #1

declare dso_local i32 @btc_read_arb_registers(%struct.radeon_device*) #1

declare dso_local i32 @rv770_read_voltage_smio_registers(%struct.radeon_device*) #1

declare dso_local i32 @cypress_advertise_gen2_capability(%struct.radeon_device*) #1

declare dso_local i32 @rv770_get_pcie_gen2_status(%struct.radeon_device*) #1

declare dso_local i32 @rv770_enable_acpi_pm(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
