; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos7_drm_decon.c_decon_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos7_drm_decon.c_decon_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_crtc = type { %struct.decon_context* }
%struct.decon_context = type { i32, i32, i32* }

@WINDOWS_NR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_drm_crtc*)* @decon_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decon_disable(%struct.exynos_drm_crtc* %0) #0 {
  %2 = alloca %struct.exynos_drm_crtc*, align 8
  %3 = alloca %struct.decon_context*, align 8
  %4 = alloca i32, align 4
  store %struct.exynos_drm_crtc* %0, %struct.exynos_drm_crtc** %2, align 8
  %5 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %2, align 8
  %6 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %5, i32 0, i32 0
  %7 = load %struct.decon_context*, %struct.decon_context** %6, align 8
  store %struct.decon_context* %7, %struct.decon_context** %3, align 8
  %8 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %9 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %37

13:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %27, %13
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @WINDOWS_NR, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %2, align 8
  %20 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %21 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = call i32 @decon_disable_plane(%struct.exynos_drm_crtc* %19, i32* %25)
  br label %27

27:                                               ; preds = %18
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %14

30:                                               ; preds = %14
  %31 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %32 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @pm_runtime_put_sync(i32 %33)
  %35 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %36 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  br label %37

37:                                               ; preds = %30, %12
  ret void
}

declare dso_local i32 @decon_disable_plane(%struct.exynos_drm_crtc*, i32*) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
