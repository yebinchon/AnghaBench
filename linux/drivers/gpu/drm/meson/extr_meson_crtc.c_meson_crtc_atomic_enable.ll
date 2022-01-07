; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_crtc.c_meson_crtc_atomic_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_crtc.c_meson_crtc_atomic_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_crtc_state* }
%struct.drm_crtc_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.meson_crtc = type { %struct.meson_drm* }
%struct.meson_drm = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Invalid crtc_state\0A\00", align 1
@VPP_POSTBLEND_H_SIZE = common dso_local global i32 0, align 4
@VPP_PREBLEND_VD1_V_START_END = common dso_local global i32 0, align 4
@VPP_POSTBLEND_ENABLE = common dso_local global i32 0, align 4
@VPP_MISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_crtc_state*)* @meson_crtc_atomic_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_crtc_atomic_enable(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
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
  br label %53

21:                                               ; preds = %2
  %22 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %23 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %27 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* @VPP_POSTBLEND_H_SIZE, align 4
  %30 = call i64 @_REG(i32 %29)
  %31 = add nsw i64 %28, %30
  %32 = call i32 @writel(i32 %25, i64 %31)
  %33 = call i32 @GENMASK(i32 11, i32 0)
  %34 = call i32 @FIELD_PREP(i32 %33, i32 2303)
  %35 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %36 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @VPP_PREBLEND_VD1_V_START_END, align 4
  %39 = call i64 @_REG(i32 %38)
  %40 = add nsw i64 %37, %39
  %41 = call i32 @writel(i32 %34, i64 %40)
  %42 = load i32, i32* @VPP_POSTBLEND_ENABLE, align 4
  %43 = load i32, i32* @VPP_POSTBLEND_ENABLE, align 4
  %44 = load %struct.meson_drm*, %struct.meson_drm** %7, align 8
  %45 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* @VPP_MISC, align 4
  %48 = call i64 @_REG(i32 %47)
  %49 = add nsw i64 %46, %48
  %50 = call i32 @writel_bits_relaxed(i32 %42, i32 %43, i64 %49)
  %51 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %52 = call i32 @drm_crtc_vblank_on(%struct.drm_crtc* %51)
  br label %53

53:                                               ; preds = %21, %19
  ret void
}

declare dso_local %struct.meson_crtc* @to_meson_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @_REG(i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @writel_bits_relaxed(i32, i32, i64) #1

declare dso_local i32 @drm_crtc_vblank_on(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
