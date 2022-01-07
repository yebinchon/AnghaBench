; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_optc.c_optc2_set_odm_combine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_optc.c_optc2_set_odm_combine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32 }
%struct.dc_crtc_timing = type { i32, i32, i32, i64 }
%struct.optc = type { i32 }

@OPTC_MEMORY_CONFIG = common dso_local global i32 0, align 4
@OPTC_MEM_SEL = common dso_local global i32 0, align 4
@PIXEL_ENCODING_YCBCR422 = common dso_local global i64 0, align 8
@PIXEL_ENCODING_YCBCR420 = common dso_local global i64 0, align 8
@OPTC_DATA_FORMAT_CONTROL = common dso_local global i32 0, align 4
@OPTC_DATA_FORMAT = common dso_local global i32 0, align 4
@OPTC_DATA_SOURCE_SELECT = common dso_local global i32 0, align 4
@OPTC_NUM_OF_INPUT_SEGMENT = common dso_local global i32 0, align 4
@OPTC_SEG0_SRC_SEL = common dso_local global i32 0, align 4
@OPTC_SEG1_SRC_SEL = common dso_local global i32 0, align 4
@OPTC_WIDTH_CONTROL = common dso_local global i32 0, align 4
@OPTC_SEGMENT_WIDTH = common dso_local global i32 0, align 4
@OTG_H_TIMING_CNTL = common dso_local global i32 0, align 4
@OTG_H_TIMING_DIV_BY2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @optc2_set_odm_combine(%struct.timing_generator* %0, i32* %1, i32 %2, %struct.dc_crtc_timing* %3) #0 {
  %5 = alloca %struct.timing_generator*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dc_crtc_timing*, align 8
  %9 = alloca %struct.optc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.timing_generator* %0, %struct.timing_generator** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.dc_crtc_timing* %3, %struct.dc_crtc_timing** %8, align 8
  %13 = load %struct.timing_generator*, %struct.timing_generator** %5, align 8
  %14 = call %struct.optc* @DCN10TG_FROM_TG(%struct.timing_generator* %13)
  store %struct.optc* %14, %struct.optc** %9, align 8
  %15 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %8, align 8
  %16 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %8, align 8
  %19 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %17, %20
  %22 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %8, align 8
  %23 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %21, %24
  %26 = load i32, i32* %7, align 4
  %27 = sdiv i32 %25, %26
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp sle i32 %28, 2560
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 3, i32 15
  store i32 %31, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %32 = load i32, i32* @OPTC_MEMORY_CONFIG, align 4
  %33 = call i64 @REG(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %4
  %36 = load i32, i32* @OPTC_MEMORY_CONFIG, align 4
  %37 = load i32, i32* @OPTC_MEM_SEL, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.timing_generator*, %struct.timing_generator** %5, align 8
  %40 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %41, 4
  %43 = shl i32 %38, %42
  %44 = call i32 @REG_SET(i32 %36, i32 0, i32 %37, i32 %43)
  br label %45

45:                                               ; preds = %35, %4
  %46 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %8, align 8
  %47 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @PIXEL_ENCODING_YCBCR422, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i32 1, i32* %12, align 4
  br label %60

52:                                               ; preds = %45
  %53 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %8, align 8
  %54 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @PIXEL_ENCODING_YCBCR420, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 2, i32* %12, align 4
  br label %59

59:                                               ; preds = %58, %52
  br label %60

60:                                               ; preds = %59, %51
  %61 = load i32, i32* @OPTC_DATA_FORMAT_CONTROL, align 4
  %62 = load i32, i32* @OPTC_DATA_FORMAT, align 4
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @REG_UPDATE(i32 %61, i32 %62, i32 %63)
  %65 = load i32, i32* %7, align 4
  %66 = icmp eq i32 %65, 2
  %67 = zext i1 %66 to i32
  %68 = call i32 @ASSERT(i32 %67)
  %69 = load i32, i32* @OPTC_DATA_SOURCE_SELECT, align 4
  %70 = load i32, i32* @OPTC_NUM_OF_INPUT_SEGMENT, align 4
  %71 = load i32, i32* @OPTC_SEG0_SRC_SEL, align 4
  %72 = load i32*, i32** %6, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @OPTC_SEG1_SRC_SEL, align 4
  %76 = load i32*, i32** %6, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @REG_SET_3(i32 %69, i32 0, i32 %70, i32 1, i32 %71, i32 %74, i32 %75, i32 %78)
  %80 = load i32, i32* @OPTC_WIDTH_CONTROL, align 4
  %81 = load i32, i32* @OPTC_SEGMENT_WIDTH, align 4
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @REG_UPDATE(i32 %80, i32 %81, i32 %82)
  %84 = load i32, i32* @OTG_H_TIMING_CNTL, align 4
  %85 = load i32, i32* @OTG_H_TIMING_DIV_BY2, align 4
  %86 = call i32 @REG_SET(i32 %84, i32 0, i32 %85, i32 1)
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.optc*, %struct.optc** %9, align 8
  %89 = getelementptr inbounds %struct.optc, %struct.optc* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  ret void
}

declare dso_local %struct.optc* @DCN10TG_FROM_TG(%struct.timing_generator*) #1

declare dso_local i64 @REG(i32) #1

declare dso_local i32 @REG_SET(i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @REG_SET_3(i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
