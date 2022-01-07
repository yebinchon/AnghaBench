; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_venc.c_venc_set_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_venc.c_venc_set_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.venc_device = type { i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"venc_set_timings\0A\00", align 1
@venc_config_pal_trm = common dso_local global i32 0, align 4
@venc_config_ntsc_trm = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_dss_device*, %struct.drm_display_mode*)* @venc_set_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @venc_set_timings(%struct.omap_dss_device* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.omap_dss_device*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.venc_device*, align 8
  %6 = alloca i32, align 4
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %7 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %8 = call %struct.venc_device* @dssdev_to_venc(%struct.omap_dss_device* %7)
  store %struct.venc_device* %8, %struct.venc_device** %5, align 8
  %9 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %10 = call i32 @venc_get_videomode(%struct.drm_display_mode* %9)
  store i32 %10, i32* %6, align 4
  %11 = call i32 @DSSDBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.venc_device*, %struct.venc_device** %5, align 8
  %13 = getelementptr inbounds %struct.venc_device, %struct.venc_device* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %16 [
    i32 128, label %18
    i32 129, label %21
  ]

16:                                               ; preds = %2
  %17 = call i32 @WARN_ON_ONCE(i32 1)
  br label %18

18:                                               ; preds = %2, %16
  %19 = load %struct.venc_device*, %struct.venc_device** %5, align 8
  %20 = getelementptr inbounds %struct.venc_device, %struct.venc_device* %19, i32 0, i32 2
  store i32* @venc_config_pal_trm, i32** %20, align 8
  br label %24

21:                                               ; preds = %2
  %22 = load %struct.venc_device*, %struct.venc_device** %5, align 8
  %23 = getelementptr inbounds %struct.venc_device, %struct.venc_device* %22, i32 0, i32 2
  store i32* @venc_config_ntsc_trm, i32** %23, align 8
  br label %24

24:                                               ; preds = %21, %18
  %25 = load %struct.venc_device*, %struct.venc_device** %5, align 8
  %26 = getelementptr inbounds %struct.venc_device, %struct.venc_device* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dispc_set_tv_pclk(i32 %29, i32 13500000)
  %31 = load %struct.venc_device*, %struct.venc_device** %5, align 8
  %32 = getelementptr inbounds %struct.venc_device, %struct.venc_device* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  ret void
}

declare dso_local %struct.venc_device* @dssdev_to_venc(%struct.omap_dss_device*) #1

declare dso_local i32 @venc_get_videomode(%struct.drm_display_mode*) #1

declare dso_local i32 @DSSDBG(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @dispc_set_tv_pclk(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
