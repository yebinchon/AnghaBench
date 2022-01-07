; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_clock_source.c_dce110_program_pix_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_clock_source.c_dce110_program_pix_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_source = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.pixel_clk_params = type { i32, i32, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.pll_settings = type { i32, i32, i32, i32, i32, i32 }
%struct.dce110_clk_src = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 (%struct.TYPE_10__*, %struct.bp_pixel_clock_parameters*)* }
%struct.bp_pixel_clock_parameters = type { i64, %struct.TYPE_7__, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@CLOCK_SOURCE_ID_EXTERNAL = common dso_local global i64 0, align 8
@DCE_VERSION_11_0 = common dso_local global i64 0, align 8
@BP_RESULT_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clock_source*, %struct.pixel_clk_params*, %struct.pll_settings*)* @dce110_program_pix_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce110_program_pix_clk(%struct.clock_source* %0, %struct.pixel_clk_params* %1, %struct.pll_settings* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clock_source*, align 8
  %6 = alloca %struct.pixel_clk_params*, align 8
  %7 = alloca %struct.pll_settings*, align 8
  %8 = alloca %struct.dce110_clk_src*, align 8
  %9 = alloca %struct.bp_pixel_clock_parameters, align 8
  store %struct.clock_source* %0, %struct.clock_source** %5, align 8
  store %struct.pixel_clk_params* %1, %struct.pixel_clk_params** %6, align 8
  store %struct.pll_settings* %2, %struct.pll_settings** %7, align 8
  %10 = load %struct.clock_source*, %struct.clock_source** %5, align 8
  %11 = call %struct.dce110_clk_src* @TO_DCE110_CLK_SRC(%struct.clock_source* %10)
  store %struct.dce110_clk_src* %11, %struct.dce110_clk_src** %8, align 8
  %12 = bitcast %struct.bp_pixel_clock_parameters* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 48, i1 false)
  %13 = load %struct.clock_source*, %struct.clock_source** %5, align 8
  %14 = getelementptr inbounds %struct.clock_source, %struct.clock_source* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CLOCK_SOURCE_ID_EXTERNAL, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %3
  %19 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %6, align 8
  %20 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dc_is_dp_signal(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %18
  %25 = load %struct.clock_source*, %struct.clock_source** %5, align 8
  %26 = getelementptr inbounds %struct.clock_source, %struct.clock_source* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @DCE_VERSION_11_0, align 8
  %31 = icmp sle i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %8, align 8
  %34 = call i32 @disable_spread_spectrum(%struct.dce110_clk_src* %33)
  br label %35

35:                                               ; preds = %32, %24, %18, %3
  %36 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %6, align 8
  %37 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %9, i32 0, i32 9
  store i32 %38, i32* %39, align 8
  %40 = load %struct.clock_source*, %struct.clock_source** %5, align 8
  %41 = getelementptr inbounds %struct.clock_source, %struct.clock_source* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %9, i32 0, i32 0
  store i64 %42, i64* %43, align 8
  %44 = load %struct.pll_settings*, %struct.pll_settings** %7, align 8
  %45 = getelementptr inbounds %struct.pll_settings, %struct.pll_settings* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %9, i32 0, i32 8
  store i32 %46, i32* %47, align 4
  %48 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %6, align 8
  %49 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %9, i32 0, i32 7
  store i32 %50, i32* %51, align 8
  %52 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %6, align 8
  %53 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %9, i32 0, i32 6
  store i32 %54, i32* %55, align 4
  %56 = load %struct.pll_settings*, %struct.pll_settings** %7, align 8
  %57 = getelementptr inbounds %struct.pll_settings, %struct.pll_settings* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %9, i32 0, i32 5
  store i32 %58, i32* %59, align 8
  %60 = load %struct.pll_settings*, %struct.pll_settings** %7, align 8
  %61 = getelementptr inbounds %struct.pll_settings, %struct.pll_settings* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %9, i32 0, i32 4
  store i32 %62, i32* %63, align 4
  %64 = load %struct.pll_settings*, %struct.pll_settings** %7, align 8
  %65 = getelementptr inbounds %struct.pll_settings, %struct.pll_settings* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %9, i32 0, i32 3
  store i32 %66, i32* %67, align 8
  %68 = load %struct.pll_settings*, %struct.pll_settings** %7, align 8
  %69 = getelementptr inbounds %struct.pll_settings, %struct.pll_settings* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %9, i32 0, i32 2
  store i32 %70, i32* %71, align 4
  %72 = load %struct.pll_settings*, %struct.pll_settings** %7, align 8
  %73 = getelementptr inbounds %struct.pll_settings, %struct.pll_settings* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %9, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %8, align 8
  %78 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %77, i32 0, i32 0
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i64 (%struct.TYPE_10__*, %struct.bp_pixel_clock_parameters*)*, i64 (%struct.TYPE_10__*, %struct.bp_pixel_clock_parameters*)** %82, align 8
  %84 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %8, align 8
  %85 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %84, i32 0, i32 0
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = call i64 %83(%struct.TYPE_10__* %86, %struct.bp_pixel_clock_parameters* %9)
  %88 = load i64, i64* @BP_RESULT_OK, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %129

91:                                               ; preds = %35
  %92 = load %struct.clock_source*, %struct.clock_source** %5, align 8
  %93 = getelementptr inbounds %struct.clock_source, %struct.clock_source* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @CLOCK_SOURCE_ID_EXTERNAL, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %128

97:                                               ; preds = %91
  %98 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %6, align 8
  %99 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @dc_is_dp_signal(i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %128, label %103

103:                                              ; preds = %97
  %104 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %6, align 8
  %105 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %103
  %110 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %8, align 8
  %111 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %6, align 8
  %112 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.pll_settings*, %struct.pll_settings** %7, align 8
  %115 = call i32 @enable_spread_spectrum(%struct.dce110_clk_src* %110, i32 %113, %struct.pll_settings* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %109
  store i32 0, i32* %4, align 4
  br label %129

118:                                              ; preds = %109
  br label %119

119:                                              ; preds = %118, %103
  %120 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %8, align 8
  %121 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %6, align 8
  %122 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %6, align 8
  %125 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @dce110_program_pixel_clk_resync(%struct.dce110_clk_src* %120, i32 %123, i32 %126)
  br label %128

128:                                              ; preds = %119, %97, %91
  store i32 1, i32* %4, align 4
  br label %129

129:                                              ; preds = %128, %117, %90
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local %struct.dce110_clk_src* @TO_DCE110_CLK_SRC(%struct.clock_source*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @dc_is_dp_signal(i32) #1

declare dso_local i32 @disable_spread_spectrum(%struct.dce110_clk_src*) #1

declare dso_local i32 @enable_spread_spectrum(%struct.dce110_clk_src*, i32, %struct.pll_settings*) #1

declare dso_local i32 @dce110_program_pixel_clk_resync(%struct.dce110_clk_src*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
