; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_venc_cvbs.c_meson_venc_cvbs_encoder_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_venc_cvbs.c_meson_venc_cvbs_encoder_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.meson_venc_cvbs = type { %struct.meson_drm* }
%struct.meson_drm = type { i32 }

@VPU_COMPATIBLE_G12A = common dso_local global i32 0, align 4
@HHI_VDAC_CNTL0_G12A = common dso_local global i32 0, align 4
@HHI_VDAC_CNTL1_G12A = common dso_local global i32 0, align 4
@HHI_VDAC_CNTL0 = common dso_local global i32 0, align 4
@HHI_VDAC_CNTL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @meson_venc_cvbs_encoder_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_venc_cvbs_encoder_disable(%struct.drm_encoder* %0) #0 {
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
  %10 = load %struct.meson_drm*, %struct.meson_drm** %4, align 8
  %11 = load i32, i32* @VPU_COMPATIBLE_G12A, align 4
  %12 = call i64 @meson_vpu_is_compatible(%struct.meson_drm* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %1
  %15 = load %struct.meson_drm*, %struct.meson_drm** %4, align 8
  %16 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @HHI_VDAC_CNTL0_G12A, align 4
  %19 = call i32 @regmap_write(i32 %17, i32 %18, i32 0)
  %20 = load %struct.meson_drm*, %struct.meson_drm** %4, align 8
  %21 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @HHI_VDAC_CNTL1_G12A, align 4
  %24 = call i32 @regmap_write(i32 %22, i32 %23, i32 0)
  br label %36

25:                                               ; preds = %1
  %26 = load %struct.meson_drm*, %struct.meson_drm** %4, align 8
  %27 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @HHI_VDAC_CNTL0, align 4
  %30 = call i32 @regmap_write(i32 %28, i32 %29, i32 0)
  %31 = load %struct.meson_drm*, %struct.meson_drm** %4, align 8
  %32 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @HHI_VDAC_CNTL1, align 4
  %35 = call i32 @regmap_write(i32 %33, i32 %34, i32 8)
  br label %36

36:                                               ; preds = %25, %14
  ret void
}

declare dso_local %struct.meson_venc_cvbs* @encoder_to_meson_venc_cvbs(%struct.drm_encoder*) #1

declare dso_local i64 @meson_vpu_is_compatible(%struct.meson_drm*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
