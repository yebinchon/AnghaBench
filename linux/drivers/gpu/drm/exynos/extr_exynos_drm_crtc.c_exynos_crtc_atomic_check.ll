; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_crtc.c_exynos_crtc_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_crtc.c_exynos_crtc_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.exynos_drm_crtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.exynos_drm_crtc*, %struct.drm_crtc_state*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_crtc_state*)* @exynos_crtc_atomic_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_crtc_atomic_check(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca %struct.drm_crtc_state*, align 8
  %6 = alloca %struct.exynos_drm_crtc*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %4, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %5, align 8
  %7 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %8 = call %struct.exynos_drm_crtc* @to_exynos_crtc(%struct.drm_crtc* %7)
  store %struct.exynos_drm_crtc* %8, %struct.exynos_drm_crtc** %6, align 8
  %9 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %10 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %31

14:                                               ; preds = %2
  %15 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %6, align 8
  %16 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.exynos_drm_crtc*, %struct.drm_crtc_state*)*, i32 (%struct.exynos_drm_crtc*, %struct.drm_crtc_state*)** %18, align 8
  %20 = icmp ne i32 (%struct.exynos_drm_crtc*, %struct.drm_crtc_state*)* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %14
  %22 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %6, align 8
  %23 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.exynos_drm_crtc*, %struct.drm_crtc_state*)*, i32 (%struct.exynos_drm_crtc*, %struct.drm_crtc_state*)** %25, align 8
  %27 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %6, align 8
  %28 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %29 = call i32 %26(%struct.exynos_drm_crtc* %27, %struct.drm_crtc_state* %28)
  store i32 %29, i32* %3, align 4
  br label %31

30:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %21, %13
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local %struct.exynos_drm_crtc* @to_exynos_crtc(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
