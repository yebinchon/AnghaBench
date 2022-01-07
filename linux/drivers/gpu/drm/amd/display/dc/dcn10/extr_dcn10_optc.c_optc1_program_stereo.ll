; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_optc.c_optc1_program_stereo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_optc.c_optc1_program_stereo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32 }
%struct.dc_crtc_timing = type { i32 }
%struct.crtc_stereo_flags = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @optc1_program_stereo(%struct.timing_generator* %0, %struct.dc_crtc_timing* %1, %struct.crtc_stereo_flags* %2) #0 {
  %4 = alloca %struct.timing_generator*, align 8
  %5 = alloca %struct.dc_crtc_timing*, align 8
  %6 = alloca %struct.crtc_stereo_flags*, align 8
  store %struct.timing_generator* %0, %struct.timing_generator** %4, align 8
  store %struct.dc_crtc_timing* %1, %struct.dc_crtc_timing** %5, align 8
  store %struct.crtc_stereo_flags* %2, %struct.crtc_stereo_flags** %6, align 8
  %7 = load %struct.crtc_stereo_flags*, %struct.crtc_stereo_flags** %6, align 8
  %8 = getelementptr inbounds %struct.crtc_stereo_flags, %struct.crtc_stereo_flags* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %13 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %5, align 8
  %14 = load %struct.crtc_stereo_flags*, %struct.crtc_stereo_flags** %6, align 8
  %15 = call i32 @optc1_enable_stereo(%struct.timing_generator* %12, %struct.dc_crtc_timing* %13, %struct.crtc_stereo_flags* %14)
  br label %19

16:                                               ; preds = %3
  %17 = load %struct.timing_generator*, %struct.timing_generator** %4, align 8
  %18 = call i32 @optc1_disable_stereo(%struct.timing_generator* %17)
  br label %19

19:                                               ; preds = %16, %11
  ret void
}

declare dso_local i32 @optc1_enable_stereo(%struct.timing_generator*, %struct.dc_crtc_timing*, %struct.crtc_stereo_flags*) #1

declare dso_local i32 @optc1_disable_stereo(%struct.timing_generator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
