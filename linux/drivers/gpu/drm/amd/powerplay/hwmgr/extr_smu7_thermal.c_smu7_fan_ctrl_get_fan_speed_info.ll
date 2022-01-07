; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_thermal.c_smu7_fan_ctrl_get_fan_speed_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_thermal.c_smu7_fan_ctrl_get_fan_speed_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }
%struct.phm_fan_speed_info = type { i32, i32, i32, i32, i32, i64, i64, i64 }

@ENODEV = common dso_local global i32 0, align 4
@PHM_PlatformCaps_FanSpeedInTableIsRPM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smu7_fan_ctrl_get_fan_speed_info(%struct.pp_hwmgr* %0, %struct.phm_fan_speed_info* %1) #0 {
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
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %59

15:                                               ; preds = %2
  %16 = load %struct.phm_fan_speed_info*, %struct.phm_fan_speed_info** %5, align 8
  %17 = getelementptr inbounds %struct.phm_fan_speed_info, %struct.phm_fan_speed_info* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load %struct.phm_fan_speed_info*, %struct.phm_fan_speed_info** %5, align 8
  %19 = getelementptr inbounds %struct.phm_fan_speed_info, %struct.phm_fan_speed_info* %18, i32 0, i32 1
  store i32 1, i32* %19, align 4
  %20 = load %struct.phm_fan_speed_info*, %struct.phm_fan_speed_info** %5, align 8
  %21 = getelementptr inbounds %struct.phm_fan_speed_info, %struct.phm_fan_speed_info* %20, i32 0, i32 7
  store i64 0, i64* %21, align 8
  %22 = load %struct.phm_fan_speed_info*, %struct.phm_fan_speed_info** %5, align 8
  %23 = getelementptr inbounds %struct.phm_fan_speed_info, %struct.phm_fan_speed_info* %22, i32 0, i32 2
  store i32 100, i32* %23, align 8
  %24 = load i32, i32* @PHM_PlatformCaps_FanSpeedInTableIsRPM, align 4
  %25 = call i64 @PP_CAP(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %53

27:                                               ; preds = %15
  %28 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %29 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %27
  %35 = load %struct.phm_fan_speed_info*, %struct.phm_fan_speed_info** %5, align 8
  %36 = getelementptr inbounds %struct.phm_fan_speed_info, %struct.phm_fan_speed_info* %35, i32 0, i32 3
  store i32 1, i32* %36, align 4
  %37 = load %struct.phm_fan_speed_info*, %struct.phm_fan_speed_info** %5, align 8
  %38 = getelementptr inbounds %struct.phm_fan_speed_info, %struct.phm_fan_speed_info* %37, i32 0, i32 4
  store i32 1, i32* %38, align 8
  %39 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %40 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.phm_fan_speed_info*, %struct.phm_fan_speed_info** %5, align 8
  %45 = getelementptr inbounds %struct.phm_fan_speed_info, %struct.phm_fan_speed_info* %44, i32 0, i32 6
  store i64 %43, i64* %45, align 8
  %46 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %47 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.phm_fan_speed_info*, %struct.phm_fan_speed_info** %5, align 8
  %52 = getelementptr inbounds %struct.phm_fan_speed_info, %struct.phm_fan_speed_info* %51, i32 0, i32 5
  store i64 %50, i64* %52, align 8
  br label %58

53:                                               ; preds = %27, %15
  %54 = load %struct.phm_fan_speed_info*, %struct.phm_fan_speed_info** %5, align 8
  %55 = getelementptr inbounds %struct.phm_fan_speed_info, %struct.phm_fan_speed_info* %54, i32 0, i32 6
  store i64 0, i64* %55, align 8
  %56 = load %struct.phm_fan_speed_info*, %struct.phm_fan_speed_info** %5, align 8
  %57 = getelementptr inbounds %struct.phm_fan_speed_info, %struct.phm_fan_speed_info* %56, i32 0, i32 5
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %53, %34
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %12
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @PP_CAP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
