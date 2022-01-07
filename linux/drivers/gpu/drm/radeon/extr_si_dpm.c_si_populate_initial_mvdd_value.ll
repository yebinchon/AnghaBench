; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_populate_initial_mvdd_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_populate_initial_mvdd_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.SISLANDS_SMC_VOLTAGE_VALUE = type { i32 }
%struct.rv7xx_power_info = type { i64 }
%struct.si_power_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.SISLANDS_SMC_VOLTAGE_VALUE*)* @si_populate_initial_mvdd_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_populate_initial_mvdd_value(%struct.radeon_device* %0, %struct.SISLANDS_SMC_VOLTAGE_VALUE* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.SISLANDS_SMC_VOLTAGE_VALUE*, align 8
  %6 = alloca %struct.rv7xx_power_info*, align 8
  %7 = alloca %struct.si_power_info*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.SISLANDS_SMC_VOLTAGE_VALUE* %1, %struct.SISLANDS_SMC_VOLTAGE_VALUE** %5, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %9 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %8)
  store %struct.rv7xx_power_info* %9, %struct.rv7xx_power_info** %6, align 8
  %10 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %11 = call %struct.si_power_info* @si_get_pi(%struct.radeon_device* %10)
  store %struct.si_power_info* %11, %struct.si_power_info** %7, align 8
  %12 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %6, align 8
  %13 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %18 = load %struct.si_power_info*, %struct.si_power_info** %7, align 8
  %19 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %18, i32 0, i32 1
  %20 = load %struct.si_power_info*, %struct.si_power_info** %7, align 8
  %21 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.SISLANDS_SMC_VOLTAGE_VALUE*, %struct.SISLANDS_SMC_VOLTAGE_VALUE** %5, align 8
  %24 = call i32 @si_populate_voltage_value(%struct.radeon_device* %17, i32* %19, i32 %22, %struct.SISLANDS_SMC_VOLTAGE_VALUE* %23)
  store i32 %24, i32* %3, align 4
  br label %26

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %16
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.si_power_info* @si_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @si_populate_voltage_value(%struct.radeon_device*, i32*, i32, %struct.SISLANDS_SMC_VOLTAGE_VALUE*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
