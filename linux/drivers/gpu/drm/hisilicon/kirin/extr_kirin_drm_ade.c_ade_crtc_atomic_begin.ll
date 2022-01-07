; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/kirin/extr_kirin_drm_ade.c_ade_crtc_atomic_begin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/kirin/extr_kirin_drm_ade.c_ade_crtc_atomic_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drm_display_mode, %struct.drm_display_mode }
%struct.drm_display_mode = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.kirin_crtc = type { %struct.ade_hw_ctx* }
%struct.ade_hw_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_crtc_state*)* @ade_crtc_atomic_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ade_crtc_atomic_begin(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_crtc_state*, align 8
  %5 = alloca %struct.kirin_crtc*, align 8
  %6 = alloca %struct.ade_hw_ctx*, align 8
  %7 = alloca %struct.drm_display_mode*, align 8
  %8 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %4, align 8
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %10 = call %struct.kirin_crtc* @to_kirin_crtc(%struct.drm_crtc* %9)
  store %struct.kirin_crtc* %10, %struct.kirin_crtc** %5, align 8
  %11 = load %struct.kirin_crtc*, %struct.kirin_crtc** %5, align 8
  %12 = getelementptr inbounds %struct.kirin_crtc, %struct.kirin_crtc* %11, i32 0, i32 0
  %13 = load %struct.ade_hw_ctx*, %struct.ade_hw_ctx** %12, align 8
  store %struct.ade_hw_ctx* %13, %struct.ade_hw_ctx** %6, align 8
  %14 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %15 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store %struct.drm_display_mode* %17, %struct.drm_display_mode** %7, align 8
  %18 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %19 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store %struct.drm_display_mode* %21, %struct.drm_display_mode** %8, align 8
  %22 = load %struct.ade_hw_ctx*, %struct.ade_hw_ctx** %6, align 8
  %23 = getelementptr inbounds %struct.ade_hw_ctx, %struct.ade_hw_ctx* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load %struct.ade_hw_ctx*, %struct.ade_hw_ctx** %6, align 8
  %28 = call i32 @ade_power_up(%struct.ade_hw_ctx* %27)
  br label %29

29:                                               ; preds = %26, %2
  %30 = load %struct.ade_hw_ctx*, %struct.ade_hw_ctx** %6, align 8
  %31 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %32 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %33 = call i32 @ade_ldi_set_mode(%struct.ade_hw_ctx* %30, %struct.drm_display_mode* %31, %struct.drm_display_mode* %32)
  ret void
}

declare dso_local %struct.kirin_crtc* @to_kirin_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @ade_power_up(%struct.ade_hw_ctx*) #1

declare dso_local i32 @ade_ldi_set_mode(%struct.ade_hw_ctx*, %struct.drm_display_mode*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
