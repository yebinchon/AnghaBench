; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_lvds.c_rockchip_lvds_poweron.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_lvds.c_rockchip_lvds_poweron.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_lvds = type { i64, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"failed to enable lvds pclk %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to get pm runtime: %d\0A\00", align 1
@RK3288_LVDS_CH0_REG0_LANE4_EN = common dso_local global i32 0, align 4
@RK3288_LVDS_CH0_REG0_LANE3_EN = common dso_local global i32 0, align 4
@RK3288_LVDS_CH0_REG0_LANE2_EN = common dso_local global i32 0, align 4
@RK3288_LVDS_CH0_REG0_LANE1_EN = common dso_local global i32 0, align 4
@RK3288_LVDS_CH0_REG0_LANE0_EN = common dso_local global i32 0, align 4
@DISPLAY_OUTPUT_RGB = common dso_local global i64 0, align 8
@RK3288_LVDS_CH0_REG0_TTL_EN = common dso_local global i32 0, align 4
@RK3288_LVDS_CH0_REG0_LANECK_EN = common dso_local global i32 0, align 4
@RK3288_LVDS_CH0_REG0 = common dso_local global i32 0, align 4
@RK3288_LVDS_CH0_REG2 = common dso_local global i32 0, align 4
@RK3288_LVDS_CH0_REG4 = common dso_local global i32 0, align 4
@RK3288_LVDS_CH0_REG4_LANECK_TTL_MODE = common dso_local global i32 0, align 4
@RK3288_LVDS_CH0_REG4_LANE4_TTL_MODE = common dso_local global i32 0, align 4
@RK3288_LVDS_CH0_REG4_LANE3_TTL_MODE = common dso_local global i32 0, align 4
@RK3288_LVDS_CH0_REG4_LANE2_TTL_MODE = common dso_local global i32 0, align 4
@RK3288_LVDS_CH0_REG4_LANE1_TTL_MODE = common dso_local global i32 0, align 4
@RK3288_LVDS_CH0_REG4_LANE0_TTL_MODE = common dso_local global i32 0, align 4
@RK3288_LVDS_CH0_REG5 = common dso_local global i32 0, align 4
@RK3288_LVDS_CH0_REG5_LANECK_TTL_DATA = common dso_local global i32 0, align 4
@RK3288_LVDS_CH0_REG5_LANE4_TTL_DATA = common dso_local global i32 0, align 4
@RK3288_LVDS_CH0_REG5_LANE3_TTL_DATA = common dso_local global i32 0, align 4
@RK3288_LVDS_CH0_REG5_LANE2_TTL_DATA = common dso_local global i32 0, align 4
@RK3288_LVDS_CH0_REG5_LANE1_TTL_DATA = common dso_local global i32 0, align 4
@RK3288_LVDS_CH0_REG5_LANE0_TTL_DATA = common dso_local global i32 0, align 4
@RK3288_LVDS_CH0_REG0_LVDS_EN = common dso_local global i32 0, align 4
@RK3288_LVDS_CH0_REG1 = common dso_local global i32 0, align 4
@RK3288_LVDS_CH0_REG1_LANECK_BIAS = common dso_local global i32 0, align 4
@RK3288_LVDS_CH0_REG1_LANE4_BIAS = common dso_local global i32 0, align 4
@RK3288_LVDS_CH0_REG1_LANE3_BIAS = common dso_local global i32 0, align 4
@RK3288_LVDS_CH0_REG1_LANE2_BIAS = common dso_local global i32 0, align 4
@RK3288_LVDS_CH0_REG1_LANE1_BIAS = common dso_local global i32 0, align 4
@RK3288_LVDS_CH0_REG1_LANE0_BIAS = common dso_local global i32 0, align 4
@RK3288_LVDS_CH0_REG2_RESERVE_ON = common dso_local global i32 0, align 4
@RK3288_LVDS_CH0_REG2_LANECK_LVDS_MODE = common dso_local global i32 0, align 4
@RK3288_LVDS_CH0_REG2_LANE4_LVDS_MODE = common dso_local global i32 0, align 4
@RK3288_LVDS_CH0_REG2_LANE3_LVDS_MODE = common dso_local global i32 0, align 4
@RK3288_LVDS_CH0_REG2_LANE2_LVDS_MODE = common dso_local global i32 0, align 4
@RK3288_LVDS_CH0_REG2_LANE1_LVDS_MODE = common dso_local global i32 0, align 4
@RK3288_LVDS_CH0_REG2_LANE0_LVDS_MODE = common dso_local global i32 0, align 4
@RK3288_LVDS_CH0_REG3 = common dso_local global i32 0, align 4
@RK3288_LVDS_CH0_REGD = common dso_local global i32 0, align 4
@RK3288_LVDS_CH0_REG20 = common dso_local global i32 0, align 4
@RK3288_LVDS_CH0_REG20_LSB = common dso_local global i32 0, align 4
@RK3288_LVDS_CFG_REGC = common dso_local global i32 0, align 4
@RK3288_LVDS_CFG_REGC_PLL_ENABLE = common dso_local global i32 0, align 4
@RK3288_LVDS_CFG_REG21 = common dso_local global i32 0, align 4
@RK3288_LVDS_CFG_REG21_TX_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rockchip_lvds*)* @rockchip_lvds_poweron to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_lvds_poweron(%struct.rockchip_lvds* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rockchip_lvds*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rockchip_lvds* %0, %struct.rockchip_lvds** %3, align 8
  %6 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %3, align 8
  %7 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @clk_enable(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %3, align 8
  %14 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @DRM_DEV_ERROR(i32 %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %163

19:                                               ; preds = %1
  %20 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %3, align 8
  %21 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pm_runtime_get_sync(i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %19
  %27 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %3, align 8
  %28 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @DRM_DEV_ERROR(i32 %29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %3, align 8
  %33 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @clk_disable(i32 %34)
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %163

37:                                               ; preds = %19
  %38 = load i32, i32* @RK3288_LVDS_CH0_REG0_LANE4_EN, align 4
  %39 = load i32, i32* @RK3288_LVDS_CH0_REG0_LANE3_EN, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @RK3288_LVDS_CH0_REG0_LANE2_EN, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @RK3288_LVDS_CH0_REG0_LANE1_EN, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @RK3288_LVDS_CH0_REG0_LANE0_EN, align 4
  %46 = or i32 %44, %45
  store i32 %46, i32* %5, align 4
  %47 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %3, align 8
  %48 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @DISPLAY_OUTPUT_RGB, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %94

52:                                               ; preds = %37
  %53 = load i32, i32* @RK3288_LVDS_CH0_REG0_TTL_EN, align 4
  %54 = load i32, i32* @RK3288_LVDS_CH0_REG0_LANECK_EN, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* %5, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %5, align 4
  %58 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %3, align 8
  %59 = load i32, i32* @RK3288_LVDS_CH0_REG0, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @lvds_writel(%struct.rockchip_lvds* %58, i32 %59, i32 %60)
  %62 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %3, align 8
  %63 = load i32, i32* @RK3288_LVDS_CH0_REG2, align 4
  %64 = call i32 @RK3288_LVDS_PLL_FBDIV_REG2(i32 70)
  %65 = call i32 @lvds_writel(%struct.rockchip_lvds* %62, i32 %63, i32 %64)
  %66 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %3, align 8
  %67 = load i32, i32* @RK3288_LVDS_CH0_REG4, align 4
  %68 = load i32, i32* @RK3288_LVDS_CH0_REG4_LANECK_TTL_MODE, align 4
  %69 = load i32, i32* @RK3288_LVDS_CH0_REG4_LANE4_TTL_MODE, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @RK3288_LVDS_CH0_REG4_LANE3_TTL_MODE, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @RK3288_LVDS_CH0_REG4_LANE2_TTL_MODE, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @RK3288_LVDS_CH0_REG4_LANE1_TTL_MODE, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @RK3288_LVDS_CH0_REG4_LANE0_TTL_MODE, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @lvds_writel(%struct.rockchip_lvds* %66, i32 %67, i32 %78)
  %80 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %3, align 8
  %81 = load i32, i32* @RK3288_LVDS_CH0_REG5, align 4
  %82 = load i32, i32* @RK3288_LVDS_CH0_REG5_LANECK_TTL_DATA, align 4
  %83 = load i32, i32* @RK3288_LVDS_CH0_REG5_LANE4_TTL_DATA, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @RK3288_LVDS_CH0_REG5_LANE3_TTL_DATA, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @RK3288_LVDS_CH0_REG5_LANE2_TTL_DATA, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @RK3288_LVDS_CH0_REG5_LANE1_TTL_DATA, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @RK3288_LVDS_CH0_REG5_LANE0_TTL_DATA, align 4
  %92 = or i32 %90, %91
  %93 = call i32 @lvds_writel(%struct.rockchip_lvds* %80, i32 %81, i32 %92)
  br label %142

94:                                               ; preds = %37
  %95 = load i32, i32* @RK3288_LVDS_CH0_REG0_LVDS_EN, align 4
  %96 = load i32, i32* @RK3288_LVDS_CH0_REG0_LANECK_EN, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* %5, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %5, align 4
  %100 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %3, align 8
  %101 = load i32, i32* @RK3288_LVDS_CH0_REG0, align 4
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @lvds_writel(%struct.rockchip_lvds* %100, i32 %101, i32 %102)
  %104 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %3, align 8
  %105 = load i32, i32* @RK3288_LVDS_CH0_REG1, align 4
  %106 = load i32, i32* @RK3288_LVDS_CH0_REG1_LANECK_BIAS, align 4
  %107 = load i32, i32* @RK3288_LVDS_CH0_REG1_LANE4_BIAS, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @RK3288_LVDS_CH0_REG1_LANE3_BIAS, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @RK3288_LVDS_CH0_REG1_LANE2_BIAS, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @RK3288_LVDS_CH0_REG1_LANE1_BIAS, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @RK3288_LVDS_CH0_REG1_LANE0_BIAS, align 4
  %116 = or i32 %114, %115
  %117 = call i32 @lvds_writel(%struct.rockchip_lvds* %104, i32 %105, i32 %116)
  %118 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %3, align 8
  %119 = load i32, i32* @RK3288_LVDS_CH0_REG2, align 4
  %120 = load i32, i32* @RK3288_LVDS_CH0_REG2_RESERVE_ON, align 4
  %121 = load i32, i32* @RK3288_LVDS_CH0_REG2_LANECK_LVDS_MODE, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @RK3288_LVDS_CH0_REG2_LANE4_LVDS_MODE, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @RK3288_LVDS_CH0_REG2_LANE3_LVDS_MODE, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @RK3288_LVDS_CH0_REG2_LANE2_LVDS_MODE, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @RK3288_LVDS_CH0_REG2_LANE1_LVDS_MODE, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @RK3288_LVDS_CH0_REG2_LANE0_LVDS_MODE, align 4
  %132 = or i32 %130, %131
  %133 = call i32 @RK3288_LVDS_PLL_FBDIV_REG2(i32 70)
  %134 = or i32 %132, %133
  %135 = call i32 @lvds_writel(%struct.rockchip_lvds* %118, i32 %119, i32 %134)
  %136 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %3, align 8
  %137 = load i32, i32* @RK3288_LVDS_CH0_REG4, align 4
  %138 = call i32 @lvds_writel(%struct.rockchip_lvds* %136, i32 %137, i32 0)
  %139 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %3, align 8
  %140 = load i32, i32* @RK3288_LVDS_CH0_REG5, align 4
  %141 = call i32 @lvds_writel(%struct.rockchip_lvds* %139, i32 %140, i32 0)
  br label %142

142:                                              ; preds = %94, %52
  %143 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %3, align 8
  %144 = load i32, i32* @RK3288_LVDS_CH0_REG3, align 4
  %145 = call i32 @RK3288_LVDS_PLL_FBDIV_REG3(i32 70)
  %146 = call i32 @lvds_writel(%struct.rockchip_lvds* %143, i32 %144, i32 %145)
  %147 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %3, align 8
  %148 = load i32, i32* @RK3288_LVDS_CH0_REGD, align 4
  %149 = call i32 @RK3288_LVDS_PLL_PREDIV_REGD(i32 10)
  %150 = call i32 @lvds_writel(%struct.rockchip_lvds* %147, i32 %148, i32 %149)
  %151 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %3, align 8
  %152 = load i32, i32* @RK3288_LVDS_CH0_REG20, align 4
  %153 = load i32, i32* @RK3288_LVDS_CH0_REG20_LSB, align 4
  %154 = call i32 @lvds_writel(%struct.rockchip_lvds* %151, i32 %152, i32 %153)
  %155 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %3, align 8
  %156 = load i32, i32* @RK3288_LVDS_CFG_REGC, align 4
  %157 = load i32, i32* @RK3288_LVDS_CFG_REGC_PLL_ENABLE, align 4
  %158 = call i32 @lvds_writel(%struct.rockchip_lvds* %155, i32 %156, i32 %157)
  %159 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %3, align 8
  %160 = load i32, i32* @RK3288_LVDS_CFG_REG21, align 4
  %161 = load i32, i32* @RK3288_LVDS_CFG_REG21_TX_ENABLE, align 4
  %162 = call i32 @lvds_writel(%struct.rockchip_lvds* %159, i32 %160, i32 %161)
  store i32 0, i32* %2, align 4
  br label %163

163:                                              ; preds = %142, %26, %12
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @lvds_writel(%struct.rockchip_lvds*, i32, i32) #1

declare dso_local i32 @RK3288_LVDS_PLL_FBDIV_REG2(i32) #1

declare dso_local i32 @RK3288_LVDS_PLL_FBDIV_REG3(i32) #1

declare dso_local i32 @RK3288_LVDS_PLL_PREDIV_REGD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
