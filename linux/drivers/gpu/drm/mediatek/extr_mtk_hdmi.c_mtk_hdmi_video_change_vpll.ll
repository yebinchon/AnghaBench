; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_video_change_vpll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_video_change_vpll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_hdmi = type { i32, i32* }

@MTK_HDMI_CLK_HDMI_PLL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Failed to set PLL to %u Hz: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Want PLL %u Hz, got %lu Hz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_hdmi*, i64)* @mtk_hdmi_video_change_vpll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_hdmi_video_change_vpll(%struct.mtk_hdmi* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_hdmi*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.mtk_hdmi* %0, %struct.mtk_hdmi** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %9 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = load i64, i64* @MTK_HDMI_CLK_HDMI_PLL, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @clk_set_rate(i32 %13, i64 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %20 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %22, i32 %23)
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %58

26:                                               ; preds = %2
  %27 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %28 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @MTK_HDMI_CLK_HDMI_PLL, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @clk_get_rate(i32 %32)
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i64 @DIV_ROUND_CLOSEST(i64 %34, i32 1000)
  %36 = load i64, i64* %5, align 8
  %37 = call i64 @DIV_ROUND_CLOSEST(i64 %36, i32 1000)
  %38 = icmp ne i64 %35, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %26
  %40 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %41 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @dev_warn(i32 %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %43, i64 %44)
  br label %53

46:                                               ; preds = %26
  %47 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %48 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @dev_dbg(i32 %49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %50, i64 %51)
  br label %53

53:                                               ; preds = %46, %39
  %54 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %55 = call i32 @mtk_hdmi_hw_config_sys(%struct.mtk_hdmi* %54)
  %56 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %57 = call i32 @mtk_hdmi_hw_set_deep_color_mode(%struct.mtk_hdmi* %56)
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %53, %18
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @clk_set_rate(i32, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i64, i32) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i64 @DIV_ROUND_CLOSEST(i64, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i64, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i64) #1

declare dso_local i32 @mtk_hdmi_hw_config_sys(%struct.mtk_hdmi*) #1

declare dso_local i32 @mtk_hdmi_hw_set_deep_color_mode(%struct.mtk_hdmi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
