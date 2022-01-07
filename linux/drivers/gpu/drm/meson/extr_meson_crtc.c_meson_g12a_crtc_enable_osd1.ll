; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_crtc.c_meson_g12a_crtc_enable_osd1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_crtc.c_meson_g12a_crtc_enable_osd1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_drm = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@VIU_OSD_BLEND_DIN0_SCOPE_H = common dso_local global i32 0, align 4
@VIU_OSD_BLEND_DIN0_SCOPE_V = common dso_local global i32 0, align 4
@VIU_OSD_BLEND_BLEND0_SIZE = common dso_local global i32 0, align 4
@VIU_OSD_BLEND_BLEND1_SIZE = common dso_local global i32 0, align 4
@OSD1_BLEND_SRC_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.meson_drm*)* @meson_g12a_crtc_enable_osd1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_g12a_crtc_enable_osd1(%struct.meson_drm* %0) #0 {
  %2 = alloca %struct.meson_drm*, align 8
  store %struct.meson_drm* %0, %struct.meson_drm** %2, align 8
  %3 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %4 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %8 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i32, i32* @VIU_OSD_BLEND_DIN0_SCOPE_H, align 4
  %11 = call i64 @_REG(i32 %10)
  %12 = add nsw i64 %9, %11
  %13 = call i32 @writel_relaxed(i32 %6, i64 %12)
  %14 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %15 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %19 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @VIU_OSD_BLEND_DIN0_SCOPE_V, align 4
  %22 = call i64 @_REG(i32 %21)
  %23 = add nsw i64 %20, %22
  %24 = call i32 @writel_relaxed(i32 %17, i64 %23)
  %25 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %26 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %30 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* @VIU_OSD_BLEND_BLEND0_SIZE, align 4
  %33 = call i64 @_REG(i32 %32)
  %34 = add nsw i64 %31, %33
  %35 = call i32 @writel_relaxed(i32 %28, i64 %34)
  %36 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %37 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %41 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* @VIU_OSD_BLEND_BLEND1_SIZE, align 4
  %44 = call i64 @_REG(i32 %43)
  %45 = add nsw i64 %42, %44
  %46 = call i32 @writel_relaxed(i32 %39, i64 %45)
  %47 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %48 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* @OSD1_BLEND_SRC_CTRL, align 4
  %51 = call i64 @_REG(i32 %50)
  %52 = add nsw i64 %49, %51
  %53 = call i32 @writel_bits_relaxed(i32 768, i32 768, i64 %52)
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i64 @_REG(i32) #1

declare dso_local i32 @writel_bits_relaxed(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
