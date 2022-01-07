; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_dpm_setup_asic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_dpm_setup_asic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.rv7xx_power_info = type { i64 }

@radeon_aspm = common dso_local global i64 0, align 8
@ATOM_PP_PLATFORM_CAP_ASPM_L0s = common dso_local global i32 0, align 4
@ATOM_PP_PLATFORM_CAP_ASPM_L1 = common dso_local global i32 0, align 4
@ATOM_PP_PLATFORM_CAP_TURNOFFPLL_ASPML1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rv770_dpm_setup_asic(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.rv7xx_power_info*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %4 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %5 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %4)
  store %struct.rv7xx_power_info* %5, %struct.rv7xx_power_info** %3, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %7 = call i32 @r7xx_read_clock_registers(%struct.radeon_device* %6)
  %8 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %9 = call i32 @rv770_read_voltage_smio_registers(%struct.radeon_device* %8)
  %10 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %11 = call i32 @rv770_get_memory_type(%struct.radeon_device* %10)
  %12 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %3, align 8
  %13 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %18 = call i32 @rv770_get_mclk_odt_threshold(%struct.radeon_device* %17)
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %21 = call i32 @rv770_get_pcie_gen2_status(%struct.radeon_device* %20)
  %22 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %23 = call i32 @rv770_enable_acpi_pm(%struct.radeon_device* %22)
  %24 = load i64, i64* @radeon_aspm, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %63

26:                                               ; preds = %19
  %27 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %28 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ATOM_PP_PLATFORM_CAP_ASPM_L0s, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %37 = call i32 @rv770_enable_l0s(%struct.radeon_device* %36)
  br label %38

38:                                               ; preds = %35, %26
  %39 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %40 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ATOM_PP_PLATFORM_CAP_ASPM_L1, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %49 = call i32 @rv770_enable_l1(%struct.radeon_device* %48)
  br label %50

50:                                               ; preds = %47, %38
  %51 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %52 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @ATOM_PP_PLATFORM_CAP_TURNOFFPLL_ASPML1, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %61 = call i32 @rv770_enable_pll_sleep_in_l1(%struct.radeon_device* %60)
  br label %62

62:                                               ; preds = %59, %50
  br label %63

63:                                               ; preds = %62, %19
  ret void
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @r7xx_read_clock_registers(%struct.radeon_device*) #1

declare dso_local i32 @rv770_read_voltage_smio_registers(%struct.radeon_device*) #1

declare dso_local i32 @rv770_get_memory_type(%struct.radeon_device*) #1

declare dso_local i32 @rv770_get_mclk_odt_threshold(%struct.radeon_device*) #1

declare dso_local i32 @rv770_get_pcie_gen2_status(%struct.radeon_device*) #1

declare dso_local i32 @rv770_enable_acpi_pm(%struct.radeon_device*) #1

declare dso_local i32 @rv770_enable_l0s(%struct.radeon_device*) #1

declare dso_local i32 @rv770_enable_l1(%struct.radeon_device*) #1

declare dso_local i32 @rv770_enable_pll_sleep_in_l1(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
