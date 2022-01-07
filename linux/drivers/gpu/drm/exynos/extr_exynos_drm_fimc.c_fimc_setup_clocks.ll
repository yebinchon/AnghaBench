; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimc.c_fimc_setup_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimc.c_fimc_setup_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_context = type { i32*, %struct.device* }
%struct.device = type { %struct.device* }

@FIMC_CLKS_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FIMC_CLK_WB_A = common dso_local global i32 0, align 4
@FIMC_CLK_WB_B = common dso_local global i32 0, align 4
@fimc_clock_names = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"failed to get clock: %s\0A\00", align 1
@FIMC_CLK_LCLK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fimc_context*)* @fimc_setup_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_setup_clocks(%struct.fimc_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fimc_context*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fimc_context* %0, %struct.fimc_context** %3, align 8
  %8 = load %struct.fimc_context*, %struct.fimc_context** %3, align 8
  %9 = getelementptr inbounds %struct.fimc_context, %struct.fimc_context* %8, i32 0, i32 1
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %4, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %25, %1
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @FIMC_CLKS_MAX, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  %18 = call i32 @ERR_PTR(i32 %17)
  %19 = load %struct.fimc_context*, %struct.fimc_context** %3, align 8
  %20 = getelementptr inbounds %struct.fimc_context, %struct.fimc_context* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  store i32 %18, i32* %24, align 4
  br label %25

25:                                               ; preds = %15
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %7, align 4
  br label %11

28:                                               ; preds = %11
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %87, %28
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @FIMC_CLKS_MAX, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %90

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @FIMC_CLK_WB_A, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @FIMC_CLK_WB_B, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37, %33
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = getelementptr inbounds %struct.device, %struct.device* %42, i32 0, i32 0
  %44 = load %struct.device*, %struct.device** %43, align 8
  store %struct.device* %44, %struct.device** %5, align 8
  br label %47

45:                                               ; preds = %37
  %46 = load %struct.device*, %struct.device** %4, align 8
  store %struct.device* %46, %struct.device** %5, align 8
  br label %47

47:                                               ; preds = %45, %41
  %48 = load %struct.device*, %struct.device** %5, align 8
  %49 = load i32*, i32** @fimc_clock_names, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @clk_get(%struct.device* %48, i32 %53)
  %55 = load %struct.fimc_context*, %struct.fimc_context** %3, align 8
  %56 = getelementptr inbounds %struct.fimc_context, %struct.fimc_context* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %54, i32* %60, align 4
  %61 = load %struct.fimc_context*, %struct.fimc_context** %3, align 8
  %62 = getelementptr inbounds %struct.fimc_context, %struct.fimc_context* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @IS_ERR(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %47
  %71 = load %struct.fimc_context*, %struct.fimc_context** %3, align 8
  %72 = getelementptr inbounds %struct.fimc_context, %struct.fimc_context* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @PTR_ERR(i32 %77)
  store i32 %78, i32* %6, align 4
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = load i32*, i32** @fimc_clock_names, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @dev_err(%struct.device* %79, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %84)
  br label %103

86:                                               ; preds = %47
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  br label %29

90:                                               ; preds = %29
  %91 = load %struct.fimc_context*, %struct.fimc_context** %3, align 8
  %92 = getelementptr inbounds %struct.fimc_context, %struct.fimc_context* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* @FIMC_CLK_LCLK, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @clk_prepare_enable(i32 %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %90
  %101 = load i32, i32* %6, align 4
  store i32 %101, i32* %2, align 4
  br label %107

102:                                              ; preds = %90
  br label %103

103:                                              ; preds = %102, %70
  %104 = load %struct.fimc_context*, %struct.fimc_context** %3, align 8
  %105 = call i32 @fimc_put_clocks(%struct.fimc_context* %104)
  %106 = load i32, i32* %6, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %103, %100
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @ERR_PTR(i32) #1

declare dso_local i32 @clk_get(%struct.device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @fimc_put_clocks(%struct.fimc_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
