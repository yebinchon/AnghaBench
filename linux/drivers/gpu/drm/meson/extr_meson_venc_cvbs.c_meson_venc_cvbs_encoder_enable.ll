; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_venc_cvbs.c_meson_venc_cvbs_encoder_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_venc_cvbs.c_meson_venc_cvbs_encoder_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.meson_venc_cvbs = type { %struct.meson_drm* }
%struct.meson_drm = type { i32, i64 }

@VENC_VDAC_SEL_ATV_DMD = common dso_local global i32 0, align 4
@VENC_VDAC_DACSEL0 = common dso_local global i32 0, align 4
@VPU_COMPATIBLE_GXBB = common dso_local global i32 0, align 4
@HHI_VDAC_CNTL0 = common dso_local global i32 0, align 4
@HHI_VDAC_CNTL1 = common dso_local global i32 0, align 4
@VPU_COMPATIBLE_GXM = common dso_local global i32 0, align 4
@VPU_COMPATIBLE_GXL = common dso_local global i32 0, align 4
@VPU_COMPATIBLE_G12A = common dso_local global i32 0, align 4
@HHI_VDAC_CNTL0_G12A = common dso_local global i32 0, align 4
@HHI_VDAC_CNTL1_G12A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @meson_venc_cvbs_encoder_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_venc_cvbs_encoder_enable(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.meson_venc_cvbs*, align 8
  %4 = alloca %struct.meson_drm*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %5 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %6 = call %struct.meson_venc_cvbs* @encoder_to_meson_venc_cvbs(%struct.drm_encoder* %5)
  store %struct.meson_venc_cvbs* %6, %struct.meson_venc_cvbs** %3, align 8
  %7 = load %struct.meson_venc_cvbs*, %struct.meson_venc_cvbs** %3, align 8
  %8 = getelementptr inbounds %struct.meson_venc_cvbs, %struct.meson_venc_cvbs* %7, i32 0, i32 0
  %9 = load %struct.meson_drm*, %struct.meson_drm** %8, align 8
  store %struct.meson_drm* %9, %struct.meson_drm** %4, align 8
  %10 = load i32, i32* @VENC_VDAC_SEL_ATV_DMD, align 4
  %11 = load %struct.meson_drm*, %struct.meson_drm** %4, align 8
  %12 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* @VENC_VDAC_DACSEL0, align 4
  %15 = call i64 @_REG(i32 %14)
  %16 = add nsw i64 %13, %15
  %17 = call i32 @writel_bits_relaxed(i32 %10, i32 0, i64 %16)
  %18 = load %struct.meson_drm*, %struct.meson_drm** %4, align 8
  %19 = load i32, i32* @VPU_COMPATIBLE_GXBB, align 4
  %20 = call i64 @meson_vpu_is_compatible(%struct.meson_drm* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %1
  %23 = load %struct.meson_drm*, %struct.meson_drm** %4, align 8
  %24 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @HHI_VDAC_CNTL0, align 4
  %27 = call i32 @regmap_write(i32 %25, i32 %26, i32 1)
  %28 = load %struct.meson_drm*, %struct.meson_drm** %4, align 8
  %29 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @HHI_VDAC_CNTL1, align 4
  %32 = call i32 @regmap_write(i32 %30, i32 %31, i32 0)
  br label %72

33:                                               ; preds = %1
  %34 = load %struct.meson_drm*, %struct.meson_drm** %4, align 8
  %35 = load i32, i32* @VPU_COMPATIBLE_GXM, align 4
  %36 = call i64 @meson_vpu_is_compatible(%struct.meson_drm* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load %struct.meson_drm*, %struct.meson_drm** %4, align 8
  %40 = load i32, i32* @VPU_COMPATIBLE_GXL, align 4
  %41 = call i64 @meson_vpu_is_compatible(%struct.meson_drm* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %38, %33
  %44 = load %struct.meson_drm*, %struct.meson_drm** %4, align 8
  %45 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @HHI_VDAC_CNTL0, align 4
  %48 = call i32 @regmap_write(i32 %46, i32 %47, i32 983041)
  %49 = load %struct.meson_drm*, %struct.meson_drm** %4, align 8
  %50 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @HHI_VDAC_CNTL1, align 4
  %53 = call i32 @regmap_write(i32 %51, i32 %52, i32 0)
  br label %71

54:                                               ; preds = %38
  %55 = load %struct.meson_drm*, %struct.meson_drm** %4, align 8
  %56 = load i32, i32* @VPU_COMPATIBLE_G12A, align 4
  %57 = call i64 @meson_vpu_is_compatible(%struct.meson_drm* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %54
  %60 = load %struct.meson_drm*, %struct.meson_drm** %4, align 8
  %61 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @HHI_VDAC_CNTL0_G12A, align 4
  %64 = call i32 @regmap_write(i32 %62, i32 %63, i32 9461761)
  %65 = load %struct.meson_drm*, %struct.meson_drm** %4, align 8
  %66 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @HHI_VDAC_CNTL1_G12A, align 4
  %69 = call i32 @regmap_write(i32 %67, i32 %68, i32 0)
  br label %70

70:                                               ; preds = %59, %54
  br label %71

71:                                               ; preds = %70, %43
  br label %72

72:                                               ; preds = %71, %22
  ret void
}

declare dso_local %struct.meson_venc_cvbs* @encoder_to_meson_venc_cvbs(%struct.drm_encoder*) #1

declare dso_local i32 @writel_bits_relaxed(i32, i32, i64) #1

declare dso_local i64 @_REG(i32) #1

declare dso_local i64 @meson_vpu_is_compatible(%struct.meson_drm*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
