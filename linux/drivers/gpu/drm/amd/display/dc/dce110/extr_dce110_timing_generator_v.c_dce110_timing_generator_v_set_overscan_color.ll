; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_timing_generator_v.c_dce110_timing_generator_v_set_overscan_color.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_timing_generator_v.c_dce110_timing_generator_v_set_overscan_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { %struct.dc_context* }
%struct.dc_context = type { i32 }
%struct.tg_color = type { i32, i32, i32 }

@CRTCV_OVERSCAN_COLOR = common dso_local global i32 0, align 4
@CRTC_OVERSCAN_COLOR_BLUE = common dso_local global i32 0, align 4
@CRTC_OVERSCAN_COLOR_GREEN = common dso_local global i32 0, align 4
@CRTC_OVERSCAN_COLOR_RED = common dso_local global i32 0, align 4
@mmCRTCV_OVERSCAN_COLOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timing_generator*, %struct.tg_color*)* @dce110_timing_generator_v_set_overscan_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce110_timing_generator_v_set_overscan_color(%struct.timing_generator* %0, %struct.tg_color* %1) #0 {
  %3 = alloca %struct.timing_generator*, align 8
  %4 = alloca %struct.tg_color*, align 8
  %5 = alloca %struct.dc_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.timing_generator* %0, %struct.timing_generator** %3, align 8
  store %struct.tg_color* %1, %struct.tg_color** %4, align 8
  %8 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %9 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %8, i32 0, i32 0
  %10 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  store %struct.dc_context* %10, %struct.dc_context** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.tg_color*, %struct.tg_color** %4, align 8
  %13 = getelementptr inbounds %struct.tg_color, %struct.tg_color* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @CRTCV_OVERSCAN_COLOR, align 4
  %16 = load i32, i32* @CRTC_OVERSCAN_COLOR_BLUE, align 4
  %17 = call i32 @set_reg_field_value(i32 %11, i32 %14, i32 %15, i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.tg_color*, %struct.tg_color** %4, align 8
  %20 = getelementptr inbounds %struct.tg_color, %struct.tg_color* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CRTCV_OVERSCAN_COLOR, align 4
  %23 = load i32, i32* @CRTC_OVERSCAN_COLOR_GREEN, align 4
  %24 = call i32 @set_reg_field_value(i32 %18, i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.tg_color*, %struct.tg_color** %4, align 8
  %27 = getelementptr inbounds %struct.tg_color, %struct.tg_color* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CRTCV_OVERSCAN_COLOR, align 4
  %30 = load i32, i32* @CRTC_OVERSCAN_COLOR_RED, align 4
  %31 = call i32 @set_reg_field_value(i32 %25, i32 %28, i32 %29, i32 %30)
  %32 = load i32, i32* @mmCRTCV_OVERSCAN_COLOR, align 4
  store i32 %32, i32* %7, align 4
  %33 = load %struct.dc_context*, %struct.dc_context** %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @dm_write_reg(%struct.dc_context* %33, i32 %34, i32 %35)
  ret void
}

declare dso_local i32 @set_reg_field_value(i32, i32, i32, i32) #1

declare dso_local i32 @dm_write_reg(%struct.dc_context*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
