; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_timing_generator.c_dce110_timing_generator_enable_crtc_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_timing_generator.c_dce110_timing_generator_enable_crtc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32 }
%struct.crtc_trigger_info = type { i32, i32 }
%struct.dce110_timing_generator = type { i32 }

@mmCRTC_TRIGB_CNTL = common dso_local global i32 0, align 4
@CRTC_TRIGB_CNTL = common dso_local global i32 0, align 4
@CRTC_TRIGB_SOURCE_SELECT = common dso_local global i32 0, align 4
@TRIGGER_POLARITY_SELECT_LOGIC_ZERO = common dso_local global i32 0, align 4
@CRTC_TRIGB_POLARITY_SELECT = common dso_local global i32 0, align 4
@CRTC_TRIGB_RISING_EDGE_DETECT_CNTL = common dso_local global i32 0, align 4
@CRTC_TRIGB_FALLING_EDGE_DETECT_CNTL = common dso_local global i32 0, align 4
@CRTC_TRIGB_CLEAR = common dso_local global i32 0, align 4
@mmCRTC_FORCE_COUNT_NOW_CNTL = common dso_local global i32 0, align 4
@CRTC_FORCE_COUNT_NOW_CNTL = common dso_local global i32 0, align 4
@CRTC_FORCE_COUNT_NOW_MODE = common dso_local global i32 0, align 4
@CRTC_FORCE_COUNT_NOW_TRIG_SEL = common dso_local global i32 0, align 4
@CRTC_FORCE_COUNT_NOW_CLEAR = common dso_local global i32 0, align 4
@mmCRTC_VERT_SYNC_CONTROL = common dso_local global i32 0, align 4
@CRTC_VERT_SYNC_CONTROL = common dso_local global i32 0, align 4
@CRTC_FORCE_VSYNC_NEXT_LINE_CLEAR = common dso_local global i32 0, align 4
@CRTC_AUTO_FORCE_VSYNC_MODE = common dso_local global i32 0, align 4
@mmCRTC_MASTER_UPDATE_MODE = common dso_local global i32 0, align 4
@CRTC_MASTER_UPDATE_MODE = common dso_local global i32 0, align 4
@MASTER_UPDATE_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce110_timing_generator_enable_crtc_reset(%struct.timing_generator* %0, i32 %1, %struct.crtc_trigger_info* %2) #0 {
  %4 = alloca %struct.timing_generator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.crtc_trigger_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dce110_timing_generator*, align 8
  store %struct.timing_generator* %0, %struct.timing_generator** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.crtc_trigger_info* %2, %struct.crtc_trigger_info** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %12 = call %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator* %11)
  store %struct.dce110_timing_generator* %12, %struct.dce110_timing_generator** %10, align 8
  %13 = load %struct.crtc_trigger_info*, %struct.crtc_trigger_info** %6, align 8
  %14 = getelementptr inbounds %struct.crtc_trigger_info, %struct.crtc_trigger_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %18 [
    i32 130, label %16
    i32 131, label %17
  ]

16:                                               ; preds = %3
  store i32 1, i32* %8, align 4
  br label %18

17:                                               ; preds = %3
  store i32 1, i32* %9, align 4
  br label %18

