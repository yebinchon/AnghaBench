; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_plane.c_meson_plane_atomic_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_plane.c_meson_plane_atomic_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_plane_state = type { i32 }
%struct.meson_plane = type { i32, %struct.meson_drm* }
%struct.meson_drm = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@VPU_COMPATIBLE_G12A = common dso_local global i32 0, align 4
@VIU_OSD1_POSTBLD_SRC_OSD1 = common dso_local global i32 0, align 4
@OSD1_BLEND_SRC_CTRL = common dso_local global i32 0, align 4
@VPP_OSD1_POSTBLEND = common dso_local global i32 0, align 4
@VPP_MISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, %struct.drm_plane_state*)* @meson_plane_atomic_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_plane_atomic_disable(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.meson_plane*, align 8
  %6 = alloca %struct.meson_drm*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %7 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %8 = call %struct.meson_plane* @to_meson_plane(%struct.drm_plane* %7)
  store %struct.meson_plane* %8, %struct.meson_plane** %5, align 8
  %9 = load %struct.meson_plane*, %struct.meson_plane** %5, align 8
  %10 = getelementptr inbounds %struct.meson_plane, %struct.meson_plane* %9, i32 0, i32 1
  %11 = load %struct.meson_drm*, %struct.meson_drm** %10, align 8
  store %struct.meson_drm* %11, %struct.meson_drm** %6, align 8
  %12 = load %struct.meson_drm*, %struct.meson_drm** %6, align 8
  %13 = load i32, i32* @VPU_COMPATIBLE_G12A, align 4
  %14 = call i64 @meson_vpu_is_compatible(%struct.meson_drm* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load i32, i32* @VIU_OSD1_POSTBLD_SRC_OSD1, align 4
  %18 = load %struct.meson_drm*, %struct.meson_drm** %6, align 8
  %19 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @OSD1_BLEND_SRC_CTRL, align 4
  %22 = call i64 @_REG(i32 %21)
  %23 = add nsw i64 %20, %22
  %24 = call i32 @writel_bits_relaxed(i32 %17, i32 0, i64 %23)
  br label %34

25:                                               ; preds = %2
  %26 = load i32, i32* @VPP_OSD1_POSTBLEND, align 4
  %27 = load %struct.meson_drm*, %struct.meson_drm** %6, align 8
  %28 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @VPP_MISC, align 4
  %31 = call i64 @_REG(i32 %30)
  %32 = add nsw i64 %29, %31
  %33 = call i32 @writel_bits_relaxed(i32 %26, i32 0, i64 %32)
  br label %34

34:                                               ; preds = %25, %16
  %35 = load %struct.meson_plane*, %struct.meson_plane** %5, align 8
  %36 = getelementptr inbounds %struct.meson_plane, %struct.meson_plane* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = load %struct.meson_drm*, %struct.meson_drm** %6, align 8
  %38 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  ret void
}

declare dso_local %struct.meson_plane* @to_meson_plane(%struct.drm_plane*) #1

declare dso_local i64 @meson_vpu_is_compatible(%struct.meson_drm*, i32) #1

declare dso_local i32 @writel_bits_relaxed(i32, i32, i64) #1

declare dso_local i64 @_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
