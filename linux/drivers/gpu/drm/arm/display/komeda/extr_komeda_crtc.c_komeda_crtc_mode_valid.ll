; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_crtc.c_komeda_crtc_mode_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_crtc.c_komeda_crtc_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.komeda_dev* }
%struct.komeda_dev = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32 }
%struct.komeda_crtc = type { %struct.komeda_pipeline* }
%struct.komeda_pipeline = type { i32, i64 }

@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@MODE_NO_INTERLACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"pxlclk doesn't support %lu Hz\0A\00", align 1
@MODE_NOCLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"engine clk can't satisfy the requirement of %s-clk: %lu.\0A\00", align 1
@MODE_CLOCK_HIGH = common dso_local global i32 0, align 4
@MODE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_display_mode*)* @komeda_crtc_mode_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @komeda_crtc_mode_valid(%struct.drm_crtc* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.komeda_dev*, align 8
  %7 = alloca %struct.komeda_crtc*, align 8
  %8 = alloca %struct.komeda_pipeline*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %11 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %12 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.komeda_dev*, %struct.komeda_dev** %14, align 8
  store %struct.komeda_dev* %15, %struct.komeda_dev** %6, align 8
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %17 = call %struct.komeda_crtc* @to_kcrtc(%struct.drm_crtc* %16)
  store %struct.komeda_crtc* %17, %struct.komeda_crtc** %7, align 8
  %18 = load %struct.komeda_crtc*, %struct.komeda_crtc** %7, align 8
  %19 = getelementptr inbounds %struct.komeda_crtc, %struct.komeda_crtc* %18, i32 0, i32 0
  %20 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %19, align 8
  store %struct.komeda_pipeline* %20, %struct.komeda_pipeline** %8, align 8
  %21 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %22 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @MODE_NO_INTERLACE, align 4
  store i32 %28, i32* %3, align 4
  br label %76

29:                                               ; preds = %2
  %30 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %31 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %32, 1000
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %9, align 8
  %35 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %8, align 8
  %36 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = load i64, i64* %9, align 8
  %41 = udiv i64 %40, 2
  store i64 %41, i64* %9, align 8
  br label %42

42:                                               ; preds = %39, %29
  %43 = load i64, i64* %9, align 8
  %44 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %8, align 8
  %45 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i64, i64* %9, align 8
  %48 = call i64 @clk_round_rate(i32 %46, i64 %47)
  %49 = icmp ne i64 %43, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = load i64, i64* %9, align 8
  %52 = call i32 (i8*, i64, ...) @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %51)
  %53 = load i32, i32* @MODE_NOCLOCK, align 4
  store i32 %53, i32* %3, align 4
  br label %76

54:                                               ; preds = %42
  %55 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %56 = call %struct.komeda_crtc* @to_kcrtc(%struct.drm_crtc* %55)
  %57 = load i64, i64* %9, align 8
  %58 = call i64 @komeda_calc_min_aclk_rate(%struct.komeda_crtc* %56, i64 %57)
  store i64 %58, i64* %10, align 8
  %59 = load %struct.komeda_dev*, %struct.komeda_dev** %6, align 8
  %60 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i64, i64* %10, align 8
  %63 = call i64 @clk_round_rate(i32 %61, i64 %62)
  %64 = load i64, i64* %10, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %54
  %67 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %68 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* %9, align 8
  %72 = call i32 (i8*, i64, ...) @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i64 %70, i64 %71)
  %73 = load i32, i32* @MODE_CLOCK_HIGH, align 4
  store i32 %73, i32* %3, align 4
  br label %76

74:                                               ; preds = %54
  %75 = load i32, i32* @MODE_OK, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %66, %50, %27
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.komeda_crtc* @to_kcrtc(%struct.drm_crtc*) #1

declare dso_local i64 @clk_round_rate(i32, i64) #1

declare dso_local i32 @DRM_DEBUG_ATOMIC(i8*, i64, ...) #1

declare dso_local i64 @komeda_calc_min_aclk_rate(%struct.komeda_crtc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
