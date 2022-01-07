; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/kirin/extr_kirin_drm_ade.c_ade_crtc_atomic_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/kirin/extr_kirin_drm_ade.c_ade_crtc_atomic_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.kirin_crtc = type { i32, %struct.ade_hw_ctx* }
%struct.ade_hw_ctx = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_crtc_state*)* @ade_crtc_atomic_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ade_crtc_atomic_enable(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_crtc_state*, align 8
  %5 = alloca %struct.kirin_crtc*, align 8
  %6 = alloca %struct.ade_hw_ctx*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %4, align 8
  %8 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %9 = call %struct.kirin_crtc* @to_kirin_crtc(%struct.drm_crtc* %8)
  store %struct.kirin_crtc* %9, %struct.kirin_crtc** %5, align 8
  %10 = load %struct.kirin_crtc*, %struct.kirin_crtc** %5, align 8
  %11 = getelementptr inbounds %struct.kirin_crtc, %struct.kirin_crtc* %10, i32 0, i32 1
  %12 = load %struct.ade_hw_ctx*, %struct.ade_hw_ctx** %11, align 8
  store %struct.ade_hw_ctx* %12, %struct.ade_hw_ctx** %6, align 8
  %13 = load %struct.kirin_crtc*, %struct.kirin_crtc** %5, align 8
  %14 = getelementptr inbounds %struct.kirin_crtc, %struct.kirin_crtc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %43

18:                                               ; preds = %2
  %19 = load %struct.ade_hw_ctx*, %struct.ade_hw_ctx** %6, align 8
  %20 = getelementptr inbounds %struct.ade_hw_ctx, %struct.ade_hw_ctx* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %18
  %24 = load %struct.ade_hw_ctx*, %struct.ade_hw_ctx** %6, align 8
  %25 = call i32 @ade_power_up(%struct.ade_hw_ctx* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %43

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %29, %18
  %31 = load %struct.ade_hw_ctx*, %struct.ade_hw_ctx** %6, align 8
  %32 = call i32 @ade_set_medianoc_qos(%struct.ade_hw_ctx* %31)
  %33 = load %struct.ade_hw_ctx*, %struct.ade_hw_ctx** %6, align 8
  %34 = call i32 @ade_display_enable(%struct.ade_hw_ctx* %33)
  %35 = load %struct.ade_hw_ctx*, %struct.ade_hw_ctx** %6, align 8
  %36 = getelementptr inbounds %struct.ade_hw_ctx, %struct.ade_hw_ctx* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ade_dump_regs(i32 %37)
  %39 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %40 = call i32 @drm_crtc_vblank_on(%struct.drm_crtc* %39)
  %41 = load %struct.kirin_crtc*, %struct.kirin_crtc** %5, align 8
  %42 = getelementptr inbounds %struct.kirin_crtc, %struct.kirin_crtc* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  br label %43

43:                                               ; preds = %30, %28, %17
  ret void
}

declare dso_local %struct.kirin_crtc* @to_kirin_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @ade_power_up(%struct.ade_hw_ctx*) #1

declare dso_local i32 @ade_set_medianoc_qos(%struct.ade_hw_ctx*) #1

declare dso_local i32 @ade_display_enable(%struct.ade_hw_ctx*) #1

declare dso_local i32 @ade_dump_regs(i32) #1

declare dso_local i32 @drm_crtc_vblank_on(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
