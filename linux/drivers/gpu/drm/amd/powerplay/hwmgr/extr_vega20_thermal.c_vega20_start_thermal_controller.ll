; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega20_thermal.c_vega20_start_thermal_controller.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega20_thermal.c_vega20_start_thermal_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }
%struct.PP_TemperatureRange = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vega20_start_thermal_controller(%struct.pp_hwmgr* %0, %struct.PP_TemperatureRange* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca %struct.PP_TemperatureRange*, align 8
  %6 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store %struct.PP_TemperatureRange* %1, %struct.PP_TemperatureRange** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.PP_TemperatureRange*, %struct.PP_TemperatureRange** %5, align 8
  %8 = icmp eq %struct.PP_TemperatureRange* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %31

12:                                               ; preds = %2
  %13 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %14 = load %struct.PP_TemperatureRange*, %struct.PP_TemperatureRange** %5, align 8
  %15 = call i32 @vega20_thermal_set_temperature_range(%struct.pp_hwmgr* %13, %struct.PP_TemperatureRange* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %31

20:                                               ; preds = %12
  %21 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %22 = call i32 @vega20_thermal_enable_alert(%struct.pp_hwmgr* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %31

27:                                               ; preds = %20
  %28 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %29 = call i32 @vega20_thermal_setup_fan_table(%struct.pp_hwmgr* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %27, %25, %18, %9
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @vega20_thermal_set_temperature_range(%struct.pp_hwmgr*, %struct.PP_TemperatureRange*) #1

declare dso_local i32 @vega20_thermal_enable_alert(%struct.pp_hwmgr*) #1

declare dso_local i32 @vega20_thermal_setup_fan_table(%struct.pp_hwmgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
