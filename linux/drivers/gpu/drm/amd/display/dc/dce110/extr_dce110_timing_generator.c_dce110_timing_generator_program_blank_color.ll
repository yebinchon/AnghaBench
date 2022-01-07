; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_timing_generator.c_dce110_timing_generator_program_blank_color.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_timing_generator.c_dce110_timing_generator_program_blank_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32 }
%struct.tg_color = type { i32, i32, i32 }
%struct.dce110_timing_generator = type { i32 }

@mmCRTC_BLACK_COLOR = common dso_local global i32 0, align 4
@CRTC_BLACK_COLOR = common dso_local global i32 0, align 4
@CRTC_BLACK_COLOR_B_CB = common dso_local global i32 0, align 4
@CRTC_BLACK_COLOR_G_Y = common dso_local global i32 0, align 4
@CRTC_BLACK_COLOR_R_CR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce110_timing_generator_program_blank_color(%struct.timing_generator* %0, %struct.tg_color* %1) #0 {
  %3 = alloca %struct.timing_generator*, align 8
  %4 = alloca %struct.tg_color*, align 8
  %5 = alloca %struct.dce110_timing_generator*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.timing_generator* %0, %struct.timing_generator** %3, align 8
  store %struct.tg_color* %1, %struct.tg_color** %4, align 8
  %8 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %9 = call %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator* %8)
  store %struct.dce110_timing_generator* %9, %struct.dce110_timing_generator** %5, align 8
  %10 = load i32, i32* @mmCRTC_BLACK_COLOR, align 4
  %11 = call i32 @CRTC_REG(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %13 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @dm_read_reg(i32 %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.tg_color*, %struct.tg_color** %4, align 8
  %19 = getelementptr inbounds %struct.tg_color, %struct.tg_color* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CRTC_BLACK_COLOR, align 4
  %22 = load i32, i32* @CRTC_BLACK_COLOR_B_CB, align 4
  %23 = call i32 @set_reg_field_value(i32 %17, i32 %20, i32 %21, i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.tg_color*, %struct.tg_color** %4, align 8
  %26 = getelementptr inbounds %struct.tg_color, %struct.tg_color* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CRTC_BLACK_COLOR, align 4
  %29 = load i32, i32* @CRTC_BLACK_COLOR_G_Y, align 4
  %30 = call i32 @set_reg_field_value(i32 %24, i32 %27, i32 %28, i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.tg_color*, %struct.tg_color** %4, align 8
  %33 = getelementptr inbounds %struct.tg_color, %struct.tg_color* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @CRTC_BLACK_COLOR, align 4
  %36 = load i32, i32* @CRTC_BLACK_COLOR_R_CR, align 4
  %37 = call i32 @set_reg_field_value(i32 %31, i32 %34, i32 %35, i32 %36)
  %38 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %39 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @dm_write_reg(i32 %40, i32 %41, i32 %42)
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
