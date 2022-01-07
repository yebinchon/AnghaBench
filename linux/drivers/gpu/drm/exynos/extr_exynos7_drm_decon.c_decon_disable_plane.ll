; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos7_drm_decon.c_decon_disable_plane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos7_drm_decon.c_decon_disable_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_crtc = type { %struct.decon_context* }
%struct.decon_context = type { i64, i64 }
%struct.exynos_drm_plane = type { i32 }

@WINCONx_ENWIN = common dso_local global i32 0, align 4
@DECON_UPDATE = common dso_local global i64 0, align 8
@DECON_UPDATE_STANDALONE_F = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_drm_crtc*, %struct.exynos_drm_plane*)* @decon_disable_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decon_disable_plane(%struct.exynos_drm_crtc* %0, %struct.exynos_drm_plane* %1) #0 {
  %3 = alloca %struct.exynos_drm_crtc*, align 8
  %4 = alloca %struct.exynos_drm_plane*, align 8
  %5 = alloca %struct.decon_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.exynos_drm_crtc* %0, %struct.exynos_drm_crtc** %3, align 8
  store %struct.exynos_drm_plane* %1, %struct.exynos_drm_plane** %4, align 8
  %8 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %3, align 8
  %9 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %8, i32 0, i32 0
  %10 = load %struct.decon_context*, %struct.decon_context** %9, align 8
  store %struct.decon_context* %10, %struct.decon_context** %5, align 8
  %11 = load %struct.exynos_drm_plane*, %struct.exynos_drm_plane** %4, align 8
  %12 = getelementptr inbounds %struct.exynos_drm_plane, %struct.exynos_drm_plane* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %15 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %58

19:                                               ; preds = %2
  %20 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @decon_shadow_protect_win(%struct.decon_context* %20, i32 %21, i32 1)
  %23 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %24 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @WINCON(i32 %26)
  %28 = add nsw i64 %25, %27
  %29 = call i32 @readl(i64 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* @WINCONx_ENWIN, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %36 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i64 @WINCON(i32 %38)
  %40 = add nsw i64 %37, %39
  %41 = call i32 @writel(i32 %34, i64 %40)
  %42 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %43 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @DECON_UPDATE, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @readl(i64 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* @DECON_UPDATE_STANDALONE_F, align 4
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  %53 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @DECON_UPDATE, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @writel(i32 %51, i64 %56)
  br label %58

58:                                               ; preds = %19, %18
  ret void
}

declare dso_local i32 @decon_shadow_protect_win(%struct.decon_context*, i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @WINCON(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
