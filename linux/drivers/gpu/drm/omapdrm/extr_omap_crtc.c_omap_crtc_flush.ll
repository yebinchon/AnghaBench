; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_crtc.c_omap_crtc_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_crtc.c_omap_crtc_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.omap_crtc = type { i32 }
%struct.omap_crtc_state = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap_crtc_flush(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.omap_crtc*, align 8
  %4 = alloca %struct.omap_crtc_state*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %5 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %6 = call %struct.omap_crtc* @to_omap_crtc(%struct.drm_crtc* %5)
  store %struct.omap_crtc* %6, %struct.omap_crtc** %3, align 8
  %7 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %8 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.omap_crtc_state* @to_omap_crtc_state(i32 %9)
  store %struct.omap_crtc_state* %10, %struct.omap_crtc_state** %4, align 8
  %11 = load %struct.omap_crtc_state*, %struct.omap_crtc_state** %4, align 8
  %12 = getelementptr inbounds %struct.omap_crtc_state, %struct.omap_crtc_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %25

16:                                               ; preds = %1
  %17 = load %struct.omap_crtc*, %struct.omap_crtc** %3, align 8
  %18 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %17, i32 0, i32 0
  %19 = call i32 @delayed_work_pending(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = load %struct.omap_crtc*, %struct.omap_crtc** %3, align 8
  %23 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %22, i32 0, i32 0
  %24 = call i32 @schedule_delayed_work(i32* %23, i32 0)
  br label %25

25:                                               ; preds = %15, %21, %16
  ret void
}

declare dso_local %struct.omap_crtc* @to_omap_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.omap_crtc_state* @to_omap_crtc_state(i32) #1

declare dso_local i32 @delayed_work_pending(i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
