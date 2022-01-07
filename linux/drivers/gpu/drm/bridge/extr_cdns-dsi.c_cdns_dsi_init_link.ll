; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_cdns-dsi.c_cdns_dsi_init_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_cdns-dsi.c_cdns_dsi_init_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns_dsi = type { i32, i64, i32, %struct.cdns_dsi_output }
%struct.cdns_dsi_output = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@MIPI_DSI_CLOCK_NON_CONTINUOUS = common dso_local global i32 0, align 4
@CLK_CONTINUOUS = common dso_local global i32 0, align 4
@MCTL_MAIN_PHY_CTL = common dso_local global i64 0, align 8
@NSEC_PER_SEC = common dso_local global i64 0, align 8
@NSEC_PER_MSEC = common dso_local global i32 0, align 4
@MCTL_ULPOUT_TIME = common dso_local global i64 0, align 8
@LINK_EN = common dso_local global i32 0, align 4
@MCTL_MAIN_DATA_CTL = common dso_local global i64 0, align 8
@CLK_LANE_EN = common dso_local global i32 0, align 4
@PLL_START = common dso_local global i32 0, align 4
@MCTL_MAIN_EN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cdns_dsi*)* @cdns_dsi_init_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdns_dsi_init_link(%struct.cdns_dsi* %0) #0 {
  %2 = alloca %struct.cdns_dsi*, align 8
  %3 = alloca %struct.cdns_dsi_output*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cdns_dsi* %0, %struct.cdns_dsi** %2, align 8
  %8 = load %struct.cdns_dsi*, %struct.cdns_dsi** %2, align 8
  %9 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %8, i32 0, i32 3
  store %struct.cdns_dsi_output* %9, %struct.cdns_dsi_output** %3, align 8
  %10 = load %struct.cdns_dsi*, %struct.cdns_dsi** %2, align 8
  %11 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %109

15:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %16

16:                                               ; preds = %29, %15
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.cdns_dsi_output*, %struct.cdns_dsi_output** %3, align 8
  %19 = getelementptr inbounds %struct.cdns_dsi_output, %struct.cdns_dsi_output* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %17, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %16
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @DATA_LANE_EN(i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  br label %16

32:                                               ; preds = %16
  %33 = load %struct.cdns_dsi_output*, %struct.cdns_dsi_output** %3, align 8
  %34 = getelementptr inbounds %struct.cdns_dsi_output, %struct.cdns_dsi_output* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @MIPI_DSI_CLOCK_NON_CONTINUOUS, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %32
  %42 = load i32, i32* @CLK_CONTINUOUS, align 4
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %41, %32
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.cdns_dsi*, %struct.cdns_dsi** %2, align 8
  %48 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @MCTL_MAIN_PHY_CTL, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @writel(i32 %46, i64 %51)
  %53 = load i64, i64* @NSEC_PER_SEC, align 8
  %54 = load %struct.cdns_dsi*, %struct.cdns_dsi** %2, align 8
  %55 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @clk_get_rate(i32 %56)
  %58 = udiv i64 %53, %57
  store i64 %58, i64* %4, align 8
  %59 = load i32, i32* @NSEC_PER_MSEC, align 4
  %60 = load i64, i64* %4, align 8
  %61 = call i64 @DIV_ROUND_UP(i32 %59, i64 %60)
  store i64 %61, i64* %5, align 8
  %62 = load i64, i64* %5, align 8
  %63 = call i32 @CLK_LANE_ULPOUT_TIME(i64 %62)
  %64 = load i64, i64* %5, align 8
  %65 = call i32 @DATA_LANE_ULPOUT_TIME(i64 %64)
  %66 = or i32 %63, %65
  %67 = load %struct.cdns_dsi*, %struct.cdns_dsi** %2, align 8
  %68 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @MCTL_ULPOUT_TIME, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @writel(i32 %66, i64 %71)
  %73 = load i32, i32* @LINK_EN, align 4
  %74 = load %struct.cdns_dsi*, %struct.cdns_dsi** %2, align 8
  %75 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @MCTL_MAIN_DATA_CTL, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @writel(i32 %73, i64 %78)
  %80 = load i32, i32* @CLK_LANE_EN, align 4
  %81 = load i32, i32* @PLL_START, align 4
  %82 = or i32 %80, %81
  store i32 %82, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %83

83:                                               ; preds = %96, %45
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.cdns_dsi_output*, %struct.cdns_dsi_output** %3, align 8
  %86 = getelementptr inbounds %struct.cdns_dsi_output, %struct.cdns_dsi_output* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp slt i32 %84, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %83
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @DATA_LANE_START(i32 %92)
  %94 = load i32, i32* %6, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %91
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %7, align 4
  br label %83

99:                                               ; preds = %83
  %100 = load i32, i32* %6, align 4
  %101 = load %struct.cdns_dsi*, %struct.cdns_dsi** %2, align 8
  %102 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @MCTL_MAIN_EN, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @writel(i32 %100, i64 %105)
  %107 = load %struct.cdns_dsi*, %struct.cdns_dsi** %2, align 8
  %108 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %107, i32 0, i32 0
  store i32 1, i32* %108, align 8
  br label %109

109:                                              ; preds = %99, %14
  ret void
}

declare dso_local i32 @DATA_LANE_EN(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i64 @DIV_ROUND_UP(i32, i64) #1

declare dso_local i32 @CLK_LANE_ULPOUT_TIME(i64) #1

declare dso_local i32 @DATA_LANE_ULPOUT_TIME(i64) #1

declare dso_local i32 @DATA_LANE_START(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
