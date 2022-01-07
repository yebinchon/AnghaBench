; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_set_watermarks_for_clocks_ranges.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_set_watermarks_for_clocks_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.vega10_hwmgr* }
%struct.vega10_hwmgr = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.dm_pp_wm_sets_with_clock_ranges_soc15 = type { i32 }

@WaterMarksExist = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i8*)* @vega10_set_watermarks_for_clocks_ranges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega10_set_watermarks_for_clocks_ranges(%struct.pp_hwmgr* %0, i8* %1) #0 {
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vega10_hwmgr*, align 8
  %6 = alloca %struct.dm_pp_wm_sets_with_clock_ranges_soc15*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %10 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %9, i32 0, i32 0
  %11 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %10, align 8
  store %struct.vega10_hwmgr* %11, %struct.vega10_hwmgr** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.dm_pp_wm_sets_with_clock_ranges_soc15*
  store %struct.dm_pp_wm_sets_with_clock_ranges_soc15* %13, %struct.dm_pp_wm_sets_with_clock_ranges_soc15** %6, align 8
  %14 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %5, align 8
  %15 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32* %16, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %5, align 8
  %18 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %2
  %23 = load i32*, i32** %7, align 8
  %24 = load %struct.dm_pp_wm_sets_with_clock_ranges_soc15*, %struct.dm_pp_wm_sets_with_clock_ranges_soc15** %6, align 8
  %25 = call i32 @smu_set_watermarks_for_clocks_ranges(i32* %23, %struct.dm_pp_wm_sets_with_clock_ranges_soc15* %24)
  %26 = load i32, i32* @WaterMarksExist, align 4
  %27 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %5, align 8
  %28 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %22, %2
  %30 = load i32, i32* %8, align 4
  ret i32 %30
}

declare dso_local i32 @smu_set_watermarks_for_clocks_ranges(i32*, %struct.dm_pp_wm_sets_with_clock_ranges_soc15*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
