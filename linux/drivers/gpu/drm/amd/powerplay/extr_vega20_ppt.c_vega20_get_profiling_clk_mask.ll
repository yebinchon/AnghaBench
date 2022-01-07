; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_vega20_ppt.c_vega20_get_profiling_clk_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_vega20_ppt.c_vega20_get_profiling_clk_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.vega20_dpm_table = type { %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table }
%struct.vega20_single_dpm_table = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@VEGA20_UMD_PSTATE_GFXCLK_LEVEL = common dso_local global i64 0, align 8
@VEGA20_UMD_PSTATE_MCLK_LEVEL = common dso_local global i64 0, align 8
@VEGA20_UMD_PSTATE_SOCCLK_LEVEL = common dso_local global i64 0, align 8
@AMD_DPM_FORCED_LEVEL_PROFILE_MIN_SCLK = common dso_local global i32 0, align 4
@AMD_DPM_FORCED_LEVEL_PROFILE_MIN_MCLK = common dso_local global i32 0, align 4
@AMD_DPM_FORCED_LEVEL_PROFILE_PEAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*, i32, i64*, i64*, i64*)* @vega20_get_profiling_clk_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega20_get_profiling_clk_mask(%struct.smu_context* %0, i32 %1, i64* %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.smu_context*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.vega20_dpm_table*, align 8
  %13 = alloca %struct.vega20_single_dpm_table*, align 8
  %14 = alloca %struct.vega20_single_dpm_table*, align 8
  %15 = alloca %struct.vega20_single_dpm_table*, align 8
  store %struct.smu_context* %0, %struct.smu_context** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  %16 = load %struct.smu_context*, %struct.smu_context** %7, align 8
  %17 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.vega20_dpm_table*
  store %struct.vega20_dpm_table* %20, %struct.vega20_dpm_table** %12, align 8
  %21 = load %struct.smu_context*, %struct.smu_context** %7, align 8
  %22 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %5
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %98

29:                                               ; preds = %5
  %30 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %12, align 8
  %31 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %30, i32 0, i32 2
  store %struct.vega20_single_dpm_table* %31, %struct.vega20_single_dpm_table** %13, align 8
  %32 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %12, align 8
  %33 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %32, i32 0, i32 1
  store %struct.vega20_single_dpm_table* %33, %struct.vega20_single_dpm_table** %14, align 8
  %34 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %12, align 8
  %35 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %34, i32 0, i32 0
  store %struct.vega20_single_dpm_table* %35, %struct.vega20_single_dpm_table** %15, align 8
  %36 = load i64*, i64** %9, align 8
  store i64 0, i64* %36, align 8
  %37 = load i64*, i64** %10, align 8
  store i64 0, i64* %37, align 8
  %38 = load i64*, i64** %11, align 8
  store i64 0, i64* %38, align 8
  %39 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %13, align 8
  %40 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @VEGA20_UMD_PSTATE_GFXCLK_LEVEL, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %63

44:                                               ; preds = %29
  %45 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %14, align 8
  %46 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @VEGA20_UMD_PSTATE_MCLK_LEVEL, align 8
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %44
  %51 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %15, align 8
  %52 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @VEGA20_UMD_PSTATE_SOCCLK_LEVEL, align 8
  %55 = icmp sgt i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = load i64, i64* @VEGA20_UMD_PSTATE_GFXCLK_LEVEL, align 8
  %58 = load i64*, i64** %9, align 8
  store i64 %57, i64* %58, align 8
  %59 = load i64, i64* @VEGA20_UMD_PSTATE_MCLK_LEVEL, align 8
  %60 = load i64*, i64** %10, align 8
  store i64 %59, i64* %60, align 8
  %61 = load i64, i64* @VEGA20_UMD_PSTATE_SOCCLK_LEVEL, align 8
  %62 = load i64*, i64** %11, align 8
  store i64 %61, i64* %62, align 8
  br label %63

63:                                               ; preds = %56, %50, %44, %29
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @AMD_DPM_FORCED_LEVEL_PROFILE_MIN_SCLK, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i64*, i64** %9, align 8
  store i64 0, i64* %68, align 8
  br label %97

69:                                               ; preds = %63
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @AMD_DPM_FORCED_LEVEL_PROFILE_MIN_MCLK, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i64*, i64** %10, align 8
  store i64 0, i64* %74, align 8
  br label %96

75:                                               ; preds = %69
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @AMD_DPM_FORCED_LEVEL_PROFILE_PEAK, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %95

79:                                               ; preds = %75
  %80 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %13, align 8
  %81 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = sub nsw i64 %82, 1
  %84 = load i64*, i64** %9, align 8
  store i64 %83, i64* %84, align 8
  %85 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %14, align 8
  %86 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = sub nsw i64 %87, 1
  %89 = load i64*, i64** %10, align 8
  store i64 %88, i64* %89, align 8
  %90 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %15, align 8
  %91 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = sub nsw i64 %92, 1
  %94 = load i64*, i64** %11, align 8
  store i64 %93, i64* %94, align 8
  br label %95

95:                                               ; preds = %79, %75
  br label %96

96:                                               ; preds = %95, %73
  br label %97

97:                                               ; preds = %96, %67
  store i32 0, i32* %6, align 4
  br label %98

98:                                               ; preds = %97, %26
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
