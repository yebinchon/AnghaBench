; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_crtc.c_meson_g12a_crtc_atomic_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_crtc.c_meson_g12a_crtc_atomic_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_crtc_state* }
%struct.drm_crtc_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.meson_crtc = type { %struct.meson_drm* }
%struct.meson_drm = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Invalid crtc_state\0A\00", align 1
@VPP_PREBLEND_VD1_V_START_END = common dso_local global i32 0, align 4
@VPP_POSTBLEND_H_SIZE = common dso_local global i32 0, align 4
@VPP_OSD1_BLD_H_SCOPE = common dso_local global i32 0, align 4
@VPP_OSD1_BLD_V_SCOPE = common dso_local global i32 0, align 4
@VPP_OUT_H_V_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_crtc_state*)* @meson_g12a_crtc_atomic_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_g12a_crtc_atomic_enable(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_crtc_state*, align 8
  %5 = alloca %struct.meson_crtc*, align 8
  %6 = alloca %struct.drm_crtc_state*, align 8
  %7 = alloca %struct.meson_drm*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %4, align 8
  %8 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %9 = call %struct.meson_crtc* @to_meson_crtc(%struct.drm_crtc* %8)
  store %struct.meson_crtc* %9, %struct.meson_crtc** %5, align 8
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %11 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %10, i32 0, i32 0
  %12 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %11, align 8
  store %struct.drm_crtc_state* %12, %struct.drm_crtc_state** %6, align 8
  %13 = load %struct.meson_crtc*, %struct.meson_crtc** %5, align 8
  %14 = getelementptr inbounds %struct.meson_crtc, %struct.meson_crtc* %13, i32 0, i32 0
  %15 = load %struct.meson_drm*, %struct.meson_drm** %14, align 8
  store %struct.meson_drm* %15, %struct.meson_drm** %7, align 8
  %16 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %18 = icmp ne %struct.drm_crtc_state* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %93

21:                                               ; preds = %2
  %22 = call i32 @GENMASK(i32 11, i32 0)
  %23 = call i32 @FIELD_PREP(i32 %22, i32 2303)
  %24 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %25 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @VPP_PREBLEND_VD1_V_START_END, align 4
  %28 = call i64 @_REG(i32 %27)
  %29 = add nsw i64 %26, %28
  %30 = call i32 @writel(i32 %23, i64 %29)
  %31 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %32 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %36 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 16
  %40 = or i32 %34, %39
  %41 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %42 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* @VPP_POSTBLEND_H_SIZE, align 4
  %45 = call i64 @_REG(i32 %44)
  %46 = add nsw i64 %43, %45
  %47 = call i32 @writel(i32 %40, i64 %46)
  %48 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %49 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %51, 1
  %53 = or i32 0, %52
  %54 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %55 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* @VPP_OSD1_BLD_H_SCOPE, align 4
  %58 = call i64 @_REG(i32 %57)
  %59 = add nsw i64 %56, %58
  %60 = call i32 @writel_relaxed(i32 %53, i64 %59)
  %61 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %62 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %64, 1
  %66 = or i32 0, %65
  %67 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %68 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* @VPP_OSD1_BLD_V_SCOPE, align 4
  %71 = call i64 @_REG(i32 %70)
  %72 = add nsw i64 %69, %71
  %73 = call i32 @writel_relaxed(i32 %66, i64 %72)
  %74 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %75 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 %77, 16
  %79 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %80 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %78, %82
  %84 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %85 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* @VPP_OUT_H_V_SIZE, align 4
  %88 = call i64 @_REG(i32 %87)
  %89 = add nsw i64 %86, %88
  %90 = call i32 @writel_relaxed(i32 %83, i64 %89)
  %91 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %92 = call i32 @drm_crtc_vblank_on(%struct.drm_crtc* %91)
  br label %93

93:                                               ; preds = %21, %19
  ret void
}

declare dso_local %struct.meson_crtc* @to_meson_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i64 @_REG(i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @drm_crtc_vblank_on(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
