; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_thermal.c_vega10_fan_ctrl_get_fan_speed_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_thermal.c_vega10_fan_ctrl_get_fan_speed_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }
%struct.phm_fan_speed_info = type { i32, i32, i32, i32, i32, i64, i64, i64 }

@PHM_PlatformCaps_FanSpeedInTableIsRPM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vega10_fan_ctrl_get_fan_speed_info(%struct.pp_hwmgr* %0, %struct.phm_fan_speed_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca %struct.phm_fan_speed_info*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store %struct.phm_fan_speed_info* %1, %struct.phm_fan_speed_info** %5, align 8
  %6 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %7 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %57

13:                                               ; preds = %2
  %14 = load %struct.phm_fan_speed_info*, %struct.phm_fan_speed_info** %5, align 8
  %15 = getelementptr inbounds %struct.phm_fan_speed_info, %struct.phm_fan_speed_info* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load %struct.phm_fan_speed_info*, %struct.phm_fan_speed_info** %5, align 8
  %17 = getelementptr inbounds %struct.phm_fan_speed_info, %struct.phm_fan_speed_info* %16, i32 0, i32 1
  store i32 1, i32* %17, align 4
  %18 = load %struct.phm_fan_speed_info*, %struct.phm_fan_speed_info** %5, align 8
  %19 = getelementptr inbounds %struct.phm_fan_speed_info, %struct.phm_fan_speed_info* %18, i32 0, i32 7
  store i64 0, i64* %19, align 8
  %20 = load %struct.phm_fan_speed_info*, %struct.phm_fan_speed_info** %5, align 8
  %21 = getelementptr inbounds %struct.phm_fan_speed_info, %struct.phm_fan_speed_info* %20, i32 0, i32 2
  store i32 100, i32* %21, align 8
  %22 = load i32, i32* @PHM_PlatformCaps_FanSpeedInTableIsRPM, align 4
  %23 = call i64 @PP_CAP(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %51

25:                                               ; preds = %13
  %26 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %27 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %25
  %33 = load %struct.phm_fan_speed_info*, %struct.phm_fan_speed_info** %5, align 8
  %34 = getelementptr inbounds %struct.phm_fan_speed_info, %struct.phm_fan_speed_info* %33, i32 0, i32 3
  store i32 1, i32* %34, align 4
  %35 = load %struct.phm_fan_speed_info*, %struct.phm_fan_speed_info** %5, align 8
  %36 = getelementptr inbounds %struct.phm_fan_speed_info, %struct.phm_fan_speed_info* %35, i32 0, i32 4
  store i32 1, i32* %36, align 8
  %37 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %38 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.phm_fan_speed_info*, %struct.phm_fan_speed_info** %5, align 8
  %43 = getelementptr inbounds %struct.phm_fan_speed_info, %struct.phm_fan_speed_info* %42, i32 0, i32 6
  store i64 %41, i64* %43, align 8
  %44 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %45 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.phm_fan_speed_info*, %struct.phm_fan_speed_info** %5, align 8
  %50 = getelementptr inbounds %struct.phm_fan_speed_info, %struct.phm_fan_speed_info* %49, i32 0, i32 5
  store i64 %48, i64* %50, align 8
  br label %56

51:                                               ; preds = %25, %13
  %52 = load %struct.phm_fan_speed_info*, %struct.phm_fan_speed_info** %5, align 8
  %53 = getelementptr inbounds %struct.phm_fan_speed_info, %struct.phm_fan_speed_info* %52, i32 0, i32 6
  store i64 0, i64* %53, align 8
  %54 = load %struct.phm_fan_speed_info*, %struct.phm_fan_speed_info** %5, align 8
  %55 = getelementptr inbounds %struct.phm_fan_speed_info, %struct.phm_fan_speed_info* %54, i32 0, i32 5
  store i64 0, i64* %55, align 8
  br label %56

56:                                               ; preds = %51, %32
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %12
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i64 @PP_CAP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
