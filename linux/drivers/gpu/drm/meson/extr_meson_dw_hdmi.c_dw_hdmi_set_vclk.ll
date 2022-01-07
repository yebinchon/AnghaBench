; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_dw_hdmi.c_dw_hdmi_set_vclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_dw_hdmi.c_dw_hdmi_set_vclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_dw_hdmi = type { %struct.meson_drm* }
%struct.meson_drm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_display_mode = type { i32, i32 }

@MESON_VCLK_TARGET_DMT = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_DBLCLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"vclk:%d venc=%d hdmi=%d enci=%d\0A\00", align 1
@MESON_VCLK_TARGET_HDMI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.meson_dw_hdmi*, %struct.drm_display_mode*)* @dw_hdmi_set_vclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_hdmi_set_vclk(%struct.meson_dw_hdmi* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.meson_dw_hdmi*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.meson_drm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.meson_dw_hdmi* %0, %struct.meson_dw_hdmi** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %10 = load %struct.meson_dw_hdmi*, %struct.meson_dw_hdmi** %3, align 8
  %11 = getelementptr inbounds %struct.meson_dw_hdmi, %struct.meson_dw_hdmi* %10, i32 0, i32 0
  %12 = load %struct.meson_drm*, %struct.meson_drm** %11, align 8
  store %struct.meson_drm* %12, %struct.meson_drm** %5, align 8
  %13 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %14 = call i32 @drm_match_cea_mode(%struct.drm_display_mode* %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %16 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load %struct.meson_drm*, %struct.meson_drm** %5, align 8
  %22 = load i32, i32* @MESON_VCLK_TARGET_DMT, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @meson_vclk_setup(%struct.meson_drm* %21, i32 %22, i32 %23, i32 %24, i32 %25, i32 0)
  br label %78

27:                                               ; preds = %2
  %28 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %29 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @DRM_MODE_FLAG_DBLCLK, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* %7, align 4
  %36 = mul i32 %35, 2
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %34, %27
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i64 @meson_venc_hdmi_venc_repeat(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* %8, align 4
  %45 = mul i32 %44, 2
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %43, %37
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @max(i32 %47, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %51 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @DRM_MODE_FLAG_DBLCLK, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %46
  %57 = load i32, i32* %8, align 4
  %58 = udiv i32 %57, 2
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %56, %46
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.meson_drm*, %struct.meson_drm** %5, align 8
  %64 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %61, i32 %62, i32 %66)
  %68 = load %struct.meson_drm*, %struct.meson_drm** %5, align 8
  %69 = load i32, i32* @MESON_VCLK_TARGET_HDMI, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.meson_drm*, %struct.meson_drm** %5, align 8
  %74 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @meson_vclk_setup(%struct.meson_drm* %68, i32 %69, i32 %70, i32 %71, i32 %72, i32 %76)
  br label %78

78:                                               ; preds = %59, %20
  ret void
}

declare dso_local i32 @drm_match_cea_mode(%struct.drm_display_mode*) #1

declare dso_local i32 @meson_vclk_setup(%struct.meson_drm*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @meson_venc_hdmi_venc_repeat(i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
