; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_venc_cvbs.c_meson_venc_cvbs_encoder_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_venc_cvbs.c_meson_venc_cvbs_encoder_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_cvbs_mode = type { i32, i32 }
%struct.drm_encoder = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.meson_venc_cvbs = type { %struct.meson_drm* }
%struct.meson_drm = type { i32 }

@MESON_CVBS_MODES_COUNT = common dso_local global i32 0, align 4
@meson_cvbs_modes = common dso_local global %struct.meson_cvbs_mode* null, align 8
@MESON_VCLK_TARGET_CVBS = common dso_local global i32 0, align 4
@MESON_VCLK_CVBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @meson_venc_cvbs_encoder_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_venc_cvbs_encoder_mode_set(%struct.drm_encoder* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.meson_venc_cvbs*, align 8
  %8 = alloca %struct.meson_drm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.meson_cvbs_mode*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %12 = call %struct.meson_venc_cvbs* @encoder_to_meson_venc_cvbs(%struct.drm_encoder* %11)
  store %struct.meson_venc_cvbs* %12, %struct.meson_venc_cvbs** %7, align 8
  %13 = load %struct.meson_venc_cvbs*, %struct.meson_venc_cvbs** %7, align 8
  %14 = getelementptr inbounds %struct.meson_venc_cvbs, %struct.meson_venc_cvbs* %13, i32 0, i32 0
  %15 = load %struct.meson_drm*, %struct.meson_drm** %14, align 8
  store %struct.meson_drm* %15, %struct.meson_drm** %8, align 8
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %43, %3
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @MESON_CVBS_MODES_COUNT, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %46

20:                                               ; preds = %16
  %21 = load %struct.meson_cvbs_mode*, %struct.meson_cvbs_mode** @meson_cvbs_modes, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.meson_cvbs_mode, %struct.meson_cvbs_mode* %21, i64 %23
  store %struct.meson_cvbs_mode* %24, %struct.meson_cvbs_mode** %10, align 8
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %26 = load %struct.meson_cvbs_mode*, %struct.meson_cvbs_mode** %10, align 8
  %27 = getelementptr inbounds %struct.meson_cvbs_mode, %struct.meson_cvbs_mode* %26, i32 0, i32 1
  %28 = call i64 @drm_mode_equal(%struct.drm_display_mode* %25, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %20
  %31 = load %struct.meson_drm*, %struct.meson_drm** %8, align 8
  %32 = load %struct.meson_cvbs_mode*, %struct.meson_cvbs_mode** %10, align 8
  %33 = getelementptr inbounds %struct.meson_cvbs_mode, %struct.meson_cvbs_mode* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @meson_venci_cvbs_mode_set(%struct.meson_drm* %31, i32 %34)
  %36 = load %struct.meson_drm*, %struct.meson_drm** %8, align 8
  %37 = load i32, i32* @MESON_VCLK_TARGET_CVBS, align 4
  %38 = load i32, i32* @MESON_VCLK_CVBS, align 4
  %39 = load i32, i32* @MESON_VCLK_CVBS, align 4
  %40 = load i32, i32* @MESON_VCLK_CVBS, align 4
  %41 = call i32 @meson_vclk_setup(%struct.meson_drm* %36, i32 %37, i32 %38, i32 %39, i32 %40, i32 1)
  br label %46

42:                                               ; preds = %20
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %9, align 4
  br label %16

46:                                               ; preds = %30, %16
  ret void
}

declare dso_local %struct.meson_venc_cvbs* @encoder_to_meson_venc_cvbs(%struct.drm_encoder*) #1

declare dso_local i64 @drm_mode_equal(%struct.drm_display_mode*, i32*) #1

declare dso_local i32 @meson_venci_cvbs_mode_set(%struct.meson_drm*, i32) #1

declare dso_local i32 @meson_vclk_setup(%struct.meson_drm*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
