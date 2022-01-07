; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos5433_drm_decon.c_decon_enable_vblank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos5433_drm_decon.c_decon_enable_vblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_crtc = type { i64, %struct.decon_context* }
%struct.decon_context = type { i32, i32, i32, i64 }

@VIDINTCON0_INTEN = common dso_local global i32 0, align 4
@VIDINTCON0_FRAMEDONE = common dso_local global i32 0, align 4
@VIDINTCON0_INTFRMEN = common dso_local global i32 0, align 4
@VIDINTCON0_FRAMESEL_FP = common dso_local global i32 0, align 4
@DECON_VIDINTCON0 = common dso_local global i64 0, align 8
@I80_HW_TRG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exynos_drm_crtc*)* @decon_enable_vblank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decon_enable_vblank(%struct.exynos_drm_crtc* %0) #0 {
  %2 = alloca %struct.exynos_drm_crtc*, align 8
  %3 = alloca %struct.decon_context*, align 8
  %4 = alloca i32, align 4
  store %struct.exynos_drm_crtc* %0, %struct.exynos_drm_crtc** %2, align 8
  %5 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %2, align 8
  %6 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %5, i32 0, i32 1
  %7 = load %struct.decon_context*, %struct.decon_context** %6, align 8
  store %struct.decon_context* %7, %struct.decon_context** %3, align 8
  %8 = load i32, i32* @VIDINTCON0_INTEN, align 4
  store i32 %8, i32* %4, align 4
  %9 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %2, align 8
  %10 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* @VIDINTCON0_FRAMEDONE, align 4
  %15 = load i32, i32* %4, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %4, align 4
  br label %23

17:                                               ; preds = %1
  %18 = load i32, i32* @VIDINTCON0_INTFRMEN, align 4
  %19 = load i32, i32* @VIDINTCON0_FRAMESEL_FP, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %17, %13
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %26 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DECON_VIDINTCON0, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel(i32 %24, i64 %29)
  %31 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %32 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @enable_irq(i32 %33)
  %35 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %36 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @I80_HW_TRG, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %23
  %42 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %43 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @enable_irq(i32 %44)
  br label %46

46:                                               ; preds = %41, %23
  ret i32 0
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
