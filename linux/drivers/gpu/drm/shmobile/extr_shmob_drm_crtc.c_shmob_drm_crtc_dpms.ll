; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/shmobile/extr_shmob_drm_crtc.c_shmob_drm_crtc_dpms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/shmobile/extr_shmob_drm_crtc.c_shmob_drm_crtc_dpms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.shmob_drm_crtc = type { i32 }

@DRM_MODE_DPMS_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, i32)* @shmob_drm_crtc_dpms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shmob_drm_crtc_dpms(%struct.drm_crtc* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.shmob_drm_crtc*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %7 = call %struct.shmob_drm_crtc* @to_shmob_crtc(%struct.drm_crtc* %6)
  store %struct.shmob_drm_crtc* %7, %struct.shmob_drm_crtc** %5, align 8
  %8 = load %struct.shmob_drm_crtc*, %struct.shmob_drm_crtc** %5, align 8
  %9 = getelementptr inbounds %struct.shmob_drm_crtc, %struct.shmob_drm_crtc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %28

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @DRM_MODE_DPMS_ON, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load %struct.shmob_drm_crtc*, %struct.shmob_drm_crtc** %5, align 8
  %20 = call i32 @shmob_drm_crtc_start(%struct.shmob_drm_crtc* %19)
  br label %24

21:                                               ; preds = %14
  %22 = load %struct.shmob_drm_crtc*, %struct.shmob_drm_crtc** %5, align 8
  %23 = call i32 @shmob_drm_crtc_stop(%struct.shmob_drm_crtc* %22)
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.shmob_drm_crtc*, %struct.shmob_drm_crtc** %5, align 8
  %27 = getelementptr inbounds %struct.shmob_drm_crtc, %struct.shmob_drm_crtc* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %24, %13
  ret void
}

declare dso_local %struct.shmob_drm_crtc* @to_shmob_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @shmob_drm_crtc_start(%struct.shmob_drm_crtc*) #1

declare dso_local i32 @shmob_drm_crtc_stop(%struct.shmob_drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
