; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos5433_drm_decon.c_decon_disable_vblank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos5433_drm_decon.c_decon_disable_vblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_crtc = type { %struct.decon_context* }
%struct.decon_context = type { i32, i64, i32, i32 }

@I80_HW_TRG = common dso_local global i32 0, align 4
@DECON_VIDINTCON0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_drm_crtc*)* @decon_disable_vblank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decon_disable_vblank(%struct.exynos_drm_crtc* %0) #0 {
  %2 = alloca %struct.exynos_drm_crtc*, align 8
  %3 = alloca %struct.decon_context*, align 8
  store %struct.exynos_drm_crtc* %0, %struct.exynos_drm_crtc** %2, align 8
  %4 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %2, align 8
  %5 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %4, i32 0, i32 0
  %6 = load %struct.decon_context*, %struct.decon_context** %5, align 8
  store %struct.decon_context* %6, %struct.decon_context** %3, align 8
  %7 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %8 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @I80_HW_TRG, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %15 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @disable_irq_nosync(i32 %16)
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %20 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @disable_irq_nosync(i32 %21)
  %23 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %24 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DECON_VIDINTCON0, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel(i32 0, i64 %27)
  ret void
}

declare dso_local i32 @disable_irq_nosync(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
