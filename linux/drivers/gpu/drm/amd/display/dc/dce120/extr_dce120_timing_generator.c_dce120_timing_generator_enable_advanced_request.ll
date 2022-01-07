; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce120/extr_dce120_timing_generator.c_dce120_timing_generator_enable_advanced_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce120/extr_dce120_timing_generator.c_dce120_timing_generator_enable_advanced_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32 }
%struct.dc_crtc_timing = type { i32, i32, i32, i32 }
%struct.dce110_timing_generator = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@mmCRTC0_CRTC_START_LINE_CONTROL = common dso_local global i32 0, align 4
@CRTC0_CRTC_START_LINE_CONTROL = common dso_local global i32 0, align 4
@CRTC_LEGACY_REQUESTOR_EN = common dso_local global i32 0, align 4
@CRTC_ADVANCED_START_LINE_POSITION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce120_timing_generator_enable_advanced_request(%struct.timing_generator* %0, i32 %1, %struct.dc_crtc_timing* %2) #0 {
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
  %12 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %13 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %16 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 %14, %17
  %19 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %20 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %18, %21
  %23 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %24 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %22, %25
  store i32 %26, i32* %8, align 4
  %27 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %28 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @mmCRTC0_CRTC_START_LINE_CONTROL, align 4
  %31 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %7, align 8
  %32 = getelementptr inbounds %struct.dce110_timing_generator, %struct.dce110_timing_generator* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dm_read_reg_soc15(i32 %29, i32 %30, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 0, i32 1
  %41 = load i32, i32* @CRTC0_CRTC_START_LINE_CONTROL, align 4
  %42 = load i32, i32* @CRTC_LEGACY_REQUESTOR_EN, align 4
  %43 = call i32 @set_reg_field_value(i32 %36, i32 %40, i32 %41, i32 %42)
  %44 = load i32, i32* %8, align 4
  %45 = icmp sgt i32 %44, 10
  br i1 %45, label %46, label %47

46:                                               ; preds = %3
  store i32 10, i32* %8, align 4
  br label %47

47:                                               ; preds = %46, %3
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @CRTC0_CRTC_START_LINE_CONTROL, align 4
  %51 = load i32, i32* @CRTC_ADVANCED_START_LINE_POSITION, align 4
  %52 = call i32 @set_reg_field_value(i32 %48, i32 %49, i32 %50, i32 %51)
  %53 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %54 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @mmCRTC0_CRTC_START_LINE_CONTROL, align 4
  %57 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %7, align 8
  %58 = getelementptr inbounds %struct.dce110_timing_generator, %struct.dce110_timing_generator* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @dm_write_reg_soc15(i32 %55, i32 %56, i32 %60, i32 %61)
  ret void
}

declare dso_local %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator*) #1

declare dso_local i32 @dm_read_reg_soc15(i32, i32, i32) #1

declare dso_local i32 @set_reg_field_value(i32, i32, i32, i32) #1

declare dso_local i32 @dm_write_reg_soc15(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
