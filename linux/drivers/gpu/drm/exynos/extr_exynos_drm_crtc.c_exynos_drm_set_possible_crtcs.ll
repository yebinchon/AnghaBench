; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_crtc.c_exynos_drm_set_possible_crtcs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_crtc.c_exynos_drm_set_possible_crtcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32, i32 }
%struct.exynos_drm_crtc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exynos_drm_set_possible_crtcs(%struct.drm_encoder* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.exynos_drm_crtc*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %8 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.exynos_drm_crtc* @exynos_drm_crtc_get_by_type(i32 %9, i32 %10)
  store %struct.exynos_drm_crtc* %11, %struct.exynos_drm_crtc** %6, align 8
  %12 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %6, align 8
  %13 = call i64 @IS_ERR(%struct.exynos_drm_crtc* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %6, align 8
  %17 = call i32 @PTR_ERR(%struct.exynos_drm_crtc* %16)
  store i32 %17, i32* %3, align 4
  br label %24

18:                                               ; preds = %2
  %19 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %6, align 8
  %20 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %19, i32 0, i32 0
  %21 = call i32 @drm_crtc_mask(i32* %20)
  %22 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %23 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %18, %15
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local %struct.exynos_drm_crtc* @exynos_drm_crtc_get_by_type(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.exynos_drm_crtc*) #1

declare dso_local i32 @PTR_ERR(%struct.exynos_drm_crtc*) #1

declare dso_local i32 @drm_crtc_mask(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
