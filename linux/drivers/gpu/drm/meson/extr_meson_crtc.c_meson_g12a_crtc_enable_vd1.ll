; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_crtc.c_meson_g12a_crtc_enable_vd1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_crtc.c_meson_g12a_crtc_enable_vd1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_drm = type { i64 }

@VD_BLEND_PREBLD_SRC_VD1 = common dso_local global i32 0, align 4
@VD_BLEND_PREBLD_PREMULT_EN = common dso_local global i32 0, align 4
@VD_BLEND_POSTBLD_SRC_VD1 = common dso_local global i32 0, align 4
@VD_BLEND_POSTBLD_PREMULT_EN = common dso_local global i32 0, align 4
@VD1_BLEND_SRC_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.meson_drm*)* @meson_g12a_crtc_enable_vd1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_g12a_crtc_enable_vd1(%struct.meson_drm* %0) #0 {
  %2 = alloca %struct.meson_drm*, align 8
  store %struct.meson_drm* %0, %struct.meson_drm** %2, align 8
  %3 = load i32, i32* @VD_BLEND_PREBLD_SRC_VD1, align 4
  %4 = load i32, i32* @VD_BLEND_PREBLD_PREMULT_EN, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @VD_BLEND_POSTBLD_SRC_VD1, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @VD_BLEND_POSTBLD_PREMULT_EN, align 4
  %9 = or i32 %7, %8
  %10 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %11 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* @VD1_BLEND_SRC_CTRL, align 4
  %14 = call i64 @_REG(i32 %13)
  %15 = add nsw i64 %12, %14
  %16 = call i32 @writel_relaxed(i32 %9, i64 %15)
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i64 @_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
