; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_timing_generator.c_dce110_timing_generator_disable_reset_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_timing_generator.c_dce110_timing_generator_disable_reset_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32 }
%struct.dce110_timing_generator = type { i32 }

@mmCRTC_FORCE_COUNT_NOW_CNTL = common dso_local global i32 0, align 4
@CRTC_FORCE_COUNT_NOW_CNTL = common dso_local global i32 0, align 4
@CRTC_FORCE_COUNT_NOW_MODE = common dso_local global i32 0, align 4
@CRTC_FORCE_COUNT_NOW_CLEAR = common dso_local global i32 0, align 4
@mmCRTC_VERT_SYNC_CONTROL = common dso_local global i32 0, align 4
@CRTC_VERT_SYNC_CONTROL = common dso_local global i32 0, align 4
@CRTC_FORCE_VSYNC_NEXT_LINE_CLEAR = common dso_local global i32 0, align 4
@CRTC_AUTO_FORCE_VSYNC_MODE = common dso_local global i32 0, align 4
@mmCRTC_TRIGB_CNTL = common dso_local global i32 0, align 4
@TRIGGER_SOURCE_SELECT_LOGIC_ZERO = common dso_local global i32 0, align 4
@CRTC_TRIGB_CNTL = common dso_local global i32 0, align 4
@CRTC_TRIGB_SOURCE_SELECT = common dso_local global i32 0, align 4
@TRIGGER_POLARITY_SELECT_LOGIC_ZERO = common dso_local global i32 0, align 4
@CRTC_TRIGB_POLARITY_SELECT = common dso_local global i32 0, align 4
@CRTC_TRIGB_CLEAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce110_timing_generator_disable_reset_trigger(%struct.timing_generator* %0) #0 {
  %2 = alloca %struct.timing_generator*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dce110_timing_generator*, align 8
  store %struct.timing_generator* %0, %struct.timing_generator** %2, align 8
  %5 = load %struct.timing_generator*, %struct.timing_generator** %2, align 8
  %6 = call %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator* %5)
  store %struct.dce110_timing_generator* %6, %struct.dce110_timing_generator** %4, align 8
  %7 = load %struct.timing_generator*, %struct.timing_generator** %2, align 8
  %8 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @mmCRTC_FORCE_COUNT_NOW_CNTL, align 4
  %11 = call i32 @CRTC_REG(i32 %10)
  %12 = call i32 @dm_read_reg(i32 %9, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @CRTC_FORCE_COUNT_NOW_CNTL, align 4
  %15 = load i32, i32* @CRTC_FORCE_COUNT_NOW_MODE, align 4
  %16 = call i32 @set_reg_field_value(i32 %13, i32 0, i32 %14, i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @CRTC_FORCE_COUNT_NOW_CNTL, align 4
  %19 = load i32, i32* @CRTC_FORCE_COUNT_NOW_CLEAR, align 4
  %20 = call i32 @set_reg_field_value(i32 %17, i32 1, i32 %18, i32 %19)
  %21 = load %struct.timing_generator*, %struct.timing_generator** %2, align 8
  %22 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @mmCRTC_FORCE_COUNT_NOW_CNTL, align 4
  %25 = call i32 @CRTC_REG(i32 %24)
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @dm_write_reg(i32 %23, i32 %25, i32 %26)
  %28 = load %struct.timing_generator*, %struct.timing_generator** %2, align 8
  %29 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @mmCRTC_VERT_SYNC_CONTROL, align 4
  %32 = call i32 @CRTC_REG(i32 %31)
  %33 = call i32 @dm_read_reg(i32 %30, i32 %32)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @CRTC_VERT_SYNC_CONTROL, align 4
  %36 = load i32, i32* @CRTC_FORCE_VSYNC_NEXT_LINE_CLEAR, align 4
  %37 = call i32 @set_reg_field_value(i32 %34, i32 1, i32 %35, i32 %36)
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @CRTC_VERT_SYNC_CONTROL, align 4
  %40 = load i32, i32* @CRTC_AUTO_FORCE_VSYNC_MODE, align 4
  %41 = call i32 @set_reg_field_value(i32 %38, i32 0, i32 %39, i32 %40)
  %42 = load %struct.timing_generator*, %struct.timing_generator** %2, align 8
  %43 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @mmCRTC_VERT_SYNC_CONTROL, align 4
  %46 = call i32 @CRTC_REG(i32 %45)
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @dm_write_reg(i32 %44, i32 %46, i32 %47)
  %49 = load %struct.timing_generator*, %struct.timing_generator** %2, align 8
  %50 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @mmCRTC_TRIGB_CNTL, align 4
  %53 = call i32 @CRTC_REG(i32 %52)
  %54 = call i32 @dm_read_reg(i32 %51, i32 %53)
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @TRIGGER_SOURCE_SELECT_LOGIC_ZERO, align 4
  %57 = load i32, i32* @CRTC_TRIGB_CNTL, align 4
  %58 = load i32, i32* @CRTC_TRIGB_SOURCE_SELECT, align 4
  %59 = call i32 @set_reg_field_value(i32 %55, i32 %56, i32 %57, i32 %58)
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @TRIGGER_POLARITY_SELECT_LOGIC_ZERO, align 4
  %62 = load i32, i32* @CRTC_TRIGB_CNTL, align 4
  %63 = load i32, i32* @CRTC_TRIGB_POLARITY_SELECT, align 4
  %64 = call i32 @set_reg_field_value(i32 %60, i32 %61, i32 %62, i32 %63)
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @CRTC_TRIGB_CNTL, align 4
  %67 = load i32, i32* @CRTC_TRIGB_CLEAR, align 4
  %68 = call i32 @set_reg_field_value(i32 %65, i32 1, i32 %66, i32 %67)
  %69 = load %struct.timing_generator*, %struct.timing_generator** %2, align 8
  %70 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @mmCRTC_TRIGB_CNTL, align 4
  %73 = call i32 @CRTC_REG(i32 %72)
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @dm_write_reg(i32 %71, i32 %73, i32 %74)
  ret void
}

declare dso_local %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator*) #1

declare dso_local i32 @dm_read_reg(i32, i32) #1

declare dso_local i32 @CRTC_REG(i32) #1

declare dso_local i32 @set_reg_field_value(i32, i32, i32, i32) #1

declare dso_local i32 @dm_write_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
