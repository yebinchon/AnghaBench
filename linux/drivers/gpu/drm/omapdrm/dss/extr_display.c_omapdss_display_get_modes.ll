; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_display.c_omapdss_display_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_display.c_omapdss_display_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.videomode = type { i32 }
%struct.drm_display_mode = type { i32 }

@DRM_MODE_TYPE_DRIVER = common dso_local global i32 0, align 4
@DRM_MODE_TYPE_PREFERRED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omapdss_display_get_modes(%struct.drm_connector* %0, %struct.videomode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.videomode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.videomode* %1, %struct.videomode** %5, align 8
  %7 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %8 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.drm_display_mode* @drm_mode_create(i32 %9)
  store %struct.drm_display_mode* %10, %struct.drm_display_mode** %6, align 8
  %11 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %12 = icmp ne %struct.drm_display_mode* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %28

14:                                               ; preds = %2
  %15 = load %struct.videomode*, %struct.videomode** %5, align 8
  %16 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %17 = call i32 @drm_display_mode_from_videomode(%struct.videomode* %15, %struct.drm_display_mode* %16)
  %18 = load i32, i32* @DRM_MODE_TYPE_DRIVER, align 4
  %19 = load i32, i32* @DRM_MODE_TYPE_PREFERRED, align 4
  %20 = or i32 %18, %19
  %21 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %22 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %24 = call i32 @drm_mode_set_name(%struct.drm_display_mode* %23)
  %25 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %26 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %27 = call i32 @drm_mode_probed_add(%struct.drm_connector* %25, %struct.drm_display_mode* %26)
  store i32 1, i32* %3, align 4
  br label %28

28:                                               ; preds = %14, %13
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local %struct.drm_display_mode* @drm_mode_create(i32) #1

declare dso_local i32 @drm_display_mode_from_videomode(%struct.videomode*, %struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_set_name(%struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
