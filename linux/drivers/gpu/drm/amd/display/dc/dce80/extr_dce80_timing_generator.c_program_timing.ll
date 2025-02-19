; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce80/extr_dce80_timing_generator.c_program_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce80/extr_dce80_timing_generator.c_program_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32 }
%struct.dc_crtc_timing = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timing_generator*, %struct.dc_crtc_timing*, i32, i32, i32, i32, i32, i32)* @program_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @program_timing(%struct.timing_generator* %0, %struct.dc_crtc_timing* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.timing_generator*, align 8
  %10 = alloca %struct.dc_crtc_timing*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.timing_generator* %0, %struct.timing_generator** %9, align 8
  store %struct.dc_crtc_timing* %1, %struct.dc_crtc_timing** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %8
  %20 = load %struct.timing_generator*, %struct.timing_generator** %9, align 8
  %21 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %10, align 8
  %22 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @program_pix_dur(%struct.timing_generator* %20, i32 %23)
  br label %25

25:                                               ; preds = %19, %8
  %26 = load %struct.timing_generator*, %struct.timing_generator** %9, align 8
  %27 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %10, align 8
  %28 = load i32, i32* %16, align 4
  %29 = call i32 @dce110_tg_program_timing(%struct.timing_generator* %26, %struct.dc_crtc_timing* %27, i32 0, i32 0, i32 0, i32 0, i32 0, i32 %28)
  ret void
}

declare dso_local i32 @program_pix_dur(%struct.timing_generator*, i32) #1

declare dso_local i32 @dce110_tg_program_timing(%struct.timing_generator*, %struct.dc_crtc_timing*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
