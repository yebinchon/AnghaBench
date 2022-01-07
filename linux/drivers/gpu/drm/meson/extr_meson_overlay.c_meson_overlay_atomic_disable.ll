; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_overlay.c_meson_overlay_atomic_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_overlay.c_meson_overlay_atomic_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_plane_state = type { i32 }
%struct.meson_overlay = type { %struct.meson_drm* }
%struct.meson_drm = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@VPU_COMPATIBLE_G12A = common dso_local global i32 0, align 4
@VD1_BLEND_SRC_CTRL = common dso_local global i64 0, align 8
@VD2_BLEND_SRC_CTRL = common dso_local global i64 0, align 8
@VD1_IF0_GEN_REG = common dso_local global i64 0, align 8
@VD2_IF0_GEN_REG = common dso_local global i64 0, align 8
@VPP_VD1_POSTBLEND = common dso_local global i32 0, align 4
@VPP_VD1_PREBLEND = common dso_local global i32 0, align 4
@VPP_MISC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, %struct.drm_plane_state*)* @meson_overlay_atomic_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_overlay_atomic_disable(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.meson_overlay*, align 8
  %6 = alloca %struct.meson_drm*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %7 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %8 = call %struct.meson_overlay* @to_meson_overlay(%struct.drm_plane* %7)
  store %struct.meson_overlay* %8, %struct.meson_overlay** %5, align 8
  %9 = load %struct.meson_overlay*, %struct.meson_overlay** %5, align 8
  %10 = getelementptr inbounds %struct.meson_overlay, %struct.meson_overlay* %9, i32 0, i32 0
  %11 = load %struct.meson_drm*, %struct.meson_drm** %10, align 8
  store %struct.meson_drm* %11, %struct.meson_drm** %6, align 8
  %12 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.meson_drm*, %struct.meson_drm** %6, align 8
  %14 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load %struct.meson_drm*, %struct.meson_drm** %6, align 8
  %17 = load i32, i32* @VPU_COMPATIBLE_G12A, align 4
  %18 = call i64 @meson_vpu_is_compatible(%struct.meson_drm* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %51

20:                                               ; preds = %2
  %21 = load %struct.meson_drm*, %struct.meson_drm** %6, align 8
  %22 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @VD1_BLEND_SRC_CTRL, align 8
  %25 = call i64 @_REG(i64 %24)
  %26 = add nsw i64 %23, %25
  %27 = call i32 @writel_relaxed(i32 0, i64 %26)
  %28 = load %struct.meson_drm*, %struct.meson_drm** %6, align 8
  %29 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @VD2_BLEND_SRC_CTRL, align 8
  %32 = call i64 @_REG(i64 %31)
  %33 = add nsw i64 %30, %32
  %34 = call i32 @writel_relaxed(i32 0, i64 %33)
  %35 = load %struct.meson_drm*, %struct.meson_drm** %6, align 8
  %36 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @VD1_IF0_GEN_REG, align 8
  %39 = add nsw i64 %38, 6064
  %40 = call i64 @_REG(i64 %39)
  %41 = add nsw i64 %37, %40
  %42 = call i32 @writel_relaxed(i32 0, i64 %41)
  %43 = load %struct.meson_drm*, %struct.meson_drm** %6, align 8
  %44 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @VD2_IF0_GEN_REG, align 8
  %47 = add nsw i64 %46, 6064
  %48 = call i64 @_REG(i64 %47)
  %49 = add nsw i64 %45, %48
  %50 = call i32 @writel_relaxed(i32 0, i64 %49)
  br label %62

51:                                               ; preds = %2
  %52 = load i32, i32* @VPP_VD1_POSTBLEND, align 4
  %53 = load i32, i32* @VPP_VD1_PREBLEND, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.meson_drm*, %struct.meson_drm** %6, align 8
  %56 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @VPP_MISC, align 8
  %59 = call i64 @_REG(i64 %58)
  %60 = add nsw i64 %57, %59
  %61 = call i32 @writel_bits_relaxed(i32 %54, i32 0, i64 %60)
  br label %62

62:                                               ; preds = %51, %20
  ret void
}

declare dso_local %struct.meson_overlay* @to_meson_overlay(%struct.drm_plane*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local i64 @meson_vpu_is_compatible(%struct.meson_drm*, i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i64 @_REG(i64) #1

declare dso_local i32 @writel_bits_relaxed(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
