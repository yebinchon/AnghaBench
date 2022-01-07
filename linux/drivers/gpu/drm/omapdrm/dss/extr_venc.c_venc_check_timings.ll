; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_venc.c_venc_check_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_venc.c_venc_check_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i32 }
%struct.drm_display_mode = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"venc_check_timings\0A\00", align 1
@omap_dss_pal_mode = common dso_local global i32 0, align 4
@omap_dss_ntsc_mode = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CRTC_INTERLACE_HALVE_V = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dss_device*, %struct.drm_display_mode*)* @venc_check_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venc_check_timings(%struct.omap_dss_device* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_dss_device*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %6 = call i32 @DSSDBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %8 = call i32 @venc_get_videomode(%struct.drm_display_mode* %7)
  switch i32 %8, label %15 [
    i32 128, label %9
    i32 129, label %12
  ]

9:                                                ; preds = %2
  %10 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %11 = call i32 @drm_mode_copy(%struct.drm_display_mode* %10, i32* @omap_dss_pal_mode)
  br label %18

12:                                               ; preds = %2
  %13 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %14 = call i32 @drm_mode_copy(%struct.drm_display_mode* %13, i32* @omap_dss_ntsc_mode)
  br label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %24

18:                                               ; preds = %12, %9
  %19 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %20 = load i32, i32* @CRTC_INTERLACE_HALVE_V, align 4
  %21 = call i32 @drm_mode_set_crtcinfo(%struct.drm_display_mode* %19, i32 %20)
  %22 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %23 = call i32 @drm_mode_set_name(%struct.drm_display_mode* %22)
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %18, %15
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @DSSDBG(i8*) #1

declare dso_local i32 @venc_get_videomode(%struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_copy(%struct.drm_display_mode*, i32*) #1

declare dso_local i32 @drm_mode_set_crtcinfo(%struct.drm_display_mode*, i32) #1

declare dso_local i32 @drm_mode_set_name(%struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
