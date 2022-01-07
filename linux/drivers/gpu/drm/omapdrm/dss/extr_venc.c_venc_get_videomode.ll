; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_venc.c_venc_get_videomode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_venc.c_venc_get_videomode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.drm_display_mode = type { i32, i64, i64, i64 }

@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@VENC_MODE_UNKNOWN = common dso_local global i32 0, align 4
@omap_dss_pal_mode = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@VENC_MODE_PAL = common dso_local global i32 0, align 4
@omap_dss_ntsc_mode = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@VENC_MODE_NTSC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_display_mode*)* @venc_get_videomode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venc_get_videomode(%struct.drm_display_mode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_display_mode* %0, %struct.drm_display_mode** %3, align 8
  %4 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %5 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @VENC_MODE_UNKNOWN, align 4
  store i32 %11, i32* %2, align 4
  br label %54

12:                                               ; preds = %1
  %13 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %14 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @omap_dss_pal_mode, i32 0, i32 0), align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %12
  %19 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %20 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @omap_dss_pal_mode, i32 0, i32 1), align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %26 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @omap_dss_pal_mode, i32 0, i32 2), align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @VENC_MODE_PAL, align 4
  store i32 %31, i32* %2, align 4
  br label %54

32:                                               ; preds = %24, %18, %12
  %33 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %34 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @omap_dss_ntsc_mode, i32 0, i32 0), align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %32
  %39 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %40 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @omap_dss_ntsc_mode, i32 0, i32 1), align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %46 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @omap_dss_ntsc_mode, i32 0, i32 2), align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* @VENC_MODE_NTSC, align 4
  store i32 %51, i32* %2, align 4
  br label %54

52:                                               ; preds = %44, %38, %32
  %53 = load i32, i32* @VENC_MODE_UNKNOWN, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %50, %30, %10
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
