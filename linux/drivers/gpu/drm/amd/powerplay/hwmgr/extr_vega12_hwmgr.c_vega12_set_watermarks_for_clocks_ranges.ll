; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega12_hwmgr.c_vega12_set_watermarks_for_clocks_ranges.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega12_hwmgr.c_vega12_set_watermarks_for_clocks_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64 }
%struct.vega12_hwmgr = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.dm_pp_wm_sets_with_clock_ranges_soc15 = type { i32 }

@GNLD_DPM_DCEFCLK = common dso_local global i64 0, align 8
@GNLD_DPM_SOCCLK = common dso_local global i64 0, align 8
@WaterMarksExist = common dso_local global i32 0, align 4
@WaterMarksLoaded = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i8*)* @vega12_set_watermarks_for_clocks_ranges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega12_set_watermarks_for_clocks_ranges(%struct.pp_hwmgr* %0, i8* %1) #0 {
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vega12_hwmgr*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.dm_pp_wm_sets_with_clock_ranges_soc15*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %9 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.vega12_hwmgr*
  store %struct.vega12_hwmgr* %11, %struct.vega12_hwmgr** %5, align 8
  %12 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %5, align 8
  %13 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i32* %14, i32** %6, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.dm_pp_wm_sets_with_clock_ranges_soc15*
  store %struct.dm_pp_wm_sets_with_clock_ranges_soc15* %16, %struct.dm_pp_wm_sets_with_clock_ranges_soc15** %7, align 8
  %17 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %5, align 8
  %18 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %55, label %22

22:                                               ; preds = %2
  %23 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %5, align 8
  %24 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = load i64, i64* @GNLD_DPM_DCEFCLK, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %55

31:                                               ; preds = %22
  %32 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %5, align 8
  %33 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %32, i32 0, i32 1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = load i64, i64* @GNLD_DPM_SOCCLK, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %31
  %41 = load i32*, i32** %6, align 8
  %42 = load %struct.dm_pp_wm_sets_with_clock_ranges_soc15*, %struct.dm_pp_wm_sets_with_clock_ranges_soc15** %7, align 8
  %43 = call i32 @smu_set_watermarks_for_clocks_ranges(i32* %41, %struct.dm_pp_wm_sets_with_clock_ranges_soc15* %42)
  %44 = load i32, i32* @WaterMarksExist, align 4
  %45 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %5, align 8
  %46 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load i32, i32* @WaterMarksLoaded, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %5, align 8
  %52 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %40, %31, %22, %2
  ret i32 0
}

declare dso_local i32 @smu_set_watermarks_for_clocks_ranges(i32*, %struct.dm_pp_wm_sets_with_clock_ranges_soc15*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
