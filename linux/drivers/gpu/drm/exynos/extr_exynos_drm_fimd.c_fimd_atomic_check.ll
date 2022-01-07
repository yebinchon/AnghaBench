; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimd.c_fimd_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimd.c_fimd_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_crtc = type { %struct.fimd_context* }
%struct.fimd_context = type { i32, i32, i32, i64 }
%struct.drm_crtc_state = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Mode has zero clock value.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"sclk_fimd clock too low(%lu) for requested pixel clock(%lu)\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"requested pixel clock(%lu) too low\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exynos_drm_crtc*, %struct.drm_crtc_state*)* @fimd_atomic_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimd_atomic_check(%struct.exynos_drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.exynos_drm_crtc*, align 8
  %5 = alloca %struct.drm_crtc_state*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.fimd_context*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.exynos_drm_crtc* %0, %struct.exynos_drm_crtc** %4, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %5, align 8
  %11 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %12 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %11, i32 0, i32 0
  store %struct.drm_display_mode* %12, %struct.drm_display_mode** %6, align 8
  %13 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %4, align 8
  %14 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %13, i32 0, i32 0
  %15 = load %struct.fimd_context*, %struct.fimd_context** %14, align 8
  store %struct.fimd_context* %15, %struct.fimd_context** %7, align 8
  %16 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %17 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load %struct.fimd_context*, %struct.fimd_context** %7, align 8
  %22 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %82

27:                                               ; preds = %2
  %28 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %29 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %30, 1000
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %8, align 8
  %33 = load %struct.fimd_context*, %struct.fimd_context** %7, align 8
  %34 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  %38 = load i64, i64* %8, align 8
  %39 = mul i64 %38, 2
  store i64 %39, i64* %8, align 8
  br label %40

40:                                               ; preds = %37, %27
  %41 = load %struct.fimd_context*, %struct.fimd_context** %7, align 8
  %42 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @clk_get_rate(i32 %43)
  store i64 %44, i64* %9, align 8
  %45 = load i64, i64* %9, align 8
  %46 = mul i64 2, %45
  %47 = load i64, i64* %8, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %40
  %50 = load %struct.fimd_context*, %struct.fimd_context** %7, align 8
  %51 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* %8, align 8
  %55 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %52, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i64 %53, i64 %54)
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %82

58:                                               ; preds = %40
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %8, align 8
  %61 = call i32 @DIV_ROUND_CLOSEST(i64 %59, i64 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp sge i32 %62, 512
  br i1 %63, label %64, label %72

64:                                               ; preds = %58
  %65 = load %struct.fimd_context*, %struct.fimd_context** %7, align 8
  %66 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i64, i64* %8, align 8
  %69 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %67, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %82

72:                                               ; preds = %58
  %73 = load i32, i32* %10, align 4
  %74 = icmp slt i32 %73, 256
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load i32, i32* %10, align 4
  br label %78

77:                                               ; preds = %72
  br label %78

78:                                               ; preds = %77, %75
  %79 = phi i32 [ %76, %75 ], [ 255, %77 ]
  %80 = load %struct.fimd_context*, %struct.fimd_context** %7, align 8
  %81 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %78, %64, %49, %20
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, ...) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
