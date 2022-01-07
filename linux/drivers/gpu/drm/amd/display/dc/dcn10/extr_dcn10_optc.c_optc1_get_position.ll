; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_optc.c_optc1_get_position.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_optc.c_optc1_get_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32 }
%struct.crtc_position = type { i32, i32, i32 }
%struct.optc = type { i32 }

@OTG_STATUS_POSITION = common dso_local global i32 0, align 4
@OTG_HORZ_COUNT = common dso_local global i32 0, align 4
@OTG_VERT_COUNT = common dso_local global i32 0, align 4
@OTG_NOM_VERT_POSITION = common dso_local global i32 0, align 4
@OTG_VERT_COUNT_NOM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @optc1_get_position(%struct.timing_generator* %0, %struct.crtc_position* %1) #0 {
  %3 = alloca %struct.timing_generator*, align 8
  %4 = alloca %struct.crtc_position*, align 8
  %5 = alloca %struct.optc*, align 8
  store %struct.timing_generator* %0, %struct.timing_generator** %3, align 8
  store %struct.crtc_position* %1, %struct.crtc_position** %4, align 8
  %6 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %7 = call %struct.optc* @DCN10TG_FROM_TG(%struct.timing_generator* %6)
  store %struct.optc* %7, %struct.optc** %5, align 8
  %8 = load i32, i32* @OTG_STATUS_POSITION, align 4
  %9 = load i32, i32* @OTG_HORZ_COUNT, align 4
  %10 = load %struct.crtc_position*, %struct.crtc_position** %4, align 8
  %11 = getelementptr inbounds %struct.crtc_position, %struct.crtc_position* %10, i32 0, i32 2
  %12 = load i32, i32* @OTG_VERT_COUNT, align 4
  %13 = load %struct.crtc_position*, %struct.crtc_position** %4, align 8
  %14 = getelementptr inbounds %struct.crtc_position, %struct.crtc_position* %13, i32 0, i32 1
  %15 = call i32 @REG_GET_2(i32 %8, i32 %9, i32* %11, i32 %12, i32* %14)
  %16 = load i32, i32* @OTG_NOM_VERT_POSITION, align 4
  %17 = load i32, i32* @OTG_VERT_COUNT_NOM, align 4
  %18 = load %struct.crtc_position*, %struct.crtc_position** %4, align 8
  %19 = getelementptr inbounds %struct.crtc_position, %struct.crtc_position* %18, i32 0, i32 0
  %20 = call i32 @REG_GET(i32 %16, i32 %17, i32* %19)
  ret void
}

declare dso_local %struct.optc* @DCN10TG_FROM_TG(%struct.timing_generator*) #1

declare dso_local i32 @REG_GET_2(i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @REG_GET(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
