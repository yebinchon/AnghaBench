; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_ipuv3-crtc.c_ipu_crtc_mode_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_ipuv3-crtc.c_ipu_crtc_mode_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.ipu_crtc = type { i32 }
%struct.videomode = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @ipu_crtc_mode_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipu_crtc_mode_fixup(%struct.drm_crtc* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_crtc*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.drm_display_mode*, align 8
  %8 = alloca %struct.ipu_crtc*, align 8
  %9 = alloca %struct.videomode, align 8
  %10 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %5, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %6, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %7, align 8
  %11 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %12 = call %struct.ipu_crtc* @to_ipu_crtc(%struct.drm_crtc* %11)
  store %struct.ipu_crtc* %12, %struct.ipu_crtc** %8, align 8
  %13 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %14 = call i32 @drm_display_mode_to_videomode(%struct.drm_display_mode* %13, %struct.videomode* %9)
  %15 = load %struct.ipu_crtc*, %struct.ipu_crtc** %8, align 8
  %16 = getelementptr inbounds %struct.ipu_crtc, %struct.ipu_crtc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ipu_di_adjust_videomode(i32 %17, %struct.videomode* %9)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %34

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.videomode, %struct.videomode* %9, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.videomode, %struct.videomode* %9, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %22
  store i32 0, i32* %4, align 4
  br label %34

31:                                               ; preds = %26
  %32 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %33 = call i32 @drm_display_mode_from_videomode(%struct.videomode* %9, %struct.drm_display_mode* %32)
  store i32 1, i32* %4, align 4
  br label %34

34:                                               ; preds = %31, %30, %21
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.ipu_crtc* @to_ipu_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @drm_display_mode_to_videomode(%struct.drm_display_mode*, %struct.videomode*) #1

declare dso_local i32 @ipu_di_adjust_videomode(i32, %struct.videomode*) #1

declare dso_local i32 @drm_display_mode_from_videomode(%struct.videomode*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
