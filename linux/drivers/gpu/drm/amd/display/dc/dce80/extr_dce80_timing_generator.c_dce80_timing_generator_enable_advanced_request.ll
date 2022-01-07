; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce80/extr_dce80_timing_generator.c_dce80_timing_generator_enable_advanced_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce80/extr_dce80_timing_generator.c_dce80_timing_generator_enable_advanced_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32 }
%struct.dc_crtc_timing = type { i32, i32 }
%struct.dce110_timing_generator = type { i32 }

@mmCRTC_START_LINE_CONTROL = common dso_local global i32 0, align 4
@CRTC_START_LINE_CONTROL = common dso_local global i32 0, align 4
@CRTC_LEGACY_REQUESTOR_EN = common dso_local global i32 0, align 4
@CRTC_ADVANCED_START_LINE_POSITION = common dso_local global i32 0, align 4
@CRTC_PREFETCH_EN = common dso_local global i32 0, align 4
@CRTC_PROGRESSIVE_START_LINE_EARLY = common dso_local global i32 0, align 4
@CRTC_INTERLACE_START_LINE_EARLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timing_generator*, i32, %struct.dc_crtc_timing*)* @dce80_timing_generator_enable_advanced_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce80_timing_generator_enable_advanced_request(%struct.timing_generator* %0, i32 %1, %struct.dc_crtc_timing* %2) #0 {
  %4 = alloca %struct.timing_generator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dc_crtc_timing*, align 8
  %7 = alloca %struct.dce110_timing_generator*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.timing_generator* %0, %struct.timing_generator** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.dc_crtc_timing* %2, %struct.dc_crtc_timing** %6, align 8
  %10 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %11 = call %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator* %10)
  store %struct.dce110_timing_generator* %11, %struct.dce110_timing_generator** %7, align 8
  %12 = load i32, i32* @mmCRTC_START_LINE_CONTROL, align 4
  %13 = call i32 @CRTC_REG(i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %15 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @dm_read_reg(i32 %16, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @CRTC_START_LINE_CONTROL, align 4
  %24 = load i32, i32* @CRTC_LEGACY_REQUESTOR_EN, align 4
  %25 = call i32 @set_reg_field_value(i32 %22, i32 0, i32 %23, i32 %24)
  br label %31

26:                                               ; preds = %3
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @CRTC_START_LINE_CONTROL, align 4
  %29 = load i32, i32* @CRTC_LEGACY_REQUESTOR_EN, align 4
  %30 = call i32 @set_reg_field_value(i32 %27, i32 1, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %26, %21
  %32 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %33 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %36 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %34, %37
  %39 = icmp sle i32 %38, 3
  br i1 %39, label %40, label %49

40:                                               ; preds = %31
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @CRTC_START_LINE_CONTROL, align 4
  %43 = load i32, i32* @CRTC_ADVANCED_START_LINE_POSITION, align 4
  %44 = call i32 @set_reg_field_value(i32 %41, i32 3, i32 %42, i32 %43)
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @CRTC_START_LINE_CONTROL, align 4
  %47 = load i32, i32* @CRTC_PREFETCH_EN, align 4
  %48 = call i32 @set_reg_field_value(i32 %45, i32 0, i32 %46, i32 %47)
  br label %58

49:                                               ; preds = %31
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @CRTC_START_LINE_CONTROL, align 4
  %52 = load i32, i32* @CRTC_ADVANCED_START_LINE_POSITION, align 4
  %53 = call i32 @set_reg_field_value(i32 %50, i32 4, i32 %51, i32 %52)
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @CRTC_START_LINE_CONTROL, align 4
  %56 = load i32, i32* @CRTC_PREFETCH_EN, align 4
  %57 = call i32 @set_reg_field_value(i32 %54, i32 1, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %49, %40
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @CRTC_START_LINE_CONTROL, align 4
  %61 = load i32, i32* @CRTC_PROGRESSIVE_START_LINE_EARLY, align 4
  %62 = call i32 @set_reg_field_value(i32 %59, i32 1, i32 %60, i32 %61)
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @CRTC_START_LINE_CONTROL, align 4
  %65 = load i32, i32* @CRTC_INTERLACE_START_LINE_EARLY, align 4
  %66 = call i32 @set_reg_field_value(i32 %63, i32 1, i32 %64, i32 %65)
  %67 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %68 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @dm_write_reg(i32 %69, i32 %70, i32 %71)
  ret void
}

declare dso_local %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator*) #1

declare dso_local i32 @CRTC_REG(i32) #1

declare dso_local i32 @dm_read_reg(i32, i32) #1

declare dso_local i32 @set_reg_field_value(i32, i32, i32, i32) #1

declare dso_local i32 @dm_write_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
