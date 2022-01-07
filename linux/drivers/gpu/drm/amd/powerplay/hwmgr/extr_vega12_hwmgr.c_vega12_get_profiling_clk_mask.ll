; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega12_hwmgr.c_vega12_get_profiling_clk_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega12_hwmgr.c_vega12_get_profiling_clk_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64 }
%struct.vega12_hwmgr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table }
%struct.vega12_single_dpm_table = type { i64 }

@VEGA12_UMD_PSTATE_GFXCLK_LEVEL = common dso_local global i64 0, align 8
@VEGA12_UMD_PSTATE_MCLK_LEVEL = common dso_local global i64 0, align 8
@VEGA12_UMD_PSTATE_SOCCLK_LEVEL = common dso_local global i64 0, align 8
@AMD_DPM_FORCED_LEVEL_PROFILE_MIN_SCLK = common dso_local global i32 0, align 4
@AMD_DPM_FORCED_LEVEL_PROFILE_MIN_MCLK = common dso_local global i32 0, align 4
@AMD_DPM_FORCED_LEVEL_PROFILE_PEAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i32, i64*, i64*, i64*)* @vega12_get_profiling_clk_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega12_get_profiling_clk_mask(%struct.pp_hwmgr* %0, i32 %1, i64* %2, i64* %3, i64* %4) #0 {
  %6 = alloca %struct.pp_hwmgr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.vega12_hwmgr*, align 8
  %12 = alloca %struct.vega12_single_dpm_table*, align 8
  %13 = alloca %struct.vega12_single_dpm_table*, align 8
  %14 = alloca %struct.vega12_single_dpm_table*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  %15 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %16 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.vega12_hwmgr*
  store %struct.vega12_hwmgr* %18, %struct.vega12_hwmgr** %11, align 8
  %19 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %11, align 8
  %20 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  store %struct.vega12_single_dpm_table* %21, %struct.vega12_single_dpm_table** %12, align 8
  %22 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %11, align 8
  %23 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store %struct.vega12_single_dpm_table* %24, %struct.vega12_single_dpm_table** %13, align 8
  %25 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %11, align 8
  %26 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store %struct.vega12_single_dpm_table* %27, %struct.vega12_single_dpm_table** %14, align 8
  %28 = load i64*, i64** %8, align 8
  store i64 0, i64* %28, align 8
  %29 = load i64*, i64** %9, align 8
  store i64 0, i64* %29, align 8
  %30 = load i64*, i64** %10, align 8
  store i64 0, i64* %30, align 8
  %31 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %12, align 8
  %32 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @VEGA12_UMD_PSTATE_GFXCLK_LEVEL, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %5
  %37 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %13, align 8
  %38 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @VEGA12_UMD_PSTATE_MCLK_LEVEL, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %36
  %43 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %14, align 8
  %44 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @VEGA12_UMD_PSTATE_SOCCLK_LEVEL, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load i64, i64* @VEGA12_UMD_PSTATE_GFXCLK_LEVEL, align 8
  %50 = load i64*, i64** %8, align 8
  store i64 %49, i64* %50, align 8
  %51 = load i64, i64* @VEGA12_UMD_PSTATE_MCLK_LEVEL, align 8
  %52 = load i64*, i64** %9, align 8
  store i64 %51, i64* %52, align 8
  %53 = load i64, i64* @VEGA12_UMD_PSTATE_SOCCLK_LEVEL, align 8
  %54 = load i64*, i64** %10, align 8
  store i64 %53, i64* %54, align 8
  br label %55

55:                                               ; preds = %48, %42, %36, %5
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @AMD_DPM_FORCED_LEVEL_PROFILE_MIN_SCLK, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i64*, i64** %8, align 8
  store i64 0, i64* %60, align 8
  br label %89

61:                                               ; preds = %55
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @AMD_DPM_FORCED_LEVEL_PROFILE_MIN_MCLK, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i64*, i64** %9, align 8
  store i64 0, i64* %66, align 8
  br label %88

67:                                               ; preds = %61
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @AMD_DPM_FORCED_LEVEL_PROFILE_PEAK, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %87

71:                                               ; preds = %67
  %72 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %12, align 8
  %73 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = sub nsw i64 %74, 1
  %76 = load i64*, i64** %8, align 8
  store i64 %75, i64* %76, align 8
  %77 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %13, align 8
  %78 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = sub nsw i64 %79, 1
  %81 = load i64*, i64** %9, align 8
  store i64 %80, i64* %81, align 8
  %82 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %14, align 8
  %83 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %84, 1
  %86 = load i64*, i64** %10, align 8
  store i64 %85, i64* %86, align 8
  br label %87

87:                                               ; preds = %71, %67
  br label %88

88:                                               ; preds = %87, %65
  br label %89

89:                                               ; preds = %88, %59
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
