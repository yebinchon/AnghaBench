; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_venc.c_meson_venc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_venc.c_meson_venc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_drm = type { %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@VPU_COMPATIBLE_G12A = common dso_local global i32 0, align 4
@HHI_VDAC_CNTL0_G12A = common dso_local global i32 0, align 4
@HHI_VDAC_CNTL1_G12A = common dso_local global i32 0, align 4
@HHI_VDAC_CNTL0 = common dso_local global i32 0, align 4
@HHI_VDAC_CNTL1 = common dso_local global i32 0, align 4
@VENC_VDAC_SETTING = common dso_local global i32 0, align 4
@HHI_HDMI_PHY_CNTL0 = common dso_local global i32 0, align 4
@VPU_HDMI_ENCI_DATA_TO_HDMI = common dso_local global i32 0, align 4
@VPU_HDMI_ENCP_DATA_TO_HDMI = common dso_local global i32 0, align 4
@VPU_HDMI_SETTING = common dso_local global i32 0, align 4
@ENCI_VIDEO_EN = common dso_local global i32 0, align 4
@ENCP_VIDEO_EN = common dso_local global i32 0, align 4
@ENCL_VIDEO_EN = common dso_local global i32 0, align 4
@MESON_VENC_MODE_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @meson_venc_init(%struct.meson_drm* %0) #0 {
  %2 = alloca %struct.meson_drm*, align 8
  store %struct.meson_drm* %0, %struct.meson_drm** %2, align 8
  %3 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %4 = load i32, i32* @VPU_COMPATIBLE_G12A, align 4
  %5 = call i64 @meson_vpu_is_compatible(%struct.meson_drm* %3, i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %9 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @HHI_VDAC_CNTL0_G12A, align 4
  %12 = call i32 @regmap_write(i32 %10, i32 %11, i32 0)
  %13 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %14 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @HHI_VDAC_CNTL1_G12A, align 4
  %17 = call i32 @regmap_write(i32 %15, i32 %16, i32 8)
  br label %29

18:                                               ; preds = %1
  %19 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %20 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @HHI_VDAC_CNTL0, align 4
  %23 = call i32 @regmap_write(i32 %21, i32 %22, i32 0)
  %24 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %25 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @HHI_VDAC_CNTL1, align 4
  %28 = call i32 @regmap_write(i32 %26, i32 %27, i32 8)
  br label %29

29:                                               ; preds = %18, %7
  %30 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %31 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @VENC_VDAC_SETTING, align 4
  %34 = call i64 @_REG(i32 %33)
  %35 = add nsw i64 %32, %34
  %36 = call i32 @writel_relaxed(i32 255, i64 %35)
  %37 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %38 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @HHI_HDMI_PHY_CNTL0, align 4
  %41 = call i32 @regmap_write(i32 %39, i32 %40, i32 0)
  %42 = load i32, i32* @VPU_HDMI_ENCI_DATA_TO_HDMI, align 4
  %43 = load i32, i32* @VPU_HDMI_ENCP_DATA_TO_HDMI, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %46 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* @VPU_HDMI_SETTING, align 4
  %49 = call i64 @_REG(i32 %48)
  %50 = add nsw i64 %47, %49
  %51 = call i32 @writel_bits_relaxed(i32 %44, i32 0, i64 %50)
  %52 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %53 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* @ENCI_VIDEO_EN, align 4
  %56 = call i64 @_REG(i32 %55)
  %57 = add nsw i64 %54, %56
  %58 = call i32 @writel_relaxed(i32 0, i64 %57)
  %59 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %60 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* @ENCP_VIDEO_EN, align 4
  %63 = call i64 @_REG(i32 %62)
  %64 = add nsw i64 %61, %63
  %65 = call i32 @writel_relaxed(i32 0, i64 %64)
  %66 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %67 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* @ENCL_VIDEO_EN, align 4
  %70 = call i64 @_REG(i32 %69)
  %71 = add nsw i64 %68, %70
  %72 = call i32 @writel_relaxed(i32 0, i64 %71)
  %73 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %74 = call i32 @meson_venc_disable_vsync(%struct.meson_drm* %73)
  %75 = load i32, i32* @MESON_VENC_MODE_NONE, align 4
  %76 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %77 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 8
  ret void
}

declare dso_local i64 @meson_vpu_is_compatible(%struct.meson_drm*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i64 @_REG(i32) #1

declare dso_local i32 @writel_bits_relaxed(i32, i32, i64) #1

declare dso_local i32 @meson_venc_disable_vsync(%struct.meson_drm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
