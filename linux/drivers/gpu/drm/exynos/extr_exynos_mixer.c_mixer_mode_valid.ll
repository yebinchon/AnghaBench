; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_mixer.c_mixer_mode_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_mixer.c_mixer_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_crtc = type { %struct.mixer_context* }
%struct.mixer_context = type { i64, i32 }
%struct.drm_display_mode = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"xres=%d, yres=%d, refresh=%d, intl=%d\0A\00", align 1
@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@MXR_VER_128_0_0_184 = common dso_local global i64 0, align 8
@MODE_OK = common dso_local global i32 0, align 4
@MODE_BAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exynos_drm_crtc*, %struct.drm_display_mode*)* @mixer_mode_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mixer_mode_valid(%struct.exynos_drm_crtc* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.exynos_drm_crtc*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.mixer_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.exynos_drm_crtc* %0, %struct.exynos_drm_crtc** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %9 = load %struct.exynos_drm_crtc*, %struct.exynos_drm_crtc** %4, align 8
  %10 = getelementptr inbounds %struct.exynos_drm_crtc, %struct.exynos_drm_crtc* %9, i32 0, i32 0
  %11 = load %struct.mixer_context*, %struct.mixer_context** %10, align 8
  store %struct.mixer_context* %11, %struct.mixer_context** %6, align 8
  %12 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %13 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %16 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.mixer_context*, %struct.mixer_context** %6, align 8
  %19 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %24 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %27 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @DRM_DEV_DEBUG_KMS(i32 %20, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22, i32 %25, i32 %34)
  %36 = load %struct.mixer_context*, %struct.mixer_context** %6, align 8
  %37 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MXR_VER_128_0_0_184, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %2
  %42 = load i32, i32* @MODE_OK, align 4
  store i32 %42, i32* %3, align 4
  br label %103

43:                                               ; preds = %2
  %44 = load i32, i32* %7, align 4
  %45 = icmp sge i32 %44, 464
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load i32, i32* %7, align 4
  %48 = icmp sle i32 %47, 720
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load i32, i32* %8, align 4
  %51 = icmp sge i32 %50, 261
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* %8, align 4
  %54 = icmp sle i32 %53, 576
  br i1 %54, label %79, label %55

55:                                               ; preds = %52, %49, %46, %43
  %56 = load i32, i32* %7, align 4
  %57 = icmp sge i32 %56, 1024
  br i1 %57, label %58, label %67

58:                                               ; preds = %55
  %59 = load i32, i32* %7, align 4
  %60 = icmp sle i32 %59, 1280
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load i32, i32* %8, align 4
  %63 = icmp sge i32 %62, 576
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* %8, align 4
  %66 = icmp sle i32 %65, 720
  br i1 %66, label %79, label %67

67:                                               ; preds = %64, %61, %58, %55
  %68 = load i32, i32* %7, align 4
  %69 = icmp sge i32 %68, 1664
  br i1 %69, label %70, label %81

70:                                               ; preds = %67
  %71 = load i32, i32* %7, align 4
  %72 = icmp sle i32 %71, 1920
  br i1 %72, label %73, label %81

73:                                               ; preds = %70
  %74 = load i32, i32* %8, align 4
  %75 = icmp sge i32 %74, 936
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load i32, i32* %8, align 4
  %78 = icmp sle i32 %77, 1080
  br i1 %78, label %79, label %81

79:                                               ; preds = %76, %64, %52
  %80 = load i32, i32* @MODE_OK, align 4
  store i32 %80, i32* %3, align 4
  br label %103

81:                                               ; preds = %76, %73, %70, %67
  %82 = load i32, i32* %7, align 4
  %83 = icmp eq i32 %82, 1024
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i32, i32* %8, align 4
  %86 = icmp eq i32 %85, 768
  br i1 %86, label %99, label %87

87:                                               ; preds = %84, %81
  %88 = load i32, i32* %7, align 4
  %89 = icmp eq i32 %88, 1366
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32, i32* %8, align 4
  %92 = icmp eq i32 %91, 768
  br i1 %92, label %99, label %93

93:                                               ; preds = %90, %87
  %94 = load i32, i32* %7, align 4
  %95 = icmp eq i32 %94, 1280
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = load i32, i32* %8, align 4
  %98 = icmp eq i32 %97, 1024
  br i1 %98, label %99, label %101

99:                                               ; preds = %96, %90, %84
  %100 = load i32, i32* @MODE_OK, align 4
  store i32 %100, i32* %3, align 4
  br label %103

101:                                              ; preds = %96, %93
  %102 = load i32, i32* @MODE_BAD, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %101, %99, %79, %41
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @DRM_DEV_DEBUG_KMS(i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
