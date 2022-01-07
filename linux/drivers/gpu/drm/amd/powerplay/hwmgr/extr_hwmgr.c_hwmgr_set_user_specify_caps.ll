; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_hwmgr.c_hwmgr_set_user_specify_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_hwmgr.c_hwmgr_set_user_specify_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PP_SCLK_DEEP_SLEEP_MASK = common dso_local global i32 0, align 4
@PHM_PlatformCaps_SclkDeepSleep = common dso_local global i32 0, align 4
@PP_POWER_CONTAINMENT_MASK = common dso_local global i32 0, align 4
@PHM_PlatformCaps_PowerContainment = common dso_local global i32 0, align 4
@PHM_PlatformCaps_CAC = common dso_local global i32 0, align 4
@PP_OVERDRIVE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hwmgr_set_user_specify_caps(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %3 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %4 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @PP_SCLK_DEEP_SLEEP_MASK, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %11 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @PHM_PlatformCaps_SclkDeepSleep, align 4
  %15 = call i32 @phm_cap_set(i32 %13, i32 %14)
  br label %23

16:                                               ; preds = %1
  %17 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %18 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @PHM_PlatformCaps_SclkDeepSleep, align 4
  %22 = call i32 @phm_cap_unset(i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %16, %9
  %24 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %25 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @PP_POWER_CONTAINMENT_MASK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %23
  %31 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %32 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @PHM_PlatformCaps_PowerContainment, align 4
  %36 = call i32 @phm_cap_set(i32 %34, i32 %35)
  %37 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %38 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @PHM_PlatformCaps_CAC, align 4
  %42 = call i32 @phm_cap_set(i32 %40, i32 %41)
  br label %56

43:                                               ; preds = %23
  %44 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %45 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @PHM_PlatformCaps_PowerContainment, align 4
  %49 = call i32 @phm_cap_unset(i32 %47, i32 %48)
  %50 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %51 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @PHM_PlatformCaps_CAC, align 4
  %55 = call i32 @phm_cap_unset(i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %43, %30
  %57 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %58 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @PP_OVERDRIVE_MASK, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %65 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %64, i32 0, i32 1
  store i32 1, i32* %65, align 4
  br label %66

66:                                               ; preds = %63, %56
  ret i32 0
}

declare dso_local i32 @phm_cap_set(i32, i32) #1

declare dso_local i32 @phm_cap_unset(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
