; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_crtc.c__dpu_crtc_complete_flip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_crtc.c__dpu_crtc_complete_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.dpu_crtc = type { i32*, i32 }

@.str = private unnamed_addr constant [21 x i8] c"%s: send event: %pK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @_dpu_crtc_complete_flip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_dpu_crtc_complete_flip(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.dpu_crtc*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i64, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %6 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %7 = call %struct.dpu_crtc* @to_dpu_crtc(%struct.drm_crtc* %6)
  store %struct.dpu_crtc* %7, %struct.dpu_crtc** %3, align 8
  %8 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %9 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %8, i32 0, i32 0
  %10 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  store %struct.drm_device* %10, %struct.drm_device** %4, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.dpu_crtc*, %struct.dpu_crtc** %3, align 8
  %16 = getelementptr inbounds %struct.dpu_crtc, %struct.dpu_crtc* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %37

19:                                               ; preds = %1
  %20 = load %struct.dpu_crtc*, %struct.dpu_crtc** %3, align 8
  %21 = getelementptr inbounds %struct.dpu_crtc, %struct.dpu_crtc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.dpu_crtc*, %struct.dpu_crtc** %3, align 8
  %24 = getelementptr inbounds %struct.dpu_crtc, %struct.dpu_crtc* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @DRM_DEBUG_VBL(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %22, i32* %25)
  %27 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %28 = call i32 @DRMID(%struct.drm_crtc* %27)
  %29 = call i32 @trace_dpu_crtc_complete_flip(i32 %28)
  %30 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %31 = load %struct.dpu_crtc*, %struct.dpu_crtc** %3, align 8
  %32 = getelementptr inbounds %struct.dpu_crtc, %struct.dpu_crtc* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @drm_crtc_send_vblank_event(%struct.drm_crtc* %30, i32* %33)
  %35 = load %struct.dpu_crtc*, %struct.dpu_crtc** %3, align 8
  %36 = getelementptr inbounds %struct.dpu_crtc, %struct.dpu_crtc* %35, i32 0, i32 0
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %19, %1
  %38 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %39 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %38, i32 0, i32 0
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  ret void
}

declare dso_local %struct.dpu_crtc* @to_dpu_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @DRM_DEBUG_VBL(i8*, i32, i32*) #1

declare dso_local i32 @trace_dpu_crtc_complete_flip(i32) #1

declare dso_local i32 @DRMID(%struct.drm_crtc*) #1

declare dso_local i32 @drm_crtc_send_vblank_event(%struct.drm_crtc*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
