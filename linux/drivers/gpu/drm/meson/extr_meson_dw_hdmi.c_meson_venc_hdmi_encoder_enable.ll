; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_dw_hdmi.c_meson_venc_hdmi_encoder_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_dw_hdmi.c_meson_venc_hdmi_encoder_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.meson_dw_hdmi = type { %struct.meson_drm* }
%struct.meson_drm = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"VENCI\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"VENCP\00", align 1
@ENCI_VIDEO_EN = common dso_local global i32 0, align 4
@ENCP_VIDEO_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @meson_venc_hdmi_encoder_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_venc_hdmi_encoder_enable(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.meson_dw_hdmi*, align 8
  %4 = alloca %struct.meson_drm*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %5 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %6 = call %struct.meson_dw_hdmi* @encoder_to_meson_dw_hdmi(%struct.drm_encoder* %5)
  store %struct.meson_dw_hdmi* %6, %struct.meson_dw_hdmi** %3, align 8
  %7 = load %struct.meson_dw_hdmi*, %struct.meson_dw_hdmi** %3, align 8
  %8 = getelementptr inbounds %struct.meson_dw_hdmi, %struct.meson_dw_hdmi* %7, i32 0, i32 0
  %9 = load %struct.meson_drm*, %struct.meson_drm** %8, align 8
  store %struct.meson_drm* %9, %struct.meson_drm** %4, align 8
  %10 = load %struct.meson_drm*, %struct.meson_drm** %4, align 8
  %11 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %17 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load %struct.meson_drm*, %struct.meson_drm** %4, align 8
  %19 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %1
  %24 = load %struct.meson_drm*, %struct.meson_drm** %4, align 8
  %25 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @ENCI_VIDEO_EN, align 4
  %28 = call i64 @_REG(i32 %27)
  %29 = add nsw i64 %26, %28
  %30 = call i32 @writel_relaxed(i32 1, i64 %29)
  br label %39

31:                                               ; preds = %1
  %32 = load %struct.meson_drm*, %struct.meson_drm** %4, align 8
  %33 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* @ENCP_VIDEO_EN, align 4
  %36 = call i64 @_REG(i32 %35)
  %37 = add nsw i64 %34, %36
  %38 = call i32 @writel_relaxed(i32 1, i64 %37)
  br label %39

39:                                               ; preds = %31, %23
  ret void
}

declare dso_local %struct.meson_dw_hdmi* @encoder_to_meson_dw_hdmi(%struct.drm_encoder*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i8*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i64 @_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
