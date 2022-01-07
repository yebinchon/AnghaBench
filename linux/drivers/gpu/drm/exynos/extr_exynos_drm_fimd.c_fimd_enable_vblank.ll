; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimd.c_fimd_enable_vblank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimd.c_fimd_enable_vblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_crtc = type { %struct.fimd_context* }
%struct.fimd_context = type { i64, i64, i32, i64 }

@EPERM = common dso_local global i32 0, align 4
@VIDINTCON0 = common dso_local global i64 0, align 8
@VIDINTCON0_INT_ENABLE = common dso_local global i32 0, align 4
@VIDINTCON0_INT_I80IFDONE = common dso_local global i32 0, align 4
@VIDINTCON0_INT_SYSMAINCON = common dso_local global i32 0, align 4
@VIDINTCON0_INT_SYSSUBCON = common dso_local global i32 0, align 4
@VIDINTCON0_INT_FRAME = common dso_local global i32 0, align 4
@VIDINTCON0_FRAMESEL0_MASK = common dso_local global i32 0, align 4
@VIDINTCON0_FRAMESEL0_FRONTPORCH = common dso_local global i32 0, align 4
@VIDINTCON0_FRAMESEL1_MASK = common dso_local global i32 0, align 4
@VIDINTCON0_FRAMESEL1_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exynos_drm_crtc*)* @fimd_enable_vblank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimd_enable_vblank(%struct.exynos_drm_crtc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.exynos_drm_crtc*, align 8
  %4 = alloca %struct.fimd_context*, align 8
  %5 = alloca i32, align 4
  store %struct.exynos_drm_crtc* %0, %struct.exynos_drm_crtc** %3, align 8
  %6 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %3, align 8
  %7 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %6, i32 0, i32 0
  %8 = load %struct.fimd_context*, %struct.fimd_context** %7, align 8
  store %struct.fimd_context* %8, %struct.fimd_context** %4, align 8
  %9 = load %struct.fimd_context*, %struct.fimd_context** %4, align 8
  %10 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EPERM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %73

16:                                               ; preds = %1
  %17 = load %struct.fimd_context*, %struct.fimd_context** %4, align 8
  %18 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %17, i32 0, i32 2
  %19 = call i32 @test_and_set_bit(i32 0, i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %72, label %21

21:                                               ; preds = %16
  %22 = load %struct.fimd_context*, %struct.fimd_context** %4, align 8
  %23 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @VIDINTCON0, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @readl(i64 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* @VIDINTCON0_INT_ENABLE, align 4
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load %struct.fimd_context*, %struct.fimd_context** %4, align 8
  %32 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %21
  %36 = load i32, i32* @VIDINTCON0_INT_I80IFDONE, align 4
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* @VIDINTCON0_INT_SYSMAINCON, align 4
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* @VIDINTCON0_INT_SYSSUBCON, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %5, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %5, align 4
  br label %64

46:                                               ; preds = %21
  %47 = load i32, i32* @VIDINTCON0_INT_FRAME, align 4
  %48 = load i32, i32* %5, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* @VIDINTCON0_FRAMESEL0_MASK, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %5, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* @VIDINTCON0_FRAMESEL0_FRONTPORCH, align 4
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* @VIDINTCON0_FRAMESEL1_MASK, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %5, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* @VIDINTCON0_FRAMESEL1_NONE, align 4
  %62 = load i32, i32* %5, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %46, %35
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.fimd_context*, %struct.fimd_context** %4, align 8
  %67 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @VIDINTCON0, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @writel(i32 %65, i64 %70)
  br label %72

72:                                               ; preds = %64, %16
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %13
  %74 = load i32, i32* %2, align 4
  ret i32 %74
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
