; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega12_hwmgr.c_vega12_get_socclocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega12_hwmgr.c_vega12_get_socclocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64 }
%struct.pp_clock_levels_with_latency = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i64 }
%struct.vega12_hwmgr = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.vega12_single_dpm_table }
%struct.vega12_single_dpm_table = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@GNLD_DPM_SOCCLK = common dso_local global i64 0, align 8
@MAX_NUM_CLOCKS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.pp_clock_levels_with_latency*)* @vega12_get_socclocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega12_get_socclocks(%struct.pp_hwmgr* %0, %struct.pp_clock_levels_with_latency* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca %struct.pp_clock_levels_with_latency*, align 8
  %6 = alloca %struct.vega12_hwmgr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vega12_single_dpm_table*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store %struct.pp_clock_levels_with_latency* %1, %struct.pp_clock_levels_with_latency** %5, align 8
  %10 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %11 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.vega12_hwmgr*
  store %struct.vega12_hwmgr* %13, %struct.vega12_hwmgr** %6, align 8
  %14 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %6, align 8
  %15 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = load i64, i64* @GNLD_DPM_SOCCLK, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %76

23:                                               ; preds = %2
  %24 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %6, align 8
  %25 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store %struct.vega12_single_dpm_table* %26, %struct.vega12_single_dpm_table** %9, align 8
  %27 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %9, align 8
  %28 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MAX_NUM_CLOCKS, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i64, i64* @MAX_NUM_CLOCKS, align 8
  br label %38

34:                                               ; preds = %23
  %35 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %9, align 8
  %36 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  br label %38

38:                                               ; preds = %34, %32
  %39 = phi i64 [ %33, %32 ], [ %37, %34 ]
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %69, %38
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %72

45:                                               ; preds = %41
  %46 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %9, align 8
  %47 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %46, i32 0, i32 1
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %53, 1000
  %55 = load %struct.pp_clock_levels_with_latency*, %struct.pp_clock_levels_with_latency** %5, align 8
  %56 = getelementptr inbounds %struct.pp_clock_levels_with_latency, %struct.pp_clock_levels_with_latency* %55, i32 0, i32 1
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  store i32 %54, i32* %61, align 8
  %62 = load %struct.pp_clock_levels_with_latency*, %struct.pp_clock_levels_with_latency** %5, align 8
  %63 = getelementptr inbounds %struct.pp_clock_levels_with_latency, %struct.pp_clock_levels_with_latency* %62, i32 0, i32 1
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  store i64 0, i64* %68, align 8
  br label %69

69:                                               ; preds = %45
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %41

72:                                               ; preds = %41
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.pp_clock_levels_with_latency*, %struct.pp_clock_levels_with_latency** %5, align 8
  %75 = getelementptr inbounds %struct.pp_clock_levels_with_latency, %struct.pp_clock_levels_with_latency* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %72, %22
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
