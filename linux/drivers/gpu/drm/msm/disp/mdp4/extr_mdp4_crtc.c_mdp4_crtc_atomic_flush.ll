; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_crtc.c_mdp4_crtc_atomic_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_crtc.c_mdp4_crtc_atomic_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_2__*, %struct.drm_device* }
%struct.TYPE_2__ = type { i32* }
%struct.drm_device = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.mdp4_crtc = type { i32*, i32 }

@.str = private unnamed_addr constant [14 x i8] c"%s: event: %p\00", align 1
@PENDING_FLIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_crtc_state*)* @mdp4_crtc_atomic_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdp4_crtc_atomic_flush(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_crtc_state*, align 8
  %5 = alloca %struct.mdp4_crtc*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca i64, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %4, align 8
  %8 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %9 = call %struct.mdp4_crtc* @to_mdp4_crtc(%struct.drm_crtc* %8)
  store %struct.mdp4_crtc* %9, %struct.mdp4_crtc** %5, align 8
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %11 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %10, i32 0, i32 1
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %6, align 8
  %13 = load %struct.mdp4_crtc*, %struct.mdp4_crtc** %5, align 8
  %14 = getelementptr inbounds %struct.mdp4_crtc, %struct.mdp4_crtc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %17 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %15, i32* %20)
  %22 = load %struct.mdp4_crtc*, %struct.mdp4_crtc** %5, align 8
  %23 = getelementptr inbounds %struct.mdp4_crtc, %struct.mdp4_crtc* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @WARN_ON(i32* %24)
  %26 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %27 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %26, i32 0, i32 0
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %31 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.mdp4_crtc*, %struct.mdp4_crtc** %5, align 8
  %36 = getelementptr inbounds %struct.mdp4_crtc, %struct.mdp4_crtc* %35, i32 0, i32 0
  store i32* %34, i32** %36, align 8
  %37 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %38 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  %41 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %42 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %41, i32 0, i32 0
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %46 = call i32 @blend_setup(%struct.drm_crtc* %45)
  %47 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %48 = call i32 @crtc_flush(%struct.drm_crtc* %47)
  %49 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %50 = load i32, i32* @PENDING_FLIP, align 4
  %51 = call i32 @request_pending(%struct.drm_crtc* %49, i32 %50)
  ret void
}

declare dso_local %struct.mdp4_crtc* @to_mdp4_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @DBG(i8*, i32, i32*) #1

declare dso_local i32 @WARN_ON(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @blend_setup(%struct.drm_crtc*) #1

declare dso_local i32 @crtc_flush(%struct.drm_crtc*) #1

declare dso_local i32 @request_pending(%struct.drm_crtc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
