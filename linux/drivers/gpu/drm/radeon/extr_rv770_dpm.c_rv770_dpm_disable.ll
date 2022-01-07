; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_dpm_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_dpm_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.rv7xx_power_info = type { i64, i64, i64, i64 }

@CHIP_RV730 = common dso_local global i64 0, align 8
@CHIP_RV710 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rv770_dpm_disable(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.rv7xx_power_info*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %4 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %5 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %4)
  store %struct.rv7xx_power_info* %5, %struct.rv7xx_power_info** %3, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %7 = call i32 @rv770_dpm_enabled(%struct.radeon_device* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %88

10:                                               ; preds = %1
  %11 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %12 = call i32 @rv770_clear_vc(%struct.radeon_device* %11)
  %13 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %3, align 8
  %14 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %19 = call i32 @rv770_enable_thermal_protection(%struct.radeon_device* %18, i32 0)
  br label %20

20:                                               ; preds = %17, %10
  %21 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %22 = call i32 @rv770_enable_spread_spectrum(%struct.radeon_device* %21, i32 0)
  %23 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %3, align 8
  %24 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %29 = call i32 @rv770_enable_dynamic_pcie_gen2(%struct.radeon_device* %28, i32 0)
  br label %30

30:                                               ; preds = %27, %20
  %31 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %32 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %30
  %37 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %38 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @r600_is_internal_thermal_sensor(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %45 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  %47 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %48 = call i32 @radeon_irq_set(%struct.radeon_device* %47)
  br label %49

49:                                               ; preds = %43, %36, %30
  %50 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %3, align 8
  %51 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %56 = call i32 @rv770_gfx_clock_gating_enable(%struct.radeon_device* %55, i32 0)
  br label %57

57:                                               ; preds = %54, %49
  %58 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %3, align 8
  %59 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %64 = call i32 @rv770_mg_clock_gating_enable(%struct.radeon_device* %63, i32 0)
  br label %65

65:                                               ; preds = %62, %57
  %66 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %67 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @CHIP_RV730, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %77, label %71

71:                                               ; preds = %65
  %72 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %73 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @CHIP_RV710, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %71, %65
  %78 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %79 = call i32 @rv730_stop_dpm(%struct.radeon_device* %78)
  br label %83

80:                                               ; preds = %71
  %81 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %82 = call i32 @rv770_stop_dpm(%struct.radeon_device* %81)
  br label %83

83:                                               ; preds = %80, %77
  %84 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %85 = call i32 @r7xx_stop_smc(%struct.radeon_device* %84)
  %86 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %87 = call i32 @rv770_reset_smio_status(%struct.radeon_device* %86)
  br label %88

88:                                               ; preds = %83, %9
  ret void
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @rv770_dpm_enabled(%struct.radeon_device*) #1

declare dso_local i32 @rv770_clear_vc(%struct.radeon_device*) #1

declare dso_local i32 @rv770_enable_thermal_protection(%struct.radeon_device*, i32) #1

declare dso_local i32 @rv770_enable_spread_spectrum(%struct.radeon_device*, i32) #1

declare dso_local i32 @rv770_enable_dynamic_pcie_gen2(%struct.radeon_device*, i32) #1

declare dso_local i64 @r600_is_internal_thermal_sensor(i32) #1

declare dso_local i32 @radeon_irq_set(%struct.radeon_device*) #1

declare dso_local i32 @rv770_gfx_clock_gating_enable(%struct.radeon_device*, i32) #1

declare dso_local i32 @rv770_mg_clock_gating_enable(%struct.radeon_device*, i32) #1

declare dso_local i32 @rv730_stop_dpm(%struct.radeon_device*) #1

declare dso_local i32 @rv770_stop_dpm(%struct.radeon_device*) #1

declare dso_local i32 @r7xx_stop_smc(%struct.radeon_device*) #1

declare dso_local i32 @rv770_reset_smio_status(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
