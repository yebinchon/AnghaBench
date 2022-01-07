; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimd.c_fimd_disable_vblank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimd.c_fimd_disable_vblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_crtc = type { %struct.fimd_context* }
%struct.fimd_context = type { i64, i64, i32, i64 }

@VIDINTCON0 = common dso_local global i64 0, align 8
@VIDINTCON0_INT_ENABLE = common dso_local global i32 0, align 4
@VIDINTCON0_INT_I80IFDONE = common dso_local global i32 0, align 4
@VIDINTCON0_INT_SYSMAINCON = common dso_local global i32 0, align 4
@VIDINTCON0_INT_SYSSUBCON = common dso_local global i32 0, align 4
@VIDINTCON0_INT_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_drm_crtc*)* @fimd_disable_vblank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fimd_disable_vblank(%struct.exynos_drm_crtc* %0) #0 {
  %2 = alloca %struct.exynos_drm_crtc*, align 8
  %3 = alloca %struct.fimd_context*, align 8
  %4 = alloca i32, align 4
  store %struct.exynos_drm_crtc* %0, %struct.exynos_drm_crtc** %2, align 8
  %5 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %2, align 8
  %6 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %5, i32 0, i32 0
  %7 = load %struct.fimd_context*, %struct.fimd_context** %6, align 8
  store %struct.fimd_context* %7, %struct.fimd_context** %3, align 8
  %8 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %9 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %59

13:                                               ; preds = %1
  %14 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %15 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %14, i32 0, i32 2
  %16 = call i64 @test_and_clear_bit(i32 0, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %59

18:                                               ; preds = %13
  %19 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %20 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %19, i32 0, i32 0
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
  %29 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %30 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %18
  %34 = load i32, i32* @VIDINTCON0_INT_I80IFDONE, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %4, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* @VIDINTCON0_INT_SYSMAINCON, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %4, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* @VIDINTCON0_INT_SYSSUBCON, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %4, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %4, align 4
  br label %51

46:                                               ; preds = %18
  %47 = load i32, i32* @VIDINTCON0_INT_FRAME, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %4, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %46, %33
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.fimd_context*, %struct.fimd_context** %3, align 8
  %54 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @VIDINTCON0, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel(i32 %52, i64 %57)
  br label %59

59:                                               ; preds = %12, %51, %13
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
