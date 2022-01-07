; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_crtc.c_mdp4_crtc_cursor_move.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_crtc.c_mdp4_crtc_cursor_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.mdp4_crtc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@PENDING_CURSOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, i32, i32)* @mdp4_crtc_cursor_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdp4_crtc_cursor_move(%struct.drm_crtc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mdp4_crtc*, align 8
  %8 = alloca i64, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %10 = call %struct.mdp4_crtc* @to_mdp4_crtc(%struct.drm_crtc* %9)
  store %struct.mdp4_crtc* %10, %struct.mdp4_crtc** %7, align 8
  %11 = load %struct.mdp4_crtc*, %struct.mdp4_crtc** %7, align 8
  %12 = getelementptr inbounds %struct.mdp4_crtc, %struct.mdp4_crtc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i64, i64* %8, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.mdp4_crtc*, %struct.mdp4_crtc** %7, align 8
  %18 = getelementptr inbounds %struct.mdp4_crtc, %struct.mdp4_crtc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.mdp4_crtc*, %struct.mdp4_crtc** %7, align 8
  %22 = getelementptr inbounds %struct.mdp4_crtc, %struct.mdp4_crtc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 4
  %24 = load %struct.mdp4_crtc*, %struct.mdp4_crtc** %7, align 8
  %25 = getelementptr inbounds %struct.mdp4_crtc, %struct.mdp4_crtc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  %29 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %30 = call i32 @crtc_flush(%struct.drm_crtc* %29)
  %31 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %32 = load i32, i32* @PENDING_CURSOR, align 4
  %33 = call i32 @request_pending(%struct.drm_crtc* %31, i32 %32)
  ret i32 0
}

declare dso_local %struct.mdp4_crtc* @to_mdp4_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @crtc_flush(%struct.drm_crtc*) #1

declare dso_local i32 @request_pending(%struct.drm_crtc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
