; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_clock_source.c_enable_spread_spectrum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_clock_source.c_enable_spread_spectrum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce110_clk_src = type { %struct.TYPE_12__*, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 (%struct.TYPE_12__*, %struct.bp_spread_spectrum_parameters*, i32)* }
%struct.bp_spread_spectrum_parameters = type { %struct.TYPE_10__, i32, i32, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.pll_settings = type { i32, i64 }
%struct.delta_sigma_data = type { i32, i32, i32, i32 }
%struct.spread_spectrum_data = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i64, i64 }

@BP_RESULT_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dce110_clk_src*, i32, %struct.pll_settings*)* @enable_spread_spectrum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enable_spread_spectrum(%struct.dce110_clk_src* %0, i32 %1, %struct.pll_settings* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dce110_clk_src*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pll_settings*, align 8
  %8 = alloca %struct.bp_spread_spectrum_parameters, align 4
  %9 = alloca %struct.delta_sigma_data, align 4
  %10 = alloca %struct.spread_spectrum_data*, align 8
  store %struct.dce110_clk_src* %0, %struct.dce110_clk_src** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.pll_settings* %2, %struct.pll_settings** %7, align 8
  %11 = bitcast %struct.bp_spread_spectrum_parameters* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 40, i1 false)
  store %struct.spread_spectrum_data* null, %struct.spread_spectrum_data** %10, align 8
  %12 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.pll_settings*, %struct.pll_settings** %7, align 8
  %15 = getelementptr inbounds %struct.pll_settings, %struct.pll_settings* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sdiv i32 %16, 10
  %18 = call %struct.spread_spectrum_data* @get_ss_data_entry(%struct.dce110_clk_src* %12, i32 %13, i32 %17)
  store %struct.spread_spectrum_data* %18, %struct.spread_spectrum_data** %10, align 8
  %19 = load %struct.spread_spectrum_data*, %struct.spread_spectrum_data** %10, align 8
  %20 = icmp ne %struct.spread_spectrum_data* %19, null
  br i1 %20, label %21, label %93

21:                                               ; preds = %3
  %22 = load %struct.pll_settings*, %struct.pll_settings** %7, align 8
  %23 = getelementptr inbounds %struct.pll_settings, %struct.pll_settings* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %93

26:                                               ; preds = %21
  %27 = load %struct.pll_settings*, %struct.pll_settings** %7, align 8
  %28 = load %struct.spread_spectrum_data*, %struct.spread_spectrum_data** %10, align 8
  %29 = call i64 @calculate_ss(%struct.pll_settings* %27, %struct.spread_spectrum_data* %28, %struct.delta_sigma_data* %9)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %91

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.delta_sigma_data, %struct.delta_sigma_data* %9, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.bp_spread_spectrum_parameters, %struct.bp_spread_spectrum_parameters* %8, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = getelementptr inbounds %struct.delta_sigma_data, %struct.delta_sigma_data* %9, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.bp_spread_spectrum_parameters, %struct.bp_spread_spectrum_parameters* %8, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = getelementptr inbounds %struct.delta_sigma_data, %struct.delta_sigma_data* %9, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.bp_spread_spectrum_parameters, %struct.bp_spread_spectrum_parameters* %8, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = getelementptr inbounds %struct.delta_sigma_data, %struct.delta_sigma_data* %9, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.bp_spread_spectrum_parameters, %struct.bp_spread_spectrum_parameters* %8, i32 0, i32 3
  store i32 %45, i32* %46, align 4
  %47 = getelementptr inbounds %struct.bp_spread_spectrum_parameters, %struct.bp_spread_spectrum_parameters* %8, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  %49 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %5, align 8
  %50 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds %struct.bp_spread_spectrum_parameters, %struct.bp_spread_spectrum_parameters* %8, i32 0, i32 2
  store i32 %52, i32* %53, align 4
  %54 = load %struct.spread_spectrum_data*, %struct.spread_spectrum_data** %10, align 8
  %55 = getelementptr inbounds %struct.spread_spectrum_data, %struct.spread_spectrum_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.bp_spread_spectrum_parameters, %struct.bp_spread_spectrum_parameters* %8, i32 0, i32 1
  store i32 %56, i32* %57, align 4
  %58 = load %struct.spread_spectrum_data*, %struct.spread_spectrum_data** %10, align 8
  %59 = getelementptr inbounds %struct.spread_spectrum_data, %struct.spread_spectrum_data* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %31
  %64 = getelementptr inbounds %struct.bp_spread_spectrum_parameters, %struct.bp_spread_spectrum_parameters* %8, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  store i32 1, i32* %65, align 4
  br label %66

66:                                               ; preds = %63, %31
  %67 = load %struct.spread_spectrum_data*, %struct.spread_spectrum_data** %10, align 8
  %68 = getelementptr inbounds %struct.spread_spectrum_data, %struct.spread_spectrum_data* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.bp_spread_spectrum_parameters, %struct.bp_spread_spectrum_parameters* %8, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 2
  store i32 1, i32* %74, align 4
  br label %75

75:                                               ; preds = %72, %66
  %76 = load i64, i64* @BP_RESULT_OK, align 8
  %77 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %5, align 8
  %78 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %77, i32 0, i32 0
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i64 (%struct.TYPE_12__*, %struct.bp_spread_spectrum_parameters*, i32)*, i64 (%struct.TYPE_12__*, %struct.bp_spread_spectrum_parameters*, i32)** %82, align 8
  %84 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %5, align 8
  %85 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %84, i32 0, i32 0
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %85, align 8
  %87 = call i64 %83(%struct.TYPE_12__* %86, %struct.bp_spread_spectrum_parameters* %8, i32 1)
  %88 = icmp ne i64 %76, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %75
  store i32 0, i32* %4, align 4
  br label %94

90:                                               ; preds = %75
  br label %92

91:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %94

92:                                               ; preds = %90
  br label %93

93:                                               ; preds = %92, %21, %3
  store i32 1, i32* %4, align 4
  br label %94

94:                                               ; preds = %93, %91, %89
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.spread_spectrum_data* @get_ss_data_entry(%struct.dce110_clk_src*, i32, i32) #2

declare dso_local i64 @calculate_ss(%struct.pll_settings*, %struct.spread_spectrum_data*, %struct.delta_sigma_data*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
