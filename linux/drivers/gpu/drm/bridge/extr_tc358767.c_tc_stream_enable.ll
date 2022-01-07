; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_tc358767.c_tc_stream_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_tc358767.c_tc_stream_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_data = type { i32, %struct.TYPE_5__, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"enable video stream\0A\00", align 1
@tc_test_pattern = common dso_local global i64 0, align 8
@VID_MN_GEN = common dso_local global i32 0, align 4
@DP_EN = common dso_local global i32 0, align 4
@DP_LINK_CAP_ENHANCED_FRAMING = common dso_local global i32 0, align 4
@EF_EN = common dso_local global i32 0, align 4
@DP0CTL = common dso_local global i32 0, align 4
@VID_EN = common dso_local global i32 0, align 4
@DP0_AUDSRC_NO_INPUT = common dso_local global i32 0, align 4
@DP0_VIDSRC_COLOR_BAR = common dso_local global i32 0, align 4
@DP0_VIDSRC_DPI_RX = common dso_local global i32 0, align 4
@SYSCTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tc_data*)* @tc_stream_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_stream_enable(%struct.tc_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tc_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tc_data* %0, %struct.tc_data** %3, align 8
  %6 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %7 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @dev_dbg(i32 %8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %10 = load i64, i64* @tc_test_pattern, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %1
  %13 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %14 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %15 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @clk_get_rate(i32 %16)
  %18 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %19 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 1000, %21
  %23 = call i32 @tc_pxl_pll_en(%struct.tc_data* %13, i32 %17, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %12
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %111

28:                                               ; preds = %12
  br label %29

29:                                               ; preds = %28, %1
  %30 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %31 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %32 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %31, i32 0, i32 2
  %33 = call i32 @tc_set_video_mode(%struct.tc_data* %30, %struct.TYPE_6__* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %111

38:                                               ; preds = %29
  %39 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %40 = call i32 @tc_stream_clock_calc(%struct.tc_data* %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %111

45:                                               ; preds = %38
  %46 = load i32, i32* @VID_MN_GEN, align 4
  %47 = load i32, i32* @DP_EN, align 4
  %48 = or i32 %46, %47
  store i32 %48, i32* %5, align 4
  %49 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %50 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @DP_LINK_CAP_ENHANCED_FRAMING, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %45
  %58 = load i32, i32* @EF_EN, align 4
  %59 = load i32, i32* %5, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %57, %45
  %62 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %63 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @DP0CTL, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @regmap_write(i32 %64, i32 %65, i32 %66)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = load i32, i32* %4, align 4
  store i32 %71, i32* %2, align 4
  br label %111

72:                                               ; preds = %61
  %73 = call i32 @usleep_range(i32 500, i32 1000)
  %74 = load i32, i32* @VID_EN, align 4
  %75 = load i32, i32* %5, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %5, align 4
  %77 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %78 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @DP0CTL, align 4
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @regmap_write(i32 %79, i32 %80, i32 %81)
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %72
  %86 = load i32, i32* %4, align 4
  store i32 %86, i32* %2, align 4
  br label %111

87:                                               ; preds = %72
  %88 = load i32, i32* @DP0_AUDSRC_NO_INPUT, align 4
  store i32 %88, i32* %5, align 4
  %89 = load i64, i64* @tc_test_pattern, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load i32, i32* @DP0_VIDSRC_COLOR_BAR, align 4
  %93 = load i32, i32* %5, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %5, align 4
  br label %99

95:                                               ; preds = %87
  %96 = load i32, i32* @DP0_VIDSRC_DPI_RX, align 4
  %97 = load i32, i32* %5, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %95, %91
  %100 = load %struct.tc_data*, %struct.tc_data** %3, align 8
  %101 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @SYSCTRL, align 4
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @regmap_write(i32 %102, i32 %103, i32 %104)
  store i32 %105, i32* %4, align 4
  %106 = load i32, i32* %4, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %99
  %109 = load i32, i32* %4, align 4
  store i32 %109, i32* %2, align 4
  br label %111

110:                                              ; preds = %99
  store i32 0, i32* %2, align 4
  br label %111

111:                                              ; preds = %110, %108, %85, %70, %43, %36, %26
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @tc_pxl_pll_en(%struct.tc_data*, i32, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @tc_set_video_mode(%struct.tc_data*, %struct.TYPE_6__*) #1

declare dso_local i32 @tc_stream_clock_calc(%struct.tc_data*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
