; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_plane.c_exynos_drm_plane_check_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_plane.c_exynos_drm_plane_check_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_plane_config = type { i32 }
%struct.exynos_drm_plane_state = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { %struct.drm_crtc* }
%struct.drm_crtc = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@EXYNOS_DRM_PLANE_CAP_SCALE = common dso_local global i32 0, align 4
@EXYNOS_DRM_PLANE_CAP_DOUBLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"scaling mode is not supported\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exynos_drm_plane_config*, %struct.exynos_drm_plane_state*)* @exynos_drm_plane_check_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_drm_plane_check_size(%struct.exynos_drm_plane_config* %0, %struct.exynos_drm_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.exynos_drm_plane_config*, align 8
  %5 = alloca %struct.exynos_drm_plane_state*, align 8
  %6 = alloca %struct.drm_crtc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.exynos_drm_plane_config* %0, %struct.exynos_drm_plane_config** %4, align 8
  store %struct.exynos_drm_plane_state* %1, %struct.exynos_drm_plane_state** %5, align 8
  %9 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %10 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.drm_crtc*, %struct.drm_crtc** %11, align 8
  store %struct.drm_crtc* %12, %struct.drm_crtc** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.exynos_drm_plane_config*, %struct.exynos_drm_plane_config** %4, align 8
  %14 = getelementptr inbounds %struct.exynos_drm_plane_config, %struct.exynos_drm_plane_config* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @EXYNOS_DRM_PLANE_CAP_SCALE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %84

20:                                               ; preds = %2
  %21 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %22 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %26 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %24, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  store i32 1, i32* %7, align 4
  br label %31

31:                                               ; preds = %30, %20
  %32 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %33 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %37 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %35, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  store i32 1, i32* %8, align 4
  br label %42

42:                                               ; preds = %41, %31
  %43 = load %struct.exynos_drm_plane_config*, %struct.exynos_drm_plane_config** %4, align 8
  %44 = getelementptr inbounds %struct.exynos_drm_plane_config, %struct.exynos_drm_plane_config* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @EXYNOS_DRM_PLANE_CAP_DOUBLE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %51 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 32768
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 1, i32* %7, align 4
  br label %55

55:                                               ; preds = %54, %49, %42
  %56 = load %struct.exynos_drm_plane_config*, %struct.exynos_drm_plane_config** %4, align 8
  %57 = getelementptr inbounds %struct.exynos_drm_plane_config, %struct.exynos_drm_plane_config* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @EXYNOS_DRM_PLANE_CAP_DOUBLE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  %63 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %64 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 32768
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 1, i32* %8, align 4
  br label %68

68:                                               ; preds = %67, %62, %55
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  br label %84

75:                                               ; preds = %71, %68
  %76 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %77 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %76, i32 0, i32 0
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @DRM_DEV_DEBUG_KMS(i32 %80, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %82 = load i32, i32* @ENOTSUPP, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %75, %74, %19
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @DRM_DEV_DEBUG_KMS(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
