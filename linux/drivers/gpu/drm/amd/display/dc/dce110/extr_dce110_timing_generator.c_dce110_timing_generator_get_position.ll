; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_timing_generator.c_dce110_timing_generator_get_position.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_timing_generator.c_dce110_timing_generator_get_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32 }
%struct.crtc_position = type { i8*, i8*, i8* }
%struct.dce110_timing_generator = type { i32 }

@mmCRTC_STATUS_POSITION = common dso_local global i32 0, align 4
@CRTC_STATUS_POSITION = common dso_local global i32 0, align 4
@CRTC_HORZ_COUNT = common dso_local global i32 0, align 4
@CRTC_VERT_COUNT = common dso_local global i32 0, align 4
@mmCRTC_NOM_VERT_POSITION = common dso_local global i32 0, align 4
@CRTC_NOM_VERT_POSITION = common dso_local global i32 0, align 4
@CRTC_VERT_COUNT_NOM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce110_timing_generator_get_position(%struct.timing_generator* %0, %struct.crtc_position* %1) #0 {
  %3 = alloca %struct.timing_generator*, align 8
  %4 = alloca %struct.crtc_position*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dce110_timing_generator*, align 8
  store %struct.timing_generator* %0, %struct.timing_generator** %3, align 8
  store %struct.crtc_position* %1, %struct.crtc_position** %4, align 8
  %7 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %8 = call %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator* %7)
  store %struct.dce110_timing_generator* %8, %struct.dce110_timing_generator** %6, align 8
  %9 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %10 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @mmCRTC_STATUS_POSITION, align 4
  %13 = call i32 @CRTC_REG(i32 %12)
  %14 = call i32 @dm_read_reg(i32 %11, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @CRTC_STATUS_POSITION, align 4
  %17 = load i32, i32* @CRTC_HORZ_COUNT, align 4
  %18 = call i8* @get_reg_field_value(i32 %15, i32 %16, i32 %17)
  %19 = load %struct.crtc_position*, %struct.crtc_position** %4, align 8
  %20 = getelementptr inbounds %struct.crtc_position, %struct.crtc_position* %19, i32 0, i32 2
  store i8* %18, i8** %20, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @CRTC_STATUS_POSITION, align 4
  %23 = load i32, i32* @CRTC_VERT_COUNT, align 4
  %24 = call i8* @get_reg_field_value(i32 %21, i32 %22, i32 %23)
  %25 = load %struct.crtc_position*, %struct.crtc_position** %4, align 8
  %26 = getelementptr inbounds %struct.crtc_position, %struct.crtc_position* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %28 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @mmCRTC_NOM_VERT_POSITION, align 4
  %31 = call i32 @CRTC_REG(i32 %30)
  %32 = call i32 @dm_read_reg(i32 %29, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @CRTC_NOM_VERT_POSITION, align 4
  %35 = load i32, i32* @CRTC_VERT_COUNT_NOM, align 4
  %36 = call i8* @get_reg_field_value(i32 %33, i32 %34, i32 %35)
  %37 = load %struct.crtc_position*, %struct.crtc_position** %4, align 8
  %38 = getelementptr inbounds %struct.crtc_position, %struct.crtc_position* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  ret void
}

declare dso_local %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator*) #1

declare dso_local i32 @dm_read_reg(i32, i32) #1

declare dso_local i32 @CRTC_REG(i32) #1

declare dso_local i8* @get_reg_field_value(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
