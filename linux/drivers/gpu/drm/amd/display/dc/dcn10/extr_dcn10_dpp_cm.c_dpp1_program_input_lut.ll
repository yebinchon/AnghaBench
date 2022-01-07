; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp_cm.c_dpp1_program_input_lut.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp_cm.c_dpp1_program_input_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp = type { i32 }
%struct.dc_gamma = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32*, i32* }
%struct.dcn10_dpp = type { i32 }

@CM_MEM_PWR_CTRL = common dso_local global i32 0, align 4
@SHARED_MEM_PWR_DIS = common dso_local global i32 0, align 4
@CM_IGAM_LUT_RW_CONTROL = common dso_local global i32 0, align 4
@CM_IGAM_LUT_SEL = common dso_local global i32 0, align 4
@CM_IGAM_LUT_RW_MODE = common dso_local global i32 0, align 4
@CM_IGAM_CONTROL = common dso_local global i32 0, align 4
@CM_IGAM_INPUT_FORMAT = common dso_local global i32 0, align 4
@CM_IGAM_LUT_WRITE_EN_MASK = common dso_local global i32 0, align 4
@CM_IGAM_LUT_FORMAT_R = common dso_local global i32 0, align 4
@CM_IGAM_LUT_FORMAT_G = common dso_local global i32 0, align 4
@CM_IGAM_LUT_FORMAT_B = common dso_local global i32 0, align 4
@CM_IGAM_LUT_RW_INDEX = common dso_local global i32 0, align 4
@CM_IGAM_LUT_SEQ_COLOR = common dso_local global i32 0, align 4
@CM_IGAM_LUT_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dpp1_program_input_lut(%struct.dpp* %0, %struct.dc_gamma* %1) #0 {
  %3 = alloca %struct.dpp*, align 8
  %4 = alloca %struct.dc_gamma*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dcn10_dpp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dpp* %0, %struct.dpp** %3, align 8
  store %struct.dc_gamma* %1, %struct.dc_gamma** %4, align 8
  %9 = load %struct.dpp*, %struct.dpp** %3, align 8
  %10 = call %struct.dcn10_dpp* @TO_DCN10_DPP(%struct.dpp* %9)
  store %struct.dcn10_dpp* %10, %struct.dcn10_dpp** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* @CM_MEM_PWR_CTRL, align 4
  %12 = load i32, i32* @SHARED_MEM_PWR_DIS, align 4
  %13 = call i32 @REG_SET(i32 %11, i32 0, i32 %12, i32 1)
  %14 = load %struct.dpp*, %struct.dpp** %3, align 8
  %15 = call i32 @dpp1_enable_cm_block(%struct.dpp* %14)
  %16 = load %struct.dpp*, %struct.dpp** %3, align 8
  %17 = call i32 @dpp1_ingamma_ram_inuse(%struct.dpp* %16, i32* %7)
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @CM_IGAM_LUT_RW_CONTROL, align 4
  %22 = load i32, i32* @CM_IGAM_LUT_SEL, align 4
  %23 = call i32 @REG_UPDATE(i32 %21, i32 %22, i32 0)
  br label %28

24:                                               ; preds = %2
  %25 = load i32, i32* @CM_IGAM_LUT_RW_CONTROL, align 4
  %26 = load i32, i32* @CM_IGAM_LUT_SEL, align 4
  %27 = call i32 @REG_UPDATE(i32 %25, i32 %26, i32 1)
  br label %28

