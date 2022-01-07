; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_optc.c_optc1_get_crtc_scanoutpos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_optc.c_optc1_get_crtc_scanoutpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32 }
%struct.optc = type { i32 }
%struct.crtc_position = type { i32, i32 }

@OTG_V_BLANK_START_END = common dso_local global i32 0, align 4
@OTG_V_BLANK_START = common dso_local global i32 0, align 4
@OTG_V_BLANK_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @optc1_get_crtc_scanoutpos(%struct.timing_generator* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.timing_generator*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.optc*, align 8
  %12 = alloca %struct.crtc_position, align 4
  store %struct.timing_generator* %0, %struct.timing_generator** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load %struct.timing_generator*, %struct.timing_generator** %6, align 8
  %14 = call %struct.optc* @DCN10TG_FROM_TG(%struct.timing_generator* %13)
  store %struct.optc* %14, %struct.optc** %11, align 8
  %15 = load i32, i32* @OTG_V_BLANK_START_END, align 4
  %16 = load i32, i32* @OTG_V_BLANK_START, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* @OTG_V_BLANK_END, align 4
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @REG_GET_2(i32 %15, i32 %16, i32* %17, i32 %18, i32* %19)
  %21 = load %struct.timing_generator*, %struct.timing_generator** %6, align 8
  %22 = call i32 @optc1_get_position(%struct.timing_generator* %21, %struct.crtc_position* %12)
  %23 = getelementptr inbounds %struct.crtc_position, %struct.crtc_position* %12, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %9, align 8
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds %struct.crtc_position, %struct.crtc_position* %12, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %10, align 8
  store i32 %27, i32* %28, align 4
  ret void
}

declare dso_local %struct.optc* @DCN10TG_FROM_TG(%struct.timing_generator*) #1

declare dso_local i32 @REG_GET_2(i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @optc1_get_position(%struct.timing_generator*, %struct.crtc_position*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
