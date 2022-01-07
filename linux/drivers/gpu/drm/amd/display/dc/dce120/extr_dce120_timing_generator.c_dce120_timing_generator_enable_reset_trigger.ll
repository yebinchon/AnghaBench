; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce120/extr_dce120_timing_generator.c_dce120_timing_generator_enable_reset_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce120/extr_dce120_timing_generator.c_dce120_timing_generator_enable_reset_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32 }
%struct.dce110_timing_generator = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@TRIGGER_SOURCE_SELECT_LOGIC_ZERO = common dso_local global i32 0, align 4
@mmCRTC0_CRTC_V_SYNC_A_CNTL = common dso_local global i32 0, align 4
@CRTC0_CRTC_V_SYNC_A_CNTL = common dso_local global i32 0, align 4
@CRTC_V_SYNC_A_POL = common dso_local global i32 0, align 4
@TRIGGER_SOURCE_SELECT_GSL_GROUP0 = common dso_local global i32 0, align 4
@CRTC0_CRTC_TRIGB_CNTL = common dso_local global i32 0, align 4
@CRTC0_CRTC_TRIGB_CNTL__CRTC_TRIGB_SOURCE_SELECT = common dso_local global i32 0, align 4
@CRTC0_CRTC_TRIGB_CNTL__CRTC_TRIGB_POLARITY_SELECT = common dso_local global i32 0, align 4
@TRIGGER_POLARITY_SELECT_LOGIC_ZERO = common dso_local global i32 0, align 4
@CRTC0_CRTC_TRIGB_CNTL__CRTC_TRIGB_RISING_EDGE_DETECT_CNTL = common dso_local global i32 0, align 4
@CRTC0_CRTC_TRIGB_CNTL__CRTC_TRIGB_FALLING_EDGE_DETECT_CNTL = common dso_local global i32 0, align 4
@CRTC0_CRTC_TRIGB_CNTL__CRTC_TRIGB_FREQUENCY_SELECT = common dso_local global i32 0, align 4
@CRTC0_CRTC_TRIGB_CNTL__CRTC_TRIGB_DELAY = common dso_local global i32 0, align 4
@CRTC0_CRTC_TRIGB_CNTL__CRTC_TRIGB_CLEAR = common dso_local global i32 0, align 4
@CRTC0_CRTC_FORCE_COUNT_NOW_CNTL = common dso_local global i32 0, align 4
@CRTC_FORCE_COUNT_NOW_MODE = common dso_local global i32 0, align 4
@CRTC_FORCE_COUNT_NOW_TRIG_SEL = common dso_local global i32 0, align 4
@CRTC_FORCE_COUNT_NOW_CLEAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce120_timing_generator_enable_reset_trigger(%struct.timing_generator* %0, i32 %1) #0 {
  %3 = alloca %struct.timing_generator*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dce110_timing_generator*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.timing_generator* %0, %struct.timing_generator** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @TRIGGER_SOURCE_SELECT_LOGIC_ZERO, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %12 = call %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator* %11)
  store %struct.dce110_timing_generator* %12, %struct.dce110_timing_generator** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %14 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @mmCRTC0_CRTC_V_SYNC_A_CNTL, align 4
  %17 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %6, align 8
  %18 = getelementptr inbounds %struct.dce110_timing_generator, %struct.dce110_timing_generator* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dm_read_reg_soc15(i32 %15, i32 %16, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @CRTC0_CRTC_V_SYNC_A_CNTL, align 4
  %24 = load i32, i32* @CRTC_V_SYNC_A_POL, align 4
  %25 = call i64 @get_reg_field_value(i32 %22, i32 %23, i32 %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %29

28:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  br label %29

29:                                               ; preds = %28, %27
  %30 = load i32, i32* @TRIGGER_SOURCE_SELECT_GSL_GROUP0, align 4
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* @CRTC0_CRTC_TRIGB_CNTL, align 4
  %32 = load i32, i32* @CRTC0_CRTC_TRIGB_CNTL__CRTC_TRIGB_SOURCE_SELECT, align 4
  %33 = call i32 @FD(i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @CRTC0_CRTC_TRIGB_CNTL__CRTC_TRIGB_POLARITY_SELECT, align 4
  %36 = call i32 @FD(i32 %35)
  %37 = load i32, i32* @TRIGGER_POLARITY_SELECT_LOGIC_ZERO, align 4
  %38 = load i32, i32* @CRTC0_CRTC_TRIGB_CNTL__CRTC_TRIGB_RISING_EDGE_DETECT_CNTL, align 4
  %39 = call i32 @FD(i32 %38)
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @CRTC0_CRTC_TRIGB_CNTL__CRTC_TRIGB_FALLING_EDGE_DETECT_CNTL, align 4
  %42 = call i32 @FD(i32 %41)
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @CRTC0_CRTC_TRIGB_CNTL__CRTC_TRIGB_FREQUENCY_SELECT, align 4
  %45 = call i32 @FD(i32 %44)
  %46 = load i32, i32* @CRTC0_CRTC_TRIGB_CNTL__CRTC_TRIGB_DELAY, align 4
  %47 = call i32 @FD(i32 %46)
  %48 = load i32, i32* @CRTC0_CRTC_TRIGB_CNTL__CRTC_TRIGB_CLEAR, align 4
  %49 = call i32 @FD(i32 %48)
  %50 = call i32 @CRTC_REG_UPDATE_N(i32 %31, i32 7, i32 %33, i32 %34, i32 %36, i32 %37, i32 %39, i32 %40, i32 %42, i32 %43, i32 %45, i32 0, i32 %47, i32 0, i32 %49, i32 1)
  %51 = load i32, i32* @CRTC0_CRTC_FORCE_COUNT_NOW_CNTL, align 4
  %52 = load i32, i32* @CRTC_FORCE_COUNT_NOW_MODE, align 4
  %53 = load i32, i32* @CRTC_FORCE_COUNT_NOW_TRIG_SEL, align 4
  %54 = load i32, i32* @CRTC_FORCE_COUNT_NOW_CLEAR, align 4
  %55 = call i32 @CRTC_REG_UPDATE_3(i32 %51, i32 %52, i32 2, i32 %53, i32 1, i32 %54, i32 1)
  ret void
}

declare dso_local %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator*) #1

declare dso_local i32 @dm_read_reg_soc15(i32, i32, i32) #1

declare dso_local i64 @get_reg_field_value(i32, i32, i32) #1

declare dso_local i32 @CRTC_REG_UPDATE_N(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FD(i32) #1

declare dso_local i32 @CRTC_REG_UPDATE_3(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
