; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_crtc.c__dpu_crtc_setup_lm_bounds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_crtc.c__dpu_crtc_setup_lm_bounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.drm_crtc_state = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i32 }
%struct.dpu_crtc_state = type { i32, %struct.drm_rect* }
%struct.drm_rect = type { i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_crtc_state*)* @_dpu_crtc_setup_lm_bounds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_dpu_crtc_setup_lm_bounds(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_crtc_state*, align 8
  %5 = alloca %struct.dpu_crtc_state*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_rect*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %4, align 8
  %10 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %11 = call %struct.dpu_crtc_state* @to_dpu_crtc_state(%struct.drm_crtc_state* %10)
  store %struct.dpu_crtc_state* %11, %struct.dpu_crtc_state** %5, align 8
  %12 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %13 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %12, i32 0, i32 0
  store %struct.drm_display_mode* %13, %struct.drm_display_mode** %6, align 8
  %14 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %15 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.dpu_crtc_state*, %struct.dpu_crtc_state** %5, align 8
  %18 = getelementptr inbounds %struct.dpu_crtc_state, %struct.dpu_crtc_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sdiv i32 %16, %19
  store i32 %20, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %58, %2
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.dpu_crtc_state*, %struct.dpu_crtc_state** %5, align 8
  %24 = getelementptr inbounds %struct.dpu_crtc_state, %struct.dpu_crtc_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %61

27:                                               ; preds = %21
  %28 = load %struct.dpu_crtc_state*, %struct.dpu_crtc_state** %5, align 8
  %29 = getelementptr inbounds %struct.dpu_crtc_state, %struct.dpu_crtc_state* %28, i32 0, i32 1
  %30 = load %struct.drm_rect*, %struct.drm_rect** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %30, i64 %32
  store %struct.drm_rect* %33, %struct.drm_rect** %9, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = mul nsw i32 %34, %35
  %37 = load %struct.drm_rect*, %struct.drm_rect** %9, align 8
  %38 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.drm_rect*, %struct.drm_rect** %9, align 8
  %40 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %39, i32 0, i32 3
  store i64 0, i64* %40, align 8
  %41 = load %struct.drm_rect*, %struct.drm_rect** %9, align 8
  %42 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %43, %44
  %46 = load %struct.drm_rect*, %struct.drm_rect** %9, align 8
  %47 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %49 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.drm_rect*, %struct.drm_rect** %9, align 8
  %52 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %54 = call i32 @DRMID(%struct.drm_crtc* %53)
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.drm_rect*, %struct.drm_rect** %9, align 8
  %57 = call i32 @trace_dpu_crtc_setup_lm_bounds(i32 %54, i32 %55, %struct.drm_rect* %56)
  br label %58

58:                                               ; preds = %27
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %21

61:                                               ; preds = %21
  %62 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %63 = call i32 @drm_mode_debug_printmodeline(%struct.drm_display_mode* %62)
  ret void
}

declare dso_local %struct.dpu_crtc_state* @to_dpu_crtc_state(%struct.drm_crtc_state*) #1

declare dso_local i32 @trace_dpu_crtc_setup_lm_bounds(i32, i32, %struct.drm_rect*) #1

declare dso_local i32 @DRMID(%struct.drm_crtc*) #1

declare dso_local i32 @drm_mode_debug_printmodeline(%struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
