; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_ipp.c_dce_ipp_program_input_lut.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_ipp.c_dce_ipp_program_input_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_pixel_processor = type { i32 }
%struct.dc_gamma = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32*, i32* }
%struct.dce_ipp = type { i32 }

@DCFE_MEM_PWR_CTRL = common dso_local global i32 0, align 4
@DCP_LUT_MEM_PWR_DIS = common dso_local global i32 0, align 4
@DC_LUT_WRITE_EN_MASK = common dso_local global i32 0, align 4
@DC_LUT_RW_MODE = common dso_local global i32 0, align 4
@DC_LUT_CONTROL = common dso_local global i32 0, align 4
@DC_LUT_DATA_R_FORMAT = common dso_local global i32 0, align 4
@DC_LUT_DATA_G_FORMAT = common dso_local global i32 0, align 4
@DC_LUT_DATA_B_FORMAT = common dso_local global i32 0, align 4
@DC_LUT_RW_INDEX = common dso_local global i32 0, align 4
@DC_LUT_SEQ_COLOR = common dso_local global i32 0, align 4
@PRESCALE_GRPH_CONTROL = common dso_local global i32 0, align 4
@GRPH_PRESCALE_BYPASS = common dso_local global i32 0, align 4
@INPUT_GAMMA_CONTROL = common dso_local global i32 0, align 4
@GRPH_INPUT_GAMMA_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_pixel_processor*, %struct.dc_gamma*)* @dce_ipp_program_input_lut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_ipp_program_input_lut(%struct.input_pixel_processor* %0, %struct.dc_gamma* %1) #0 {
  %3 = alloca %struct.input_pixel_processor*, align 8
  %4 = alloca %struct.dc_gamma*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dce_ipp*, align 8
  store %struct.input_pixel_processor* %0, %struct.input_pixel_processor** %3, align 8
  store %struct.dc_gamma* %1, %struct.dc_gamma** %4, align 8
  %7 = load %struct.input_pixel_processor*, %struct.input_pixel_processor** %3, align 8
  %8 = call %struct.dce_ipp* @TO_DCE_IPP(%struct.input_pixel_processor* %7)
  store %struct.dce_ipp* %8, %struct.dce_ipp** %6, align 8
  %9 = load i32, i32* @DCFE_MEM_PWR_CTRL, align 4
  %10 = call i64 @REG(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @DCFE_MEM_PWR_CTRL, align 4
  %14 = load i32, i32* @DCP_LUT_MEM_PWR_DIS, align 4
  %15 = call i32 @REG_SET(i32 %13, i32 0, i32 %14, i32 1)
  br label %16

16:                                               ; preds = %12, %2
  %17 = load i32, i32* @DC_LUT_WRITE_EN_MASK, align 4
  %18 = load i32, i32* @DC_LUT_WRITE_EN_MASK, align 4
  %19 = call i32 @REG_SET(i32 %17, i32 0, i32 %18, i32 7)
  %20 = load i32, i32* @DC_LUT_RW_MODE, align 4
  %21 = load i32, i32* @DC_LUT_RW_MODE, align 4
  %22 = call i32 @REG_UPDATE(i32 %20, i32 %21, i32 0)
  %23 = load i32, i32* @DC_LUT_CONTROL, align 4
  %24 = load i32, i32* @DC_LUT_DATA_R_FORMAT, align 4
  %25 = load i32, i32* @DC_LUT_DATA_G_FORMAT, align 4
  %26 = load i32, i32* @DC_LUT_DATA_B_FORMAT, align 4
  %27 = call i32 @REG_SET_3(i32 %23, i32 0, i32 %24, i32 3, i32 %25, i32 3, i32 %26, i32 3)
  %28 = load i32, i32* @DC_LUT_RW_INDEX, align 4
  %29 = load i32, i32* @DC_LUT_RW_INDEX, align 4
  %30 = call i32 @REG_SET(i32 %28, i32 0, i32 %29, i32 0)
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %74, %16
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.dc_gamma*, %struct.dc_gamma** %4, align 8
  %34 = getelementptr inbounds %struct.dc_gamma, %struct.dc_gamma* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %77

37:                                               ; preds = %31
  %38 = load i32, i32* @DC_LUT_SEQ_COLOR, align 4
  %39 = load i32, i32* @DC_LUT_SEQ_COLOR, align 4
  %40 = load %struct.dc_gamma*, %struct.dc_gamma** %4, align 8
  %41 = getelementptr inbounds %struct.dc_gamma, %struct.dc_gamma* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dc_fixpt_round(i32 %47)
  %49 = call i32 @REG_SET(i32 %38, i32 0, i32 %39, i32 %48)
  %50 = load i32, i32* @DC_LUT_SEQ_COLOR, align 4
  %51 = load i32, i32* @DC_LUT_SEQ_COLOR, align 4
  %52 = load %struct.dc_gamma*, %struct.dc_gamma** %4, align 8
  %53 = getelementptr inbounds %struct.dc_gamma, %struct.dc_gamma* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dc_fixpt_round(i32 %59)
  %61 = call i32 @REG_SET(i32 %50, i32 0, i32 %51, i32 %60)
  %62 = load i32, i32* @DC_LUT_SEQ_COLOR, align 4
  %63 = load i32, i32* @DC_LUT_SEQ_COLOR, align 4
  %64 = load %struct.dc_gamma*, %struct.dc_gamma** %4, align 8
  %65 = getelementptr inbounds %struct.dc_gamma, %struct.dc_gamma* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @dc_fixpt_round(i32 %71)
  %73 = call i32 @REG_SET(i32 %62, i32 0, i32 %63, i32 %72)
  br label %74

74:                                               ; preds = %37
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %31

77:                                               ; preds = %31
  %78 = load i32, i32* @DCFE_MEM_PWR_CTRL, align 4
  %79 = call i64 @REG(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i32, i32* @DCFE_MEM_PWR_CTRL, align 4
  %83 = load i32, i32* @DCP_LUT_MEM_PWR_DIS, align 4
  %84 = call i32 @REG_SET(i32 %82, i32 0, i32 %83, i32 0)
  br label %85

85:                                               ; preds = %81, %77
  %86 = load i32, i32* @PRESCALE_GRPH_CONTROL, align 4
  %87 = load i32, i32* @GRPH_PRESCALE_BYPASS, align 4
  %88 = call i32 @REG_UPDATE(i32 %86, i32 %87, i32 1)
  %89 = load i32, i32* @INPUT_GAMMA_CONTROL, align 4
  %90 = load i32, i32* @GRPH_INPUT_GAMMA_MODE, align 4
  %91 = call i32 @REG_UPDATE(i32 %89, i32 %90, i32 0)
  ret void
}

declare dso_local %struct.dce_ipp* @TO_DCE_IPP(%struct.input_pixel_processor*) #1

declare dso_local i64 @REG(i32) #1

declare dso_local i32 @REG_SET(i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @REG_SET_3(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dc_fixpt_round(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
