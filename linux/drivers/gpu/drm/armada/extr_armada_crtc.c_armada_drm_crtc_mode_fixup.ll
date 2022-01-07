; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_crtc.c_armada_drm_crtc_mode_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_crtc.c_armada_drm_crtc_mode_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.armada_crtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.armada_crtc*, %struct.drm_display_mode*, i32*)* }

@CRTC_INTERLACE_HALVE_V = common dso_local global i32 0, align 4
@MODE_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @armada_drm_crtc_mode_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada_drm_crtc_mode_fixup(%struct.drm_crtc* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_crtc*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.drm_display_mode*, align 8
  %8 = alloca %struct.armada_crtc*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %5, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %6, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %7, align 8
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %11 = call %struct.armada_crtc* @drm_to_armada_crtc(%struct.drm_crtc* %10)
  store %struct.armada_crtc* %11, %struct.armada_crtc** %8, align 8
  %12 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %13 = load i32, i32* @CRTC_INTERLACE_HALVE_V, align 4
  %14 = call i32 @drm_mode_set_crtcinfo(%struct.drm_display_mode* %12, i32 %13)
  %15 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %16 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %17 = call i64 @armada_drm_crtc_mode_valid(%struct.drm_crtc* %15, %struct.drm_display_mode* %16)
  %18 = load i64, i64* @MODE_OK, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %34

21:                                               ; preds = %3
  %22 = load %struct.armada_crtc*, %struct.armada_crtc** %8, align 8
  %23 = getelementptr inbounds %struct.armada_crtc, %struct.armada_crtc* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.armada_crtc*, %struct.drm_display_mode*, i32*)*, i32 (%struct.armada_crtc*, %struct.drm_display_mode*, i32*)** %25, align 8
  %27 = load %struct.armada_crtc*, %struct.armada_crtc** %8, align 8
  %28 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %29 = call i32 %26(%struct.armada_crtc* %27, %struct.drm_display_mode* %28, i32* null)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %34

33:                                               ; preds = %21
  store i32 1, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %32, %20
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.armada_crtc* @drm_to_armada_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @drm_mode_set_crtcinfo(%struct.drm_display_mode*, i32) #1

declare dso_local i64 @armada_drm_crtc_mode_valid(%struct.drm_crtc*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