28:                                               ; preds = %24, %20
  %29 = load i32, i32* @CM_IGAM_LUT_RW_CONTROL, align 4
  %30 = load i32, i32* @CM_IGAM_LUT_RW_MODE, align 4
  %31 = call i32 @REG_UPDATE(i32 %29, i32 %30, i32 0)
  %32 = load i32, i32* @CM_IGAM_CONTROL, align 4
  %33 = load i32, i32* @CM_IGAM_INPUT_FORMAT, align 4
  %34 = call i32 @REG_UPDATE(i32 %32, i32 %33, i32 0)
  %35 = load i32, i32* @CM_IGAM_LUT_RW_CONTROL, align 4
  %36 = load i32, i32* @CM_IGAM_LUT_WRITE_EN_MASK, align 4
  %37 = call i32 @REG_UPDATE(i32 %35, i32 %36, i32 7)
  %38 = load i32, i32* @CM_IGAM_CONTROL, align 4
  %39 = load i32, i32* @CM_IGAM_LUT_FORMAT_R, align 4
  %40 = load i32, i32* @CM_IGAM_LUT_FORMAT_G, align 4
  %41 = load i32, i32* @CM_IGAM_LUT_FORMAT_B, align 4
  %42 = call i32 @REG_UPDATE_3(i32 %38, i32 %39, i32 3, i32 %40, i32 3, i32 %41, i32 3)
  %43 = load i32, i32* @CM_IGAM_LUT_RW_INDEX, align 4
  %44 = load i32, i32* @CM_IGAM_LUT_RW_INDEX, align 4
  %45 = call i32 @REG_UPDATE(i32 %43, i32 %44, i32 0)
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %89, %28
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.dc_gamma*, %struct.dc_gamma** %4, align 8
  %49 = getelementptr inbounds %struct.dc_gamma, %struct.dc_gamma* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %92

52:                                               ; preds = %46
  %53 = load i32, i32* @CM_IGAM_LUT_SEQ_COLOR, align 4
  %54 = load i32, i32* @CM_IGAM_LUT_SEQ_COLOR, align 4
  %55 = load %struct.dc_gamma*, %struct.dc_gamma** %4, align 8
  %56 = getelementptr inbounds %struct.dc_gamma, %struct.dc_gamma* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @dc_fixpt_round(i32 %62)
  %64 = call i32 @REG_SET(i32 %53, i32 0, i32 %54, i32 %63)
  %65 = load i32, i32* @CM_IGAM_LUT_SEQ_COLOR, align 4
  %66 = load i32, i32* @CM_IGAM_LUT_SEQ_COLOR, align 4
  %67 = load %struct.dc_gamma*, %struct.dc_gamma** %4, align 8
  %68 = getelementptr inbounds %struct.dc_gamma, %struct.dc_gamma* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @dc_fixpt_round(i32 %74)
  %76 = call i32 @REG_SET(i32 %65, i32 0, i32 %66, i32 %75)
  %77 = load i32, i32* @CM_IGAM_LUT_SEQ_COLOR, align 4
  %78 = load i32, i32* @CM_IGAM_LUT_SEQ_COLOR, align 4
  %79 = load %struct.dc_gamma*, %struct.dc_gamma** %4, align 8
  %80 = getelementptr inbounds %struct.dc_gamma, %struct.dc_gamma* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @dc_fixpt_round(i32 %86)
  %88 = call i32 @REG_SET(i32 %77, i32 0, i32 %78, i32 %87)
  br label %89

89:                                               ; preds = %52
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %5, align 4
  br label %46

92:                                               ; preds = %46
  %93 = load i32, i32* @CM_MEM_PWR_CTRL, align 4
  %94 = load i32, i32* @SHARED_MEM_PWR_DIS, align 4
  %95 = call i32 @REG_SET(i32 %93, i32 0, i32 %94, i32 0)
  %96 = load i32, i32* @CM_IGAM_CONTROL, align 4
  %97 = load i32, i32* @CM_IGAM_LUT_MODE, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i32 3, i32 2
  %102 = call i32 @REG_UPDATE(i32 %96, i32 %97, i32 %101)
  %103 = load i32, i32* @CM_IGAM_CONTROL, align 4
  %104 = load i32, i32* @CM_IGAM_LUT_MODE, align 4
  %105 = call i32 @REG_GET(i32 %103, i32 %104, i32* %8)
  ret void
}

declare dso_local %struct.dcn10_dpp* @TO_DCN10_DPP(%struct.dpp*) #1

declare dso_local i32 @REG_SET(i32, i32, i32, i32) #1

declare dso_local i32 @dpp1_enable_cm_block(%struct.dpp*) #1

declare dso_local i32 @dpp1_ingamma_ram_inuse(%struct.dpp*, i32*) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE_3(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dc_fixpt_round(i32) #1

declare dso_local i32 @REG_GET(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
