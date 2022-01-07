; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega20_hwmgr.c_vega20_get_memclocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega20_hwmgr.c_vega20_get_memclocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64 }
%struct.pp_clock_levels_with_latency = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.vega20_hwmgr = type { %struct.TYPE_11__, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.vega20_single_dpm_table }
%struct.vega20_single_dpm_table = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

@GNLD_DPM_UCLK = common dso_local global i64 0, align 8
@MAX_NUM_CLOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.pp_clock_levels_with_latency*)* @vega20_get_memclocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega20_get_memclocks(%struct.pp_hwmgr* %0, %struct.pp_clock_levels_with_latency* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca %struct.pp_clock_levels_with_latency*, align 8
  %6 = alloca %struct.vega20_hwmgr*, align 8
  %7 = alloca %struct.vega20_single_dpm_table*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store %struct.pp_clock_levels_with_latency* %1, %struct.pp_clock_levels_with_latency** %5, align 8
  %10 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %11 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.vega20_hwmgr*
  store %struct.vega20_hwmgr* %13, %struct.vega20_hwmgr** %6, align 8
  %14 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %6, align 8
  %15 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  store %struct.vega20_single_dpm_table* %16, %struct.vega20_single_dpm_table** %7, align 8
  %17 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %6, align 8
  %18 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %17, i32 0, i32 1
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = load i64, i64* @GNLD_DPM_UCLK, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %104

26:                                               ; preds = %2
  %27 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %7, align 8
  %28 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @MAX_NUM_CLOCKS, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @MAX_NUM_CLOCKS, align 4
  br label %38

34:                                               ; preds = %26
  %35 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %7, align 8
  %36 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  br label %38

38:                                               ; preds = %34, %32
  %39 = phi i32 [ %33, %32 ], [ %37, %34 ]
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %6, align 8
  %42 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 8
  %44 = load %struct.pp_clock_levels_with_latency*, %struct.pp_clock_levels_with_latency** %5, align 8
  %45 = getelementptr inbounds %struct.pp_clock_levels_with_latency, %struct.pp_clock_levels_with_latency* %44, i32 0, i32 0
  store i32 %40, i32* %45, align 8
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %100, %38
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %103

50:                                               ; preds = %46
  %51 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %7, align 8
  %52 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %51, i32 0, i32 1
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %58, 1000
  %60 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %6, align 8
  %61 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  store i32 %59, i32* %67, align 4
  %68 = load %struct.pp_clock_levels_with_latency*, %struct.pp_clock_levels_with_latency** %5, align 8
  %69 = getelementptr inbounds %struct.pp_clock_levels_with_latency, %struct.pp_clock_levels_with_latency* %68, i32 0, i32 1
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  store i32 %59, i32* %74, align 4
  %75 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %76 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %7, align 8
  %77 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %76, i32 0, i32 1
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @vega20_get_mem_latency(%struct.pp_hwmgr* %75, i32 %83)
  %85 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %6, align 8
  %86 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  store i32 %84, i32* %92, align 4
  %93 = load %struct.pp_clock_levels_with_latency*, %struct.pp_clock_levels_with_latency** %5, align 8
  %94 = getelementptr inbounds %struct.pp_clock_levels_with_latency, %struct.pp_clock_levels_with_latency* %93, i32 0, i32 1
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  store i32 %84, i32* %99, align 4
  br label %100

100:                                              ; preds = %50
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %46

103:                                              ; preds = %46
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %103, %25
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @vega20_get_mem_latency(%struct.pp_hwmgr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
