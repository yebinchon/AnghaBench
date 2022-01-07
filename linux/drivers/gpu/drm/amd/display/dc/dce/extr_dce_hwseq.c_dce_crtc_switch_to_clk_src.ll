; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_hwseq.c_dce_crtc_switch_to_clk_src.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_hwseq.c_dce_crtc_switch_to_clk_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_hwseq = type { i32 }
%struct.clock_source = type { i64, i64 }

@CLOCK_SOURCE_ID_DP_DTO = common dso_local global i64 0, align 8
@PIXEL_RATE_CNTL = common dso_local global i32* null, align 8
@DP_DTO0_ENABLE = common dso_local global i32 0, align 4
@CLOCK_SOURCE_COMBO_PHY_PLL0 = common dso_local global i64 0, align 8
@PHYPLL_PIXEL_RATE_CNTL = common dso_local global i32* null, align 8
@PHYPLL_PIXEL_RATE_SOURCE = common dso_local global i32 0, align 4
@PIXEL_RATE_PLL_SOURCE = common dso_local global i32 0, align 4
@CLOCK_SOURCE_ID_PLL2 = common dso_local global i64 0, align 8
@CLOCK_SOURCE_ID_PLL0 = common dso_local global i64 0, align 8
@PIXEL_RATE_SOURCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Unknown clock source. clk_src id: %d, TG_inst: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce_crtc_switch_to_clk_src(%struct.dce_hwseq* %0, %struct.clock_source* %1, i32 %2) #0 {
  %4 = alloca %struct.dce_hwseq*, align 8
  %5 = alloca %struct.clock_source*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.dce_hwseq* %0, %struct.dce_hwseq** %4, align 8
  store %struct.clock_source* %1, %struct.clock_source** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.clock_source*, %struct.clock_source** %5, align 8
  %10 = getelementptr inbounds %struct.clock_source, %struct.clock_source* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CLOCK_SOURCE_ID_DP_DTO, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = load %struct.clock_source*, %struct.clock_source** %5, align 8
  %16 = getelementptr inbounds %struct.clock_source, %struct.clock_source* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %14, %3
  %20 = load i32*, i32** @PIXEL_RATE_CNTL, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @DP_DTO0_ENABLE, align 4
  %26 = call i32 @REG_UPDATE(i32 %24, i32 %25, i32 1)
  br label %100

27:                                               ; preds = %14
  %28 = load %struct.clock_source*, %struct.clock_source** %5, align 8
  %29 = getelementptr inbounds %struct.clock_source, %struct.clock_source* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CLOCK_SOURCE_COMBO_PHY_PLL0, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %55

33:                                               ; preds = %27
  %34 = load %struct.clock_source*, %struct.clock_source** %5, align 8
  %35 = getelementptr inbounds %struct.clock_source, %struct.clock_source* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CLOCK_SOURCE_COMBO_PHY_PLL0, align 8
  %38 = sub nsw i64 %36, %37
  store i64 %38, i64* %7, align 8
  %39 = load i32*, i32** @PHYPLL_PIXEL_RATE_CNTL, align 8
  %40 = load i32, i32* %6, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @PHYPLL_PIXEL_RATE_SOURCE, align 4
  %45 = load i64, i64* %7, align 8
  %46 = load i32, i32* @PIXEL_RATE_PLL_SOURCE, align 4
  %47 = call i32 @REG_UPDATE_2(i32 %43, i32 %44, i64 %45, i32 %46, i32 0)
  %48 = load i32*, i32** @PIXEL_RATE_CNTL, align 8
  %49 = load i32, i32* %6, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @DP_DTO0_ENABLE, align 4
  %54 = call i32 @REG_UPDATE(i32 %52, i32 %53, i32 0)
  br label %99

55:                                               ; preds = %27
  %56 = load %struct.clock_source*, %struct.clock_source** %5, align 8
  %57 = getelementptr inbounds %struct.clock_source, %struct.clock_source* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @CLOCK_SOURCE_ID_PLL2, align 8
  %60 = icmp sle i64 %58, %59
  br i1 %60, label %61, label %92

61:                                               ; preds = %55
  %62 = load %struct.clock_source*, %struct.clock_source** %5, align 8
  %63 = getelementptr inbounds %struct.clock_source, %struct.clock_source* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @CLOCK_SOURCE_ID_PLL0, align 8
  %66 = sub nsw i64 %64, %65
  store i64 %66, i64* %8, align 8
  %67 = load i32*, i32** @PIXEL_RATE_CNTL, align 8
  %68 = load i32, i32* %6, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @PIXEL_RATE_SOURCE, align 4
  %73 = load i64, i64* %8, align 8
  %74 = load i32, i32* @DP_DTO0_ENABLE, align 4
  %75 = call i32 @REG_UPDATE_2(i32 %71, i32 %72, i64 %73, i32 %74, i32 0)
  %76 = load i32*, i32** @PHYPLL_PIXEL_RATE_CNTL, align 8
  %77 = load i32, i32* %6, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @REG(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %61
  %84 = load i32*, i32** @PHYPLL_PIXEL_RATE_CNTL, align 8
  %85 = load i32, i32* %6, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @PIXEL_RATE_PLL_SOURCE, align 4
  %90 = call i32 @REG_UPDATE(i32 %88, i32 %89, i32 1)
  br label %91

91:                                               ; preds = %83, %61
  br label %98

92:                                               ; preds = %55
  %93 = load %struct.clock_source*, %struct.clock_source** %5, align 8
  %94 = getelementptr inbounds %struct.clock_source, %struct.clock_source* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @DC_ERR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %95, i32 %96)
  br label %98

98:                                               ; preds = %92, %91
  br label %99

99:                                               ; preds = %98, %33
  br label %100

100:                                              ; preds = %99, %19
  ret void
}

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE_2(i32, i32, i64, i32, i32) #1

declare dso_local i64 @REG(i32) #1

declare dso_local i32 @DC_ERR(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
