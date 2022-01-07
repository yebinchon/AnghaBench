; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos7_drm_decon.c_decon_clear_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos7_drm_decon.c_decon_clear_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_crtc = type { %struct.decon_context* }
%struct.decon_context = type { i32, i64 }

@WINDOWS_NR = common dso_local global i32 0, align 4
@WINCONx_ENWIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_drm_crtc*)* @decon_clear_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decon_clear_channels(%struct.exynos_drm_crtc* %0) #0 {
  %2 = alloca %struct.exynos_drm_crtc*, align 8
  %3 = alloca %struct.decon_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.exynos_drm_crtc* %0, %struct.exynos_drm_crtc** %2, align 8
  %7 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %2, align 8
  %8 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %7, i32 0, i32 0
  %9 = load %struct.decon_context*, %struct.decon_context** %8, align 8
  store %struct.decon_context* %9, %struct.decon_context** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %40, %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @WINDOWS_NR, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %43

14:                                               ; preds = %10
  %15 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %16 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @WINCON(i32 %18)
  %20 = add nsw i64 %17, %19
  %21 = call i32 @readl(i64 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @WINCONx_ENWIN, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %14
  %27 = load i32, i32* @WINCONx_ENWIN, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %33 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i64 @WINCON(i32 %35)
  %37 = add nsw i64 %34, %36
  %38 = call i32 @writel(i32 %31, i64 %37)
  store i32 1, i32* %5, align 4
  br label %39

39:                                               ; preds = %26, %14
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %4, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %10

43:                                               ; preds = %10
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load %struct.decon_context*, %struct.decon_context** %3, align 8
  %48 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @decon_wait_for_vblank(i32 %49)
  br label %51

51:                                               ; preds = %46, %43
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @WINCON(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @decon_wait_for_vblank(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
