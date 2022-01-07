; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amd_powerplay.c_pp_dpm_get_current_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amd_powerplay.c_pp_dpm_get_current_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, %struct.pp_power_state*, i32 }
%struct.pp_power_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@POWER_STATE_TYPE_BATTERY = common dso_local global i32 0, align 4
@POWER_STATE_TYPE_BALANCED = common dso_local global i32 0, align 4
@POWER_STATE_TYPE_PERFORMANCE = common dso_local global i32 0, align 4
@PP_StateClassificationFlag_Boot = common dso_local global i32 0, align 4
@POWER_STATE_TYPE_INTERNAL_BOOT = common dso_local global i32 0, align 4
@POWER_STATE_TYPE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @pp_dpm_get_current_power_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pp_dpm_get_current_power_state(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca %struct.pp_power_state*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.pp_hwmgr*
  store %struct.pp_hwmgr* %8, %struct.pp_hwmgr** %4, align 8
  %9 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %10 = icmp ne %struct.pp_hwmgr* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %13 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %18 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %17, i32 0, i32 1
  %19 = load %struct.pp_power_state*, %struct.pp_power_state** %18, align 8
  %20 = icmp ne %struct.pp_power_state* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16, %11, %1
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %59

24:                                               ; preds = %16
  %25 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %26 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %29 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %28, i32 0, i32 1
  %30 = load %struct.pp_power_state*, %struct.pp_power_state** %29, align 8
  store %struct.pp_power_state* %30, %struct.pp_power_state** %5, align 8
  %31 = load %struct.pp_power_state*, %struct.pp_power_state** %5, align 8
  %32 = getelementptr inbounds %struct.pp_power_state, %struct.pp_power_state* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %41 [
    i32 129, label %35
    i32 130, label %37
    i32 128, label %39
  ]

35:                                               ; preds = %24
  %36 = load i32, i32* @POWER_STATE_TYPE_BATTERY, align 4
  store i32 %36, i32* %6, align 4
  br label %54

37:                                               ; preds = %24
  %38 = load i32, i32* @POWER_STATE_TYPE_BALANCED, align 4
  store i32 %38, i32* %6, align 4
  br label %54

39:                                               ; preds = %24
  %40 = load i32, i32* @POWER_STATE_TYPE_PERFORMANCE, align 4
  store i32 %40, i32* %6, align 4
  br label %54

41:                                               ; preds = %24
  %42 = load %struct.pp_power_state*, %struct.pp_power_state** %5, align 8
  %43 = getelementptr inbounds %struct.pp_power_state, %struct.pp_power_state* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @PP_StateClassificationFlag_Boot, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* @POWER_STATE_TYPE_INTERNAL_BOOT, align 4
  store i32 %50, i32* %6, align 4
  br label %53

51:                                               ; preds = %41
  %52 = load i32, i32* @POWER_STATE_TYPE_DEFAULT, align 4
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %51, %49
  br label %54

54:                                               ; preds = %53, %39, %37, %35
  %55 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %56 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %54, %21
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
