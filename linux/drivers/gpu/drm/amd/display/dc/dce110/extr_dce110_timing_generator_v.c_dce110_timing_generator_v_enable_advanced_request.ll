; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_timing_generator_v.c_dce110_timing_generator_v_enable_advanced_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_timing_generator_v.c_dce110_timing_generator_v_enable_advanced_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32 }
%struct.dc_crtc_timing = type { i32, i32 }

@mmCRTCV_START_LINE_CONTROL = common dso_local global i32 0, align 4
@CRTCV_START_LINE_CONTROL = common dso_local global i32 0, align 4
@CRTC_ADVANCED_START_LINE_POSITION = common dso_local global i32 0, align 4
@CRTC_LEGACY_REQUESTOR_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timing_generator*, i32, %struct.dc_crtc_timing*)* @dce110_timing_generator_v_enable_advanced_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce110_timing_generator_v_enable_advanced_request(%struct.timing_generator* %0, i32 %1, %struct.dc_crtc_timing* %2) #0 {
  %4 = alloca %struct.timing_generator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dc_crtc_timing*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.timing_generator* %0, %struct.timing_generator** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.dc_crtc_timing* %2, %struct.dc_crtc_timing** %6, align 8
  %9 = load i32, i32* @mmCRTCV_START_LINE_CONTROL, align 4
  store i32 %9, i32* %7, align 4
  %10 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %11 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @dm_read_reg(i32 %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %3
  %18 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %19 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %22 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %20, %23
  %25 = icmp sle i32 %24, 3
  br i1 %25, label %26, label %31

26:                                               ; preds = %17
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @CRTCV_START_LINE_CONTROL, align 4
  %29 = load i32, i32* @CRTC_ADVANCED_START_LINE_POSITION, align 4
  %30 = call i32 @set_reg_field_value(i32 %27, i32 3, i32 %28, i32 %29)
  br label %36

31:                                               ; preds = %17
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @CRTCV_START_LINE_CONTROL, align 4
  %34 = load i32, i32* @CRTC_ADVANCED_START_LINE_POSITION, align 4
  %35 = call i32 @set_reg_field_value(i32 %32, i32 4, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %31, %26
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @CRTCV_START_LINE_CONTROL, align 4
  %39 = load i32, i32* @CRTC_LEGACY_REQUESTOR_EN, align 4
  %40 = call i32 @set_reg_field_value(i32 %37, i32 0, i32 %38, i32 %39)
  br label %50

41:                                               ; preds = %3
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @CRTCV_START_LINE_CONTROL, align 4
  %44 = load i32, i32* @CRTC_ADVANCED_START_LINE_POSITION, align 4
  %45 = call i32 @set_reg_field_value(i32 %42, i32 2, i32 %43, i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @CRTCV_START_LINE_CONTROL, align 4
  %48 = load i32, i32* @CRTC_LEGACY_REQUESTOR_EN, align 4
  %49 = call i32 @set_reg_field_value(i32 %46, i32 1, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %41, %36
  %51 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %52 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @dm_write_reg(i32 %53, i32 %54, i32 %55)
  ret void
}

declare dso_local i32 @dm_read_reg(i32, i32) #1

declare dso_local i32 @set_reg_field_value(i32, i32, i32, i32) #1

declare dso_local i32 @dm_write_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
