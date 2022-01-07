; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce120/extr_dce120_timing_generator.c_dce120_timing_generator_get_crtc_position.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce120/extr_dce120_timing_generator.c_dce120_timing_generator_get_crtc_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32 }
%struct.crtc_position = type { i8*, i8*, i8* }
%struct.dce110_timing_generator = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@mmCRTC0_CRTC_STATUS_POSITION = common dso_local global i32 0, align 4
@CRTC0_CRTC_STATUS_POSITION = common dso_local global i32 0, align 4
@CRTC_HORZ_COUNT = common dso_local global i32 0, align 4
@CRTC_VERT_COUNT = common dso_local global i32 0, align 4
@mmCRTC0_CRTC_NOM_VERT_POSITION = common dso_local global i32 0, align 4
@CRTC0_CRTC_NOM_VERT_POSITION = common dso_local global i32 0, align 4
@CRTC_VERT_COUNT_NOM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce120_timing_generator_get_crtc_position(%struct.timing_generator* %0, %struct.crtc_position* %1) #0 {
  %3 = alloca %struct.timing_generator*, align 8
  %4 = alloca %struct.crtc_position*, align 8
  %5 = alloca %struct.dce110_timing_generator*, align 8
  %6 = alloca i32, align 4
  store %struct.timing_generator* %0, %struct.timing_generator** %3, align 8
  store %struct.crtc_position* %1, %struct.crtc_position** %4, align 8
  %7 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %8 = call %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator* %7)
  store %struct.dce110_timing_generator* %8, %struct.dce110_timing_generator** %5, align 8
  %9 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %10 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @mmCRTC0_CRTC_STATUS_POSITION, align 4
  %13 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %5, align 8
  %14 = getelementptr inbounds %struct.dce110_timing_generator, %struct.dce110_timing_generator* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dm_read_reg_soc15(i32 %11, i32 %12, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @CRTC0_CRTC_STATUS_POSITION, align 4
  %20 = load i32, i32* @CRTC_HORZ_COUNT, align 4
  %21 = call i8* @get_reg_field_value(i32 %18, i32 %19, i32 %20)
  %22 = load %struct.crtc_position*, %struct.crtc_position** %4, align 8
  %23 = getelementptr inbounds %struct.crtc_position, %struct.crtc_position* %22, i32 0, i32 2
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @CRTC0_CRTC_STATUS_POSITION, align 4
  %26 = load i32, i32* @CRTC_VERT_COUNT, align 4
  %27 = call i8* @get_reg_field_value(i32 %24, i32 %25, i32 %26)
  %28 = load %struct.crtc_position*, %struct.crtc_position** %4, align 8
  %29 = getelementptr inbounds %struct.crtc_position, %struct.crtc_position* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %31 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @mmCRTC0_CRTC_NOM_VERT_POSITION, align 4
  %34 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %5, align 8
  %35 = getelementptr inbounds %struct.dce110_timing_generator, %struct.dce110_timing_generator* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dm_read_reg_soc15(i32 %32, i32 %33, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @CRTC0_CRTC_NOM_VERT_POSITION, align 4
  %41 = load i32, i32* @CRTC_VERT_COUNT_NOM, align 4
  %42 = call i8* @get_reg_field_value(i32 %39, i32 %40, i32 %41)
  %43 = load %struct.crtc_position*, %struct.crtc_position** %4, align 8
  %44 = getelementptr inbounds %struct.crtc_position, %struct.crtc_position* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  ret void
}

declare dso_local %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator*) #1

declare dso_local i32 @dm_read_reg_soc15(i32, i32, i32) #1

declare dso_local i8* @get_reg_field_value(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
