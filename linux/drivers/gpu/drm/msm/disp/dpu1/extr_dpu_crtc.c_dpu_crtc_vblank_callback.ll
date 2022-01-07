; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_crtc.c_dpu_crtc_vblank_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_crtc.c_dpu_crtc_vblank_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.dpu_crtc = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dpu_crtc_vblank_callback(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.dpu_crtc*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %4 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %5 = call %struct.dpu_crtc* @to_dpu_crtc(%struct.drm_crtc* %4)
  store %struct.dpu_crtc* %5, %struct.dpu_crtc** %3, align 8
  %6 = load %struct.dpu_crtc*, %struct.dpu_crtc** %3, align 8
  %7 = getelementptr inbounds %struct.dpu_crtc, %struct.dpu_crtc* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @ktime_set(i32 0, i32 0)
  %10 = call i64 @ktime_compare(i32 %8, i32 %9)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = call i32 (...) @ktime_get()
  %14 = load %struct.dpu_crtc*, %struct.dpu_crtc** %3, align 8
  %15 = getelementptr inbounds %struct.dpu_crtc, %struct.dpu_crtc* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  br label %21

16:                                               ; preds = %1
  %17 = load %struct.dpu_crtc*, %struct.dpu_crtc** %3, align 8
  %18 = getelementptr inbounds %struct.dpu_crtc, %struct.dpu_crtc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  br label %21

21:                                               ; preds = %16, %12
  %22 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %23 = call i32 @_dpu_crtc_complete_flip(%struct.drm_crtc* %22)
  %24 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %25 = call i32 @drm_crtc_handle_vblank(%struct.drm_crtc* %24)
  %26 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %27 = call i32 @DRMID(%struct.drm_crtc* %26)
  %28 = call i32 @trace_dpu_crtc_vblank_cb(i32 %27)
  ret void
}

declare dso_local %struct.dpu_crtc* @to_dpu_crtc(%struct.drm_crtc*) #1

declare dso_local i64 @ktime_compare(i32, i32) #1

declare dso_local i32 @ktime_set(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @_dpu_crtc_complete_flip(%struct.drm_crtc*) #1

declare dso_local i32 @drm_crtc_handle_vblank(%struct.drm_crtc*) #1

declare dso_local i32 @trace_dpu_crtc_vblank_cb(i32) #1

declare dso_local i32 @DRMID(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
