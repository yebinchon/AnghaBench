; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos7_drm_decon.c_decon_disable_vblank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos7_drm_decon.c_decon_disable_vblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_crtc = type { %struct.decon_context* }
%struct.decon_context = type { i64, i32, i32, i64 }

@VIDINTCON0 = common dso_local global i64 0, align 8
@VIDINTCON0_INT_ENABLE = common dso_local global i32 0, align 4
@VIDINTCON0_INT_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_drm_crtc*)* @decon_disable_vblank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decon_disable_vblank(%struct.exynos_drm_crtc* %0) #0 {
  %2 = alloca %struct.exynos_drm_crtc*, align 8
  %3 = alloca %struct.decon_context*, align 8
  %4 = alloca i32, align 4
  store %struct.exynos_drm_crtc* %0, %struct.exynos_drm_crtc** %2, align 8
  %5 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %2, align 8
  %6 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %5, i32 0, i32 0
  %7 = load %struct.decon_context*, %struct.decon_context** %6, align 8
  store %struct.decon_context* %7, %struct.decon_context** %3, align 8
  %8 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %9 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %46

13:                                               ; preds = %1
  %14 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %15 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %14, i32 0, i32 2
  %16 = call i64 @test_and_clear_bit(i32 0, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %46

18:                                               ; preds = %13
  %19 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %20 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @VIDINTCON0, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @readl(i64 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* @VIDINTCON0_INT_ENABLE, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %4, align 4
  %29 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %30 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %18
  %34 = load i32, i32* @VIDINTCON0_INT_FRAME, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %4, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %33, %18
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %41 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @VIDINTCON0, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel(i32 %39, i64 %44)
  br label %46

46:                                               ; preds = %12, %38, %13
  ret void
}

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
