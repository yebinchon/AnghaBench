; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_get_profiling_clk_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_get_profiling_clk_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, i32, i64 }
%struct.phm_ppt_v2_information = type { %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@VEGA10_UMD_PSTATE_GFXCLK_LEVEL = common dso_local global i64 0, align 8
@VEGA10_UMD_PSTATE_SOCCLK_LEVEL = common dso_local global i64 0, align 8
@VEGA10_UMD_PSTATE_MCLK_LEVEL = common dso_local global i64 0, align 8
@AMD_DPM_FORCED_LEVEL_PROFILE_MIN_SCLK = common dso_local global i32 0, align 4
@AMD_DPM_FORCED_LEVEL_PROFILE_MIN_MCLK = common dso_local global i32 0, align 4
@AMD_DPM_FORCED_LEVEL_PROFILE_PEAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i32, i64*, i64*, i64*)* @vega10_get_profiling_clk_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega10_get_profiling_clk_mask(%struct.pp_hwmgr* %0, i32 %1, i64* %2, i64* %3, i64* %4) #0 {
  %6 = alloca %struct.pp_hwmgr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.phm_ppt_v2_information*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  %12 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %13 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.phm_ppt_v2_information*
  store %struct.phm_ppt_v2_information* %15, %struct.phm_ppt_v2_information** %11, align 8
  %16 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %11, align 8
  %17 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %16, i32 0, i32 2
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @VEGA10_UMD_PSTATE_GFXCLK_LEVEL, align 8
  %22 = icmp ugt i64 %20, %21
  br i1 %22, label %23, label %68

23:                                               ; preds = %5
  %24 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %11, align 8
  %25 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %24, i32 0, i32 1
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @VEGA10_UMD_PSTATE_SOCCLK_LEVEL, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %68

31:                                               ; preds = %23
  %32 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %11, align 8
  %33 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %32, i32 0, i32 0
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @VEGA10_UMD_PSTATE_MCLK_LEVEL, align 8
  %38 = icmp ugt i64 %36, %37
  br i1 %38, label %39, label %68

39:                                               ; preds = %31
  %40 = load i64, i64* @VEGA10_UMD_PSTATE_GFXCLK_LEVEL, align 8
  %41 = load i64*, i64** %8, align 8
  store i64 %40, i64* %41, align 8
  %42 = load i64, i64* @VEGA10_UMD_PSTATE_SOCCLK_LEVEL, align 8
  %43 = load i64*, i64** %10, align 8
  store i64 %42, i64* %43, align 8
  %44 = load i64, i64* @VEGA10_UMD_PSTATE_MCLK_LEVEL, align 8
  %45 = load i64*, i64** %9, align 8
  store i64 %44, i64* %45, align 8
  %46 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %11, align 8
  %47 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %46, i32 0, i32 2
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = load i64, i64* @VEGA10_UMD_PSTATE_GFXCLK_LEVEL, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %56 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %11, align 8
  %58 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %57, i32 0, i32 0
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = load i64, i64* @VEGA10_UMD_PSTATE_MCLK_LEVEL, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %67 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  br label %68

68:                                               ; preds = %39, %31, %23, %5
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @AMD_DPM_FORCED_LEVEL_PROFILE_MIN_SCLK, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i64*, i64** %8, align 8
  store i64 0, i64* %73, align 8
  br label %108

74:                                               ; preds = %68
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @AMD_DPM_FORCED_LEVEL_PROFILE_MIN_MCLK, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i64*, i64** %9, align 8
  store i64 0, i64* %79, align 8
  br label %107

80:                                               ; preds = %74
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @AMD_DPM_FORCED_LEVEL_PROFILE_PEAK, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %106

84:                                               ; preds = %80
  %85 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %11, align 8
  %86 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %85, i32 0, i32 2
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = sub i64 %89, 1
  %91 = load i64*, i64** %8, align 8
  store i64 %90, i64* %91, align 8
  %92 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %11, align 8
  %93 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %92, i32 0, i32 1
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = sub nsw i64 %96, 1
  %98 = load i64*, i64** %10, align 8
  store i64 %97, i64* %98, align 8
  %99 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %11, align 8
  %100 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %99, i32 0, i32 0
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = sub i64 %103, 1
  %105 = load i64*, i64** %9, align 8
  store i64 %104, i64* %105, align 8
  br label %106

106:                                              ; preds = %84, %80
  br label %107

107:                                              ; preds = %106, %78
  br label %108

108:                                              ; preds = %107, %72
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