18:                                               ; preds = %3, %17, %16
  %19 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %20 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @mmCRTC_TRIGB_CNTL, align 4
  %23 = call i32 @CRTC_REG(i32 %22)
  %24 = call i32 @dm_read_reg(i32 %21, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @CRTC_TRIGB_CNTL, align 4
  %28 = load i32, i32* @CRTC_TRIGB_SOURCE_SELECT, align 4
  %29 = call i32 @set_reg_field_value(i32 %25, i32 %26, i32 %27, i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @TRIGGER_POLARITY_SELECT_LOGIC_ZERO, align 4
  %32 = load i32, i32* @CRTC_TRIGB_CNTL, align 4
  %33 = load i32, i32* @CRTC_TRIGB_POLARITY_SELECT, align 4
  %34 = call i32 @set_reg_field_value(i32 %30, i32 %31, i32 %32, i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @CRTC_TRIGB_CNTL, align 4
  %38 = load i32, i32* @CRTC_TRIGB_RISING_EDGE_DETECT_CNTL, align 4
  %39 = call i32 @set_reg_field_value(i32 %35, i32 %36, i32 %37, i32 %38)
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @CRTC_TRIGB_CNTL, align 4
  %43 = load i32, i32* @CRTC_TRIGB_FALLING_EDGE_DETECT_CNTL, align 4
  %44 = call i32 @set_reg_field_value(i32 %40, i32 %41, i32 %42, i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @CRTC_TRIGB_CNTL, align 4
  %47 = load i32, i32* @CRTC_TRIGB_CLEAR, align 4
  %48 = call i32 @set_reg_field_value(i32 %45, i32 1, i32 %46, i32 %47)
  %49 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %50 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @mmCRTC_TRIGB_CNTL, align 4
  %53 = call i32 @CRTC_REG(i32 %52)
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @dm_write_reg(i32 %51, i32 %53, i32 %54)
  %56 = load %struct.crtc_trigger_info*, %struct.crtc_trigger_info** %6, align 8
  %57 = getelementptr inbounds %struct.crtc_trigger_info, %struct.crtc_trigger_info* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %146 [
    i32 129, label %59
    i32 128, label %99
  ]

59:                                               ; preds = %18
  %60 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %61 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @mmCRTC_FORCE_COUNT_NOW_CNTL, align 4
  %64 = call i32 @CRTC_REG(i32 %63)
  %65 = call i32 @dm_read_reg(i32 %62, i32 %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @CRTC_FORCE_COUNT_NOW_CNTL, align 4
  %68 = load i32, i32* @CRTC_FORCE_COUNT_NOW_MODE, align 4
  %69 = call i32 @set_reg_field_value(i32 %66, i32 0, i32 %67, i32 %68)
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @CRTC_FORCE_COUNT_NOW_CNTL, align 4
  %72 = load i32, i32* @CRTC_FORCE_COUNT_NOW_TRIG_SEL, align 4
  %73 = call i32 @set_reg_field_value(i32 %70, i32 0, i32 %71, i32 %72)
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @CRTC_FORCE_COUNT_NOW_CNTL, align 4
  %76 = load i32, i32* @CRTC_FORCE_COUNT_NOW_CLEAR, align 4
  %77 = call i32 @set_reg_field_value(i32 %74, i32 1, i32 %75, i32 %76)
  %78 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %79 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @mmCRTC_FORCE_COUNT_NOW_CNTL, align 4
  %82 = call i32 @CRTC_REG(i32 %81)
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @dm_write_reg(i32 %80, i32 %82, i32 %83)
  %85 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %86 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @mmCRTC_VERT_SYNC_CONTROL, align 4
  %89 = call i32 @CRTC_REG(i32 %88)
  %90 = call i32 @dm_read_reg(i32 %87, i32 %89)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @CRTC_VERT_SYNC_CONTROL, align 4
  %93 = load i32, i32* @CRTC_FORCE_VSYNC_NEXT_LINE_CLEAR, align 4
  %94 = call i32 @set_reg_field_value(i32 %91, i32 1, i32 %92, i32 %93)
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @CRTC_VERT_SYNC_CONTROL, align 4
  %97 = load i32, i32* @CRTC_AUTO_FORCE_VSYNC_MODE, align 4
  %98 = call i32 @set_reg_field_value(i32 %95, i32 2, i32 %96, i32 %97)
  br label %146

99:                                               ; preds = %18
  %100 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %101 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @mmCRTC_VERT_SYNC_CONTROL, align 4
  %104 = call i32 @CRTC_REG(i32 %103)
  %105 = call i32 @dm_read_reg(i32 %102, i32 %104)
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @CRTC_VERT_SYNC_CONTROL, align 4
  %108 = load i32, i32* @CRTC_FORCE_VSYNC_NEXT_LINE_CLEAR, align 4
  %109 = call i32 @set_reg_field_value(i32 %106, i32 1, i32 %107, i32 %108)
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* @CRTC_VERT_SYNC_CONTROL, align 4
  %112 = load i32, i32* @CRTC_AUTO_FORCE_VSYNC_MODE, align 4
  %113 = call i32 @set_reg_field_value(i32 %110, i32 0, i32 %111, i32 %112)
  %114 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %115 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @mmCRTC_VERT_SYNC_CONTROL, align 4
  %118 = call i32 @CRTC_REG(i32 %117)
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @dm_write_reg(i32 %116, i32 %118, i32 %119)
  %121 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %122 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @mmCRTC_FORCE_COUNT_NOW_CNTL, align 4
  %125 = call i32 @CRTC_REG(i32 %124)
  %126 = call i32 @dm_read_reg(i32 %123, i32 %125)
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* @CRTC_FORCE_COUNT_NOW_CNTL, align 4
  %129 = load i32, i32* @CRTC_FORCE_COUNT_NOW_MODE, align 4
  %130 = call i32 @set_reg_field_value(i32 %127, i32 2, i32 %128, i32 %129)
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* @CRTC_FORCE_COUNT_NOW_CNTL, align 4
  %133 = load i32, i32* @CRTC_FORCE_COUNT_NOW_TRIG_SEL, align 4
  %134 = call i32 @set_reg_field_value(i32 %131, i32 1, i32 %132, i32 %133)
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* @CRTC_FORCE_COUNT_NOW_CNTL, align 4
  %137 = load i32, i32* @CRTC_FORCE_COUNT_NOW_CLEAR, align 4
  %138 = call i32 @set_reg_field_value(i32 %135, i32 1, i32 %136, i32 %137)
  %139 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %140 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @mmCRTC_FORCE_COUNT_NOW_CNTL, align 4
  %143 = call i32 @CRTC_REG(i32 %142)
  %144 = load i32, i32* %7, align 4
  %145 = call i32 @dm_write_reg(i32 %141, i32 %143, i32 %144)
  br label %146

146:                                              ; preds = %18, %99, %59
  %147 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %148 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @mmCRTC_MASTER_UPDATE_MODE, align 4
  %151 = call i32 @CRTC_REG(i32 %150)
  %152 = call i32 @dm_read_reg(i32 %149, i32 %151)
  store i32 %152, i32* %7, align 4
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* @CRTC_MASTER_UPDATE_MODE, align 4
  %155 = load i32, i32* @MASTER_UPDATE_MODE, align 4
  %156 = call i32 @set_reg_field_value(i32 %153, i32 2, i32 %154, i32 %155)
  %157 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %158 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @mmCRTC_MASTER_UPDATE_MODE, align 4
  %161 = call i32 @CRTC_REG(i32 %160)
  %162 = load i32, i32* %7, align 4
  %163 = call i32 @dm_write_reg(i32 %159, i32 %161, i32 %162)
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
