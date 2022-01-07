; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dsi.c_exynos_dsi_set_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dsi.c_exynos_dsi_set_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_dsi = type { i64, i32, i64, %struct.exynos_dsi_driver_data* }
%struct.exynos_dsi_driver_data = type { i64, i64, i32* }

@.str = private unnamed_addr constant [48 x i8] c"failed to find PLL PMS for requested frequency\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"PLL freq %lu, (p %d, m %d, s %d)\0A\00", align 1
@PLL_TIMER = common dso_local global i64 0, align 8
@DSIM_PLL_EN = common dso_local global i32 0, align 4
@exynos_dsi_set_pll.freq_bands = internal constant [15 x i64] [i64 12800, i64 15360, i64 20480, i64 25600, i64 34560, i64 40960, i64 49920, i64 57600, i64 65280, i64 71680, i64 81920, i64 88320, i64 98560, i64 111360, i64 121600], align 16
@.str.2 = private unnamed_addr constant [9 x i8] c"band %d\0A\00", align 1
@DSIM_PLLCTRL_REG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"PLL failed to stabilize\0A\00", align 1
@DSIM_STATUS_REG = common dso_local global i32 0, align 4
@DSIM_PLL_STABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.exynos_dsi*, i64)* @exynos_dsi_set_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @exynos_dsi_set_pll(%struct.exynos_dsi* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.exynos_dsi*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.exynos_dsi_driver_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.exynos_dsi* %0, %struct.exynos_dsi** %4, align 8
  store i64 %1, i64* %5, align 8
  %15 = load %struct.exynos_dsi*, %struct.exynos_dsi** %4, align 8
  %16 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %15, i32 0, i32 3
  %17 = load %struct.exynos_dsi_driver_data*, %struct.exynos_dsi_driver_data** %16, align 8
  store %struct.exynos_dsi_driver_data* %17, %struct.exynos_dsi_driver_data** %6, align 8
  %18 = load %struct.exynos_dsi*, %struct.exynos_dsi** %4, align 8
  %19 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %7, align 8
  %21 = load %struct.exynos_dsi*, %struct.exynos_dsi** %4, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @exynos_dsi_pll_find_pms(%struct.exynos_dsi* %21, i64 %22, i64 %23, i32* %10, i32* %12, i32* %11)
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %8, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %2
  %28 = load %struct.exynos_dsi*, %struct.exynos_dsi** %4, align 8
  %29 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %3, align 8
  br label %122

32:                                               ; preds = %2
  %33 = load %struct.exynos_dsi*, %struct.exynos_dsi** %4, align 8
  %34 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = trunc i64 %36 to i32
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %35, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %38, i32 %39, i32 %40)
  %42 = load %struct.exynos_dsi_driver_data*, %struct.exynos_dsi_driver_data** %6, align 8
  %43 = getelementptr inbounds %struct.exynos_dsi_driver_data, %struct.exynos_dsi_driver_data* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @PLL_TIMER, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.exynos_dsi*, %struct.exynos_dsi** %4, align 8
  %49 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.exynos_dsi_driver_data*, %struct.exynos_dsi_driver_data** %6, align 8
  %52 = getelementptr inbounds %struct.exynos_dsi_driver_data, %struct.exynos_dsi_driver_data* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %50, %53
  %55 = call i32 @writel(i32 %47, i64 %54)
  %56 = load i32, i32* @DSIM_PLL_EN, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @DSIM_PLL_P(i32 %57)
  %59 = or i32 %56, %58
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @DSIM_PLL_M(i32 %60)
  %62 = or i32 %59, %61
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @DSIM_PLL_S(i32 %63)
  %65 = or i32 %62, %64
  store i32 %65, i32* %13, align 4
  %66 = load %struct.exynos_dsi_driver_data*, %struct.exynos_dsi_driver_data** %6, align 8
  %67 = getelementptr inbounds %struct.exynos_dsi_driver_data, %struct.exynos_dsi_driver_data* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %97

70:                                               ; preds = %32
  store i32 0, i32* %14, align 4
  br label %71

71:                                               ; preds = %84, %70
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @ARRAY_SIZE(i64* getelementptr inbounds ([15 x i64], [15 x i64]* @exynos_dsi_set_pll.freq_bands, i64 0, i64 0))
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %71
  %76 = load i64, i64* %8, align 8
  %77 = load i32, i32* %14, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [15 x i64], [15 x i64]* @exynos_dsi_set_pll.freq_bands, i64 0, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = icmp ult i64 %76, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %87

83:                                               ; preds = %75
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %14, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %14, align 4
  br label %71

87:                                               ; preds = %82, %71
  %88 = load %struct.exynos_dsi*, %struct.exynos_dsi** %4, align 8
  %89 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %14, align 4
  %92 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %90, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* %14, align 4
  %94 = call i32 @DSIM_FREQ_BAND(i32 %93)
  %95 = load i32, i32* %13, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %13, align 4
  br label %97

97:                                               ; preds = %87, %32
  %98 = load %struct.exynos_dsi*, %struct.exynos_dsi** %4, align 8
  %99 = load i32, i32* @DSIM_PLLCTRL_REG, align 4
  %100 = load i32, i32* %13, align 4
  %101 = call i32 @exynos_dsi_write(%struct.exynos_dsi* %98, i32 %99, i32 %100)
  store i32 1000, i32* %9, align 4
  br label %102

102:                                              ; preds = %115, %97
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %9, align 4
  %105 = icmp eq i32 %103, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %102
  %107 = load %struct.exynos_dsi*, %struct.exynos_dsi** %4, align 8
  %108 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @dev_err(i32 %109, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  store i64 0, i64* %3, align 8
  br label %122

111:                                              ; preds = %102
  %112 = load %struct.exynos_dsi*, %struct.exynos_dsi** %4, align 8
  %113 = load i32, i32* @DSIM_STATUS_REG, align 4
  %114 = call i32 @exynos_dsi_read(%struct.exynos_dsi* %112, i32 %113)
  store i32 %114, i32* %13, align 4
  br label %115

115:                                              ; preds = %111
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* @DSIM_PLL_STABLE, align 4
  %118 = and i32 %116, %117
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %102, label %120

120:                                              ; preds = %115
  %121 = load i64, i64* %8, align 8
  store i64 %121, i64* %3, align 8
  br label %122

122:                                              ; preds = %120, %106, %27
  %123 = load i64, i64* %3, align 8
  ret i64 %123
}

declare dso_local i64 @exynos_dsi_pll_find_pms(%struct.exynos_dsi*, i64, i64, i32*, i32*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @DSIM_PLL_P(i32) #1

declare dso_local i32 @DSIM_PLL_M(i32) #1

declare dso_local i32 @DSIM_PLL_S(i32) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @DSIM_FREQ_BAND(i32) #1

declare dso_local i32 @exynos_dsi_write(%struct.exynos_dsi*, i32, i32) #1

declare dso_local i32 @exynos_dsi_read(%struct.exynos_dsi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
