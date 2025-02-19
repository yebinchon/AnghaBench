; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_thermal.c_smu7_start_thermal_controller.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_thermal.c_smu7_start_thermal_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }
%struct.PP_TemperatureRange = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smu7_start_thermal_controller(%struct.pp_hwmgr* %0, %struct.PP_TemperatureRange* %1) #0 {
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
  br label %43

12:                                               ; preds = %2
  %13 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %14 = call i32 @smu7_thermal_initialize(%struct.pp_hwmgr* %13)
  %15 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %16 = load %struct.PP_TemperatureRange*, %struct.PP_TemperatureRange** %5, align 8
  %17 = getelementptr inbounds %struct.PP_TemperatureRange, %struct.PP_TemperatureRange* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.PP_TemperatureRange*, %struct.PP_TemperatureRange** %5, align 8
  %20 = getelementptr inbounds %struct.PP_TemperatureRange, %struct.PP_TemperatureRange* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @smu7_thermal_set_temperature_range(%struct.pp_hwmgr* %15, i32 %18, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %12
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %43

28:                                               ; preds = %12
  %29 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %30 = call i32 @smu7_thermal_enable_alert(%struct.pp_hwmgr* %29)
  %31 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %32 = call i32 @smum_thermal_avfs_enable(%struct.pp_hwmgr* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %43

38:                                               ; preds = %28
  %39 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %40 = call i32 @smum_thermal_setup_fan_table(%struct.pp_hwmgr* %39)
  %41 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %42 = call i32 @smu7_thermal_start_smc_fan_control(%struct.pp_hwmgr* %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %38, %35, %25, %9
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @smu7_thermal_initialize(%struct.pp_hwmgr*) #1

declare dso_local i32 @smu7_thermal_set_temperature_range(%struct.pp_hwmgr*, i32, i32) #1

declare dso_local i32 @smu7_thermal_enable_alert(%struct.pp_hwmgr*) #1

declare dso_local i32 @smum_thermal_avfs_enable(%struct.pp_hwmgr*) #1

declare dso_local i32 @smum_thermal_setup_fan_table(%struct.pp_hwmgr*) #1

declare dso_local i32 @smu7_thermal_start_smc_fan_control(%struct.pp_hwmgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
