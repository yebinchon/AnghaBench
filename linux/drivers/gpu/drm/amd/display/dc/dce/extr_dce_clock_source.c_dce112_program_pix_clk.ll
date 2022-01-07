; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_clock_source.c_dce112_program_pix_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_clock_source.c_dce112_program_pix_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_source = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.pixel_clk_params = type { i32, %struct.TYPE_9__, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.pll_settings = type { i32, i32 }
%struct.dce110_clk_src = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 (%struct.TYPE_10__*, %struct.bp_pixel_clock_parameters*)* }
%struct.bp_pixel_clock_parameters = type { i32, i64, i32, %struct.TYPE_7__, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@CLOCK_SOURCE_ID_EXTERNAL = common dso_local global i64 0, align 8
@DCE_VERSION_11_0 = common dso_local global i64 0, align 8
@CLOCK_SOURCE_ID_DP_DTO = common dso_local global i64 0, align 8
@BP_RESULT_OK = common dso_local global i64 0, align 8
@CONTROLLER_ID_D0 = common dso_local global i32 0, align 4
@DP_DTO0_ENABLE = common dso_local global i32 0, align 4
@MODULO = common dso_local global i32* null, align 8
@PHASE = common dso_local global i32* null, align 8
@PIXEL_RATE_CNTL = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clock_source*, %struct.pixel_clk_params*, %struct.pll_settings*)* @dce112_program_pix_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce112_program_pix_clk(%struct.clock_source* %0, %struct.pixel_clk_params* %1, %struct.pll_settings* %2) #0 {
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
  %20 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %19, i32 0, i32 3
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
  %37 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %9, i32 0, i32 0
  store i32 %38, i32* %39, align 8
  %40 = load %struct.clock_source*, %struct.clock_source** %5, align 8
  %41 = getelementptr inbounds %struct.clock_source, %struct.clock_source* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %9, i32 0, i32 1
  store i64 %42, i64* %43, align 8
  %44 = load %struct.pll_settings*, %struct.pll_settings** %7, align 8
  %45 = getelementptr inbounds %struct.pll_settings, %struct.pll_settings* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %9, i32 0, i32 2
  store i32 %46, i32* %47, align 8
  %48 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %6, align 8
  %49 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %9, i32 0, i32 5
  store i32 %50, i32* %51, align 4
  %52 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %6, align 8
  %53 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %9, i32 0, i32 4
  store i32 %54, i32* %55, align 8
  %56 = load %struct.clock_source*, %struct.clock_source** %5, align 8
  %57 = getelementptr inbounds %struct.clock_source, %struct.clock_source* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @CLOCK_SOURCE_ID_DP_DTO, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %84

61:                                               ; preds = %35
  %62 = load %struct.pll_settings*, %struct.pll_settings** %7, align 8
  %63 = getelementptr inbounds %struct.pll_settings, %struct.pll_settings* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %9, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = load %struct.pll_settings*, %struct.pll_settings** %7, align 8
  %68 = getelementptr inbounds %struct.pll_settings, %struct.pll_settings* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %9, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %6, align 8
  %76 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %61
  %81 = getelementptr inbounds %struct.bp_pixel_clock_parameters, %struct.bp_pixel_clock_parameters* %9, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  store i32 1, i32* %82, align 4
  br label %83

83:                                               ; preds = %80, %61
  br label %84

84:                                               ; preds = %83, %35
  %85 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %8, align 8
  %86 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %85, i32 0, i32 0
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i64 (%struct.TYPE_10__*, %struct.bp_pixel_clock_parameters*)*, i64 (%struct.TYPE_10__*, %struct.bp_pixel_clock_parameters*)** %90, align 8
  %92 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %8, align 8
  %93 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %92, i32 0, i32 0
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = call i64 %91(%struct.TYPE_10__* %94, %struct.bp_pixel_clock_parameters* %9)
  %96 = load i64, i64* @BP_RESULT_OK, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %84
  store i32 0, i32* %4, align 4
  br label %119

99:                                               ; preds = %84
  %100 = load %struct.clock_source*, %struct.clock_source** %5, align 8
  %101 = getelementptr inbounds %struct.clock_source, %struct.clock_source* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @CLOCK_SOURCE_ID_DP_DTO, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %118

105:                                              ; preds = %99
  %106 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %8, align 8
  %107 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %6, align 8
  %108 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %6, align 8
  %111 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.pixel_clk_params*, %struct.pixel_clk_params** %6, align 8
  %114 = getelementptr inbounds %struct.pixel_clk_params, %struct.pixel_clk_params* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @dce112_program_pixel_clk_resync(%struct.dce110_clk_src* %106, i32 %109, i32 %112, i32 %116)
  br label %118

118:                                              ; preds = %105, %99
  store i32 1, i32* %4, align 4
  br label %119

119:                                              ; preds = %118, %98
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local %struct.dce110_clk_src* @TO_DCE110_CLK_SRC(%struct.clock_source*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @dc_is_dp_signal(i32) #1

declare dso_local i32 @disable_spread_spectrum(%struct.dce110_clk_src*) #1

declare dso_local i32 @dce112_program_pixel_clk_resync(%struct.dce110_clk_src*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
