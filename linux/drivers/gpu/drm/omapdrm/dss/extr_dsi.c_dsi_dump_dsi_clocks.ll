; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_dump_dsi_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_dump_dsi_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.dsi_data* }
%struct.dsi_data = type { i32, %struct.TYPE_2__, i32, %struct.dss_pll }
%struct.TYPE_2__ = type { i32 }
%struct.dss_pll = type { i32, %struct.dss_pll_clock_info }
%struct.dss_pll_clock_info = type { i32, i32*, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"- DSI%d PLL -\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"dsi pll clkin\09%lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Fint\09\09%-16lun %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"CLKIN4DDR\09%-16lum %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"DSI_PLL_HSDIV_DISPC (%s)\09%-16lum_dispc %u\09(%s)\0A\00", align 1
@DSS_CLK_SRC_PLL1_1 = common dso_local global i32 0, align 4
@DSS_CLK_SRC_PLL2_1 = common dso_local global i32 0, align 4
@HSDIV_DISPC = common dso_local global i64 0, align 8
@DSS_CLK_SRC_FCK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"DSI_PLL_HSDIV_DSI (%s)\09%-16lum_dsi %u\09(%s)\0A\00", align 1
@DSS_CLK_SRC_PLL1_2 = common dso_local global i32 0, align 4
@DSS_CLK_SRC_PLL2_2 = common dso_local global i32 0, align 4
@HSDIV_DSI = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [11 x i8] c"- DSI%d -\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"dsi fclk source = %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"DSI_FCLK\09%lu\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"DDR_CLK\09\09%lu\0A\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"TxByteClkHS\09%lu\0A\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"LP_CLK\09\09%lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @dsi_dump_dsi_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_dump_dsi_clocks(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dsi_data*, align 8
  %7 = alloca %struct.dss_pll_clock_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dss_pll*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %13 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %12, i32 0, i32 0
  %14 = load %struct.dsi_data*, %struct.dsi_data** %13, align 8
  store %struct.dsi_data* %14, %struct.dsi_data** %6, align 8
  %15 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %16 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %16, i32 0, i32 1
  store %struct.dss_pll_clock_info* %17, %struct.dss_pll_clock_info** %7, align 8
  %18 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %19 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %10, align 4
  %21 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %22 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %21, i32 0, i32 3
  store %struct.dss_pll* %22, %struct.dss_pll** %11, align 8
  %23 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %24 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dss_get_dispc_clk_source(i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %28 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @dss_get_dsi_clk_source(i32 %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %33 = call i64 @dsi_runtime_get(%struct.dsi_data* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %149

36:                                               ; preds = %2
  %37 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, 1
  %40 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %42 = load %struct.dss_pll*, %struct.dss_pll** %11, align 8
  %43 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @clk_get_rate(i32 %44)
  %46 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %41, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %48 = load %struct.dss_pll_clock_info*, %struct.dss_pll_clock_info** %7, align 8
  %49 = getelementptr inbounds %struct.dss_pll_clock_info, %struct.dss_pll_clock_info* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.dss_pll_clock_info*, %struct.dss_pll_clock_info** %7, align 8
  %52 = getelementptr inbounds %struct.dss_pll_clock_info, %struct.dss_pll_clock_info* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %50, i32 %53)
  %55 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %56 = load %struct.dss_pll_clock_info*, %struct.dss_pll_clock_info** %7, align 8
  %57 = getelementptr inbounds %struct.dss_pll_clock_info, %struct.dss_pll_clock_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.dss_pll_clock_info*, %struct.dss_pll_clock_info** %7, align 8
  %60 = getelementptr inbounds %struct.dss_pll_clock_info, %struct.dss_pll_clock_info* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %55, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %58, i32 %61)
  %63 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %64 = load i32, i32* %10, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %36
  %67 = load i32, i32* @DSS_CLK_SRC_PLL1_1, align 4
  br label %70

68:                                               ; preds = %36
  %69 = load i32, i32* @DSS_CLK_SRC_PLL2_1, align 4
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i32 [ %67, %66 ], [ %69, %68 ]
  %72 = call i32 @dss_get_clk_source_name(i32 %71)
  %73 = load %struct.dss_pll_clock_info*, %struct.dss_pll_clock_info** %7, align 8
  %74 = getelementptr inbounds %struct.dss_pll_clock_info, %struct.dss_pll_clock_info* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* @HSDIV_DISPC, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.dss_pll_clock_info*, %struct.dss_pll_clock_info** %7, align 8
  %80 = getelementptr inbounds %struct.dss_pll_clock_info, %struct.dss_pll_clock_info* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* @HSDIV_DISPC, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @DSS_CLK_SRC_FCK, align 4
  %87 = icmp eq i32 %85, %86
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)
  %90 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %63, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %72, i32 %78, i32 %84, i8* %89)
  %91 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %92 = load i32, i32* %10, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %70
  %95 = load i32, i32* @DSS_CLK_SRC_PLL1_2, align 4
  br label %98

96:                                               ; preds = %70
  %97 = load i32, i32* @DSS_CLK_SRC_PLL2_2, align 4
  br label %98

98:                                               ; preds = %96, %94
  %99 = phi i32 [ %95, %94 ], [ %97, %96 ]
  %100 = call i32 @dss_get_clk_source_name(i32 %99)
  %101 = load %struct.dss_pll_clock_info*, %struct.dss_pll_clock_info** %7, align 8
  %102 = getelementptr inbounds %struct.dss_pll_clock_info, %struct.dss_pll_clock_info* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = load i64, i64* @HSDIV_DSI, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.dss_pll_clock_info*, %struct.dss_pll_clock_info** %7, align 8
  %108 = getelementptr inbounds %struct.dss_pll_clock_info, %struct.dss_pll_clock_info* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load i64, i64* @HSDIV_DSI, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* @DSS_CLK_SRC_FCK, align 4
  %115 = icmp eq i32 %113, %114
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)
  %118 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %91, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i32 %100, i32 %106, i32 %112, i8* %117)
  %119 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %120, 1
  %122 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %119, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %121)
  %123 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @dss_get_clk_source_name(i32 %124)
  %126 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %123, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 %125)
  %127 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %128 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %129 = call i32 @dsi_fclk_rate(%struct.dsi_data* %128)
  %130 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %127, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %129)
  %131 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %132 = load %struct.dss_pll_clock_info*, %struct.dss_pll_clock_info** %7, align 8
  %133 = getelementptr inbounds %struct.dss_pll_clock_info, %struct.dss_pll_clock_info* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = sdiv i32 %134, 4
  %136 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %131, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %135)
  %137 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %138 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %139 = call i32 @dsi_get_txbyteclkhs(%struct.dsi_data* %138)
  %140 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %137, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i32 %139)
  %141 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %142 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %143 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %141, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i32 %145)
  %147 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %148 = call i32 @dsi_runtime_put(%struct.dsi_data* %147)
  store i32 0, i32* %3, align 4
  br label %149

149:                                              ; preds = %98, %35
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local i32 @dss_get_dispc_clk_source(i32) #1

declare dso_local i32 @dss_get_dsi_clk_source(i32, i32) #1

declare dso_local i64 @dsi_runtime_get(%struct.dsi_data*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @dss_get_clk_source_name(i32) #1

declare dso_local i32 @dsi_fclk_rate(%struct.dsi_data*) #1

declare dso_local i32 @dsi_get_txbyteclkhs(%struct.dsi_data*) #1

declare dso_local i32 @dsi_runtime_put(%struct.dsi_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
