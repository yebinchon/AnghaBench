; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega20_hwmgr.c_vega20_set_fan_control_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega20_hwmgr.c_vega20_set_fan_control_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }

@PHM_PlatformCaps_MicrocodeFanControl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pp_hwmgr*, i32)* @vega20_set_fan_control_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vega20_set_fan_control_mode(%struct.pp_hwmgr* %0, i32 %1) #0 {
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %25 [
    i32 128, label %6
    i32 129, label %9
    i32 130, label %17
  ]

6:                                                ; preds = %2
  %7 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %8 = call i32 @vega20_fan_ctrl_set_fan_speed_percent(%struct.pp_hwmgr* %7, i32 100)
  br label %26

9:                                                ; preds = %2
  %10 = load i32, i32* @PHM_PlatformCaps_MicrocodeFanControl, align 4
  %11 = call i32 @PP_CAP(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %15 = call i32 @vega20_fan_ctrl_stop_smc_fan_control(%struct.pp_hwmgr* %14)
  br label %16

16:                                               ; preds = %13, %9
  br label %26

17:                                               ; preds = %2
  %18 = load i32, i32* @PHM_PlatformCaps_MicrocodeFanControl, align 4
  %19 = call i32 @PP_CAP(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %23 = call i32 @vega20_fan_ctrl_start_smc_fan_control(%struct.pp_hwmgr* %22)
  br label %24

24:                                               ; preds = %21, %17
  br label %26

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %25, %24, %16, %6
  ret void
}

declare dso_local i32 @vega20_fan_ctrl_set_fan_speed_percent(%struct.pp_hwmgr*, i32) #1

declare dso_local i32 @PP_CAP(i32) #1

declare dso_local i32 @vega20_fan_ctrl_stop_smc_fan_control(%struct.pp_hwmgr*) #1

declare dso_local i32 @vega20_fan_ctrl_start_smc_fan_control(%struct.pp_hwmgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
