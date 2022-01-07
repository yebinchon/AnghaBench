; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos7_drm_decon.c_decon_enable_vblank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos7_drm_decon.c_decon_enable_vblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_crtc = type { %struct.decon_context* }
%struct.decon_context = type { i64, i32, i32, i64 }

@EPERM = common dso_local global i32 0, align 4
@VIDINTCON0 = common dso_local global i64 0, align 8
@VIDINTCON0_INT_ENABLE = common dso_local global i32 0, align 4
@VIDINTCON0_INT_FRAME = common dso_local global i32 0, align 4
@VIDINTCON0_FRAMESEL0_MASK = common dso_local global i32 0, align 4
@VIDINTCON0_FRAMESEL0_VSYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exynos_drm_crtc*)* @decon_enable_vblank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decon_enable_vblank(%struct.exynos_drm_crtc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.exynos_drm_crtc*, align 8
  %4 = alloca %struct.decon_context*, align 8
  %5 = alloca i32, align 4
  store %struct.exynos_drm_crtc* %0, %struct.exynos_drm_crtc** %3, align 8
  %6 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %3, align 8
  %7 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %6, i32 0, i32 0
  %8 = load %struct.decon_context*, %struct.decon_context** %7, align 8
  store %struct.decon_context* %8, %struct.decon_context** %4, align 8
  %9 = load %struct.decon_context*, %struct.decon_context** %4, align 8
  %10 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EPERM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %55

16:                                               ; preds = %1
  %17 = load %struct.decon_context*, %struct.decon_context** %4, align 8
  %18 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %17, i32 0, i32 2
  %19 = call i32 @test_and_set_bit(i32 0, i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %54, label %21

21:                                               ; preds = %16
  %22 = load %struct.decon_context*, %struct.decon_context** %4, align 8
  %23 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @VIDINTCON0, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @readl(i64 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* @VIDINTCON0_INT_ENABLE, align 4
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load %struct.decon_context*, %struct.decon_context** %4, align 8
  %32 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %21
  %36 = load i32, i32* @VIDINTCON0_INT_FRAME, align 4
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* @VIDINTCON0_FRAMESEL0_MASK, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %5, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* @VIDINTCON0_FRAMESEL0_VSYNC, align 4
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %35, %21
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.decon_context*, %struct.decon_context** %4, align 8
  %49 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @VIDINTCON0, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @writel(i32 %47, i64 %52)
  br label %54

54:                                               ; preds = %46, %16
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %13
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
