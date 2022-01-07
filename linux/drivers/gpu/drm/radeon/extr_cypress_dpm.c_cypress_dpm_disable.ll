; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_dpm_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_dpm_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.radeon_ps* }
%struct.radeon_ps = type { i32 }
%struct.rv7xx_power_info = type { i64, i64, i64, i64 }
%struct.evergreen_power_info = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cypress_dpm_disable(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.rv7xx_power_info*, align 8
  %4 = alloca %struct.evergreen_power_info*, align 8
  %5 = alloca %struct.radeon_ps*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %7 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %6)
  store %struct.rv7xx_power_info* %7, %struct.rv7xx_power_info** %3, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %9 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device* %8)
  store %struct.evergreen_power_info* %9, %struct.evergreen_power_info** %4, align 8
  %10 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %11 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.radeon_ps*, %struct.radeon_ps** %13, align 8
  store %struct.radeon_ps* %14, %struct.radeon_ps** %5, align 8
  %15 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %16 = call i32 @rv770_dpm_enabled(%struct.radeon_device* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %90

19:                                               ; preds = %1
  %20 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %21 = call i32 @rv770_clear_vc(%struct.radeon_device* %20)
  %22 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %3, align 8
  %23 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %28 = call i32 @rv770_enable_thermal_protection(%struct.radeon_device* %27, i32 0)
  br label %29

29:                                               ; preds = %26, %19
  %30 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %3, align 8
  %31 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %36 = call i32 @cypress_enable_dynamic_pcie_gen2(%struct.radeon_device* %35, i32 0)
  br label %37

37:                                               ; preds = %34, %29
  %38 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %39 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %37
  %44 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %45 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @r600_is_internal_thermal_sensor(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %52 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i32 0, i32* %53, align 8
  %54 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %55 = call i32 @radeon_irq_set(%struct.radeon_device* %54)
  br label %56

56:                                               ; preds = %50, %43, %37
  %57 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %3, align 8
  %58 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %63 = call i32 @cypress_gfx_clock_gating_enable(%struct.radeon_device* %62, i32 0)
  br label %64

64:                                               ; preds = %61, %56
  %65 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %3, align 8
  %66 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %71 = call i32 @cypress_mg_clock_gating_enable(%struct.radeon_device* %70, i32 0)
  br label %72

72:                                               ; preds = %69, %64
  %73 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %74 = call i32 @rv770_stop_dpm(%struct.radeon_device* %73)
  %75 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %76 = call i32 @r7xx_stop_smc(%struct.radeon_device* %75)
  %77 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %78 = call i32 @cypress_enable_spread_spectrum(%struct.radeon_device* %77, i32 0)
  %79 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %4, align 8
  %80 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %72
  %84 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %85 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %86 = call i32 @cypress_force_mc_use_s1(%struct.radeon_device* %84, %struct.radeon_ps* %85)
  br label %87

87:                                               ; preds = %83, %72
  %88 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %89 = call i32 @rv770_reset_smio_status(%struct.radeon_device* %88)
  br label %90

90:                                               ; preds = %87, %18
  ret void
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @rv770_dpm_enabled(%struct.radeon_device*) #1

declare dso_local i32 @rv770_clear_vc(%struct.radeon_device*) #1

declare dso_local i32 @rv770_enable_thermal_protection(%struct.radeon_device*, i32) #1

declare dso_local i32 @cypress_enable_dynamic_pcie_gen2(%struct.radeon_device*, i32) #1

declare dso_local i64 @r600_is_internal_thermal_sensor(i32) #1

declare dso_local i32 @radeon_irq_set(%struct.radeon_device*) #1

declare dso_local i32 @cypress_gfx_clock_gating_enable(%struct.radeon_device*, i32) #1

declare dso_local i32 @cypress_mg_clock_gating_enable(%struct.radeon_device*, i32) #1

declare dso_local i32 @rv770_stop_dpm(%struct.radeon_device*) #1

declare dso_local i32 @r7xx_stop_smc(%struct.radeon_device*) #1

declare dso_local i32 @cypress_enable_spread_spectrum(%struct.radeon_device*, i32) #1

declare dso_local i32 @cypress_force_mc_use_s1(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @rv770_reset_smio_status(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
