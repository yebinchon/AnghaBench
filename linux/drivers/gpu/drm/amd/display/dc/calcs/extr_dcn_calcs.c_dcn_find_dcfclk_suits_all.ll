; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/calcs/extr_dcn_calcs.c_dcn_find_dcfclk_suits_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/calcs/extr_dcn_calcs.c_dcn_find_dcfclk_suits_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.dc_clocks = type { i32, i32, i32, i32, i32 }

@DM_PP_CLOCK_TYPE_DISPLAY_CLK = common dso_local global i32 0, align 4
@DM_PP_CLOCK_TYPE_DISPLAYPHYCLK = common dso_local global i32 0, align 4
@DM_PP_CLOCK_TYPE_DPPCLK = common dso_local global i32 0, align 4
@DM_PP_CLOCK_TYPE_MEMORY_CLK = common dso_local global i32 0, align 4
@DM_PP_CLOCK_TYPE_DCFCLK = common dso_local global i32 0, align 4
@dcn_bw_v_max0p91 = common dso_local global i32 0, align 4
@dcn_bw_v_max0p9 = common dso_local global i32 0, align 4
@dcn_bw_v_nom0p8 = common dso_local global i32 0, align 4
@dcn_bw_v_mid0p72 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"\09dcf_clk for voltage = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dcn_find_dcfclk_suits_all(%struct.dc* %0, %struct.dc_clocks* %1) #0 {
  %3 = alloca %struct.dc*, align 8
  %4 = alloca %struct.dc_clocks*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dc* %0, %struct.dc** %3, align 8
  store %struct.dc_clocks* %1, %struct.dc_clocks** %4, align 8
  %8 = load %struct.dc*, %struct.dc** %3, align 8
  %9 = load i32, i32* @DM_PP_CLOCK_TYPE_DISPLAY_CLK, align 4
  %10 = load %struct.dc_clocks*, %struct.dc_clocks** %4, align 8
  %11 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dcn_find_normalized_clock_vdd_Level(%struct.dc* %8, i32 %9, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.dc*, %struct.dc** %3, align 8
  %15 = load i32, i32* @DM_PP_CLOCK_TYPE_DISPLAYPHYCLK, align 4
  %16 = load %struct.dc_clocks*, %struct.dc_clocks** %4, align 8
  %17 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dcn_find_normalized_clock_vdd_Level(%struct.dc* %14, i32 %15, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @dcn_bw_max(i32 %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.dc*, %struct.dc** %3, align 8
  %24 = load i32, i32* @DM_PP_CLOCK_TYPE_DPPCLK, align 4
  %25 = load %struct.dc_clocks*, %struct.dc_clocks** %4, align 8
  %26 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dcn_find_normalized_clock_vdd_Level(%struct.dc* %23, i32 %24, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @dcn_bw_max(i32 %29, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load %struct.dc*, %struct.dc** %3, align 8
  %33 = load i32, i32* @DM_PP_CLOCK_TYPE_MEMORY_CLK, align 4
  %34 = load %struct.dc_clocks*, %struct.dc_clocks** %4, align 8
  %35 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dcn_find_normalized_clock_vdd_Level(%struct.dc* %32, i32 %33, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @dcn_bw_max(i32 %38, i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load %struct.dc*, %struct.dc** %3, align 8
  %42 = load i32, i32* @DM_PP_CLOCK_TYPE_DCFCLK, align 4
  %43 = load %struct.dc_clocks*, %struct.dc_clocks** %4, align 8
  %44 = getelementptr inbounds %struct.dc_clocks, %struct.dc_clocks* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dcn_find_normalized_clock_vdd_Level(%struct.dc* %41, i32 %42, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @dcn_bw_max(i32 %47, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @dcn_bw_v_max0p91, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %2
  %54 = call i32 (...) @BREAK_TO_DEBUGGER()
  %55 = load %struct.dc*, %struct.dc** %3, align 8
  %56 = getelementptr inbounds %struct.dc, %struct.dc* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 %59, 1000
  store i32 %60, i32* %7, align 4
  br label %104

61:                                               ; preds = %2
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @dcn_bw_v_max0p9, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %61
  %66 = load %struct.dc*, %struct.dc** %3, align 8
  %67 = getelementptr inbounds %struct.dc, %struct.dc* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %70, 1000
  store i32 %71, i32* %7, align 4
  br label %103

72:                                               ; preds = %61
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @dcn_bw_v_nom0p8, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %72
  %77 = load %struct.dc*, %struct.dc** %3, align 8
  %78 = getelementptr inbounds %struct.dc, %struct.dc* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = mul nsw i32 %81, 1000
  store i32 %82, i32* %7, align 4
  br label %102

83:                                               ; preds = %72
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @dcn_bw_v_mid0p72, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %83
  %88 = load %struct.dc*, %struct.dc** %3, align 8
  %89 = getelementptr inbounds %struct.dc, %struct.dc* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = mul nsw i32 %92, 1000
  store i32 %93, i32* %7, align 4
  br label %101

94:                                               ; preds = %83
  %95 = load %struct.dc*, %struct.dc** %3, align 8
  %96 = getelementptr inbounds %struct.dc, %struct.dc* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = mul nsw i32 %99, 1000
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %94, %87
  br label %102

102:                                              ; preds = %101, %76
  br label %103

103:                                              ; preds = %102, %65
  br label %104

104:                                              ; preds = %103, %53
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* %7, align 4
  ret i32 %107
}

declare dso_local i32 @dcn_find_normalized_clock_vdd_Level(%struct.dc*, i32, i32) #1

declare dso_local i32 @dcn_bw_max(i32, i32) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

declare dso_local i32 @DC_LOG_BANDWIDTH_CALCS(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
