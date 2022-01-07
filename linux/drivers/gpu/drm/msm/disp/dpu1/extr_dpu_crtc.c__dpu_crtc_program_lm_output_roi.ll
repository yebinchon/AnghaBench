; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_crtc.c__dpu_crtc_program_lm_output_roi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_crtc.c__dpu_crtc_program_lm_output_roi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.dpu_crtc = type { i32 }
%struct.dpu_crtc_state = type { i32, %struct.TYPE_3__*, %struct.drm_rect* }
%struct.TYPE_3__ = type { %struct.dpu_hw_mixer* }
%struct.dpu_hw_mixer = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.dpu_hw_mixer.0*, %struct.dpu_hw_mixer_cfg*)* }
%struct.dpu_hw_mixer.0 = type opaque
%struct.dpu_hw_mixer_cfg = type { i64, i32, i32, i32 }
%struct.drm_rect = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @_dpu_crtc_program_lm_output_roi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_dpu_crtc_program_lm_output_roi(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.dpu_crtc*, align 8
  %4 = alloca %struct.dpu_crtc_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_rect*, align 8
  %8 = alloca %struct.dpu_hw_mixer*, align 8
  %9 = alloca %struct.dpu_hw_mixer_cfg, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %11 = call %struct.dpu_crtc* @to_dpu_crtc(%struct.drm_crtc* %10)
  store %struct.dpu_crtc* %11, %struct.dpu_crtc** %3, align 8
  %12 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %13 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.dpu_crtc_state* @to_dpu_crtc_state(i32 %14)
  store %struct.dpu_crtc_state* %15, %struct.dpu_crtc_state** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %62, %1
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.dpu_crtc_state*, %struct.dpu_crtc_state** %4, align 8
  %19 = getelementptr inbounds %struct.dpu_crtc_state, %struct.dpu_crtc_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %65

22:                                               ; preds = %16
  %23 = load %struct.dpu_crtc_state*, %struct.dpu_crtc_state** %4, align 8
  %24 = getelementptr inbounds %struct.dpu_crtc_state, %struct.dpu_crtc_state* %23, i32 0, i32 2
  %25 = load %struct.drm_rect*, %struct.drm_rect** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %25, i64 %27
  store %struct.drm_rect* %28, %struct.drm_rect** %7, align 8
  %29 = load %struct.dpu_crtc_state*, %struct.dpu_crtc_state** %4, align 8
  %30 = getelementptr inbounds %struct.dpu_crtc_state, %struct.dpu_crtc_state* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load %struct.dpu_hw_mixer*, %struct.dpu_hw_mixer** %35, align 8
  store %struct.dpu_hw_mixer* %36, %struct.dpu_hw_mixer** %8, align 8
  %37 = load %struct.drm_rect*, %struct.drm_rect** %7, align 8
  %38 = icmp ne %struct.drm_rect* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %22
  %40 = load %struct.drm_rect*, %struct.drm_rect** %7, align 8
  %41 = call i32 @drm_rect_visible(%struct.drm_rect* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39, %22
  br label %62

44:                                               ; preds = %39
  %45 = load %struct.drm_rect*, %struct.drm_rect** %7, align 8
  %46 = call i32 @drm_rect_width(%struct.drm_rect* %45)
  %47 = getelementptr inbounds %struct.dpu_hw_mixer_cfg, %struct.dpu_hw_mixer_cfg* %9, i32 0, i32 3
  store i32 %46, i32* %47, align 8
  %48 = load %struct.drm_rect*, %struct.drm_rect** %7, align 8
  %49 = call i32 @drm_rect_height(%struct.drm_rect* %48)
  %50 = getelementptr inbounds %struct.dpu_hw_mixer_cfg, %struct.dpu_hw_mixer_cfg* %9, i32 0, i32 2
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  %53 = getelementptr inbounds %struct.dpu_hw_mixer_cfg, %struct.dpu_hw_mixer_cfg* %9, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  %54 = getelementptr inbounds %struct.dpu_hw_mixer_cfg, %struct.dpu_hw_mixer_cfg* %9, i32 0, i32 0
  store i64 0, i64* %54, align 8
  %55 = load %struct.dpu_hw_mixer*, %struct.dpu_hw_mixer** %8, align 8
  %56 = getelementptr inbounds %struct.dpu_hw_mixer, %struct.dpu_hw_mixer* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32 (%struct.dpu_hw_mixer.0*, %struct.dpu_hw_mixer_cfg*)*, i32 (%struct.dpu_hw_mixer.0*, %struct.dpu_hw_mixer_cfg*)** %57, align 8
  %59 = load %struct.dpu_hw_mixer*, %struct.dpu_hw_mixer** %8, align 8
  %60 = bitcast %struct.dpu_hw_mixer* %59 to %struct.dpu_hw_mixer.0*
  %61 = call i32 %58(%struct.dpu_hw_mixer.0* %60, %struct.dpu_hw_mixer_cfg* %9)
  br label %62

62:                                               ; preds = %44, %43
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %16

65:                                               ; preds = %16
  ret void
}

declare dso_local %struct.dpu_crtc* @to_dpu_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.dpu_crtc_state* @to_dpu_crtc_state(i32) #1

declare dso_local i32 @drm_rect_visible(%struct.drm_rect*) #1

declare dso_local i32 @drm_rect_width(%struct.drm_rect*) #1

declare dso_local i32 @drm_rect_height(%struct.drm_rect*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
