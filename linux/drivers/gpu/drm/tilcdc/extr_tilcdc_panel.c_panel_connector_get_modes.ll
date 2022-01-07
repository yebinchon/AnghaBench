; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tilcdc/extr_tilcdc_panel.c_panel_connector_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tilcdc/extr_tilcdc_panel.c_panel_connector_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.panel_connector = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.display_timings* }
%struct.display_timings = type { i32, i32 }
%struct.drm_display_mode = type { i32 }
%struct.videomode = type { i32 }

@DRM_MODE_TYPE_DRIVER = common dso_local global i32 0, align 4
@DRM_MODE_TYPE_PREFERRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @panel_connector_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @panel_connector_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.panel_connector*, align 8
  %5 = alloca %struct.display_timings*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_display_mode*, align 8
  %8 = alloca %struct.videomode, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %9 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %10 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %9, i32 0, i32 0
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %3, align 8
  %12 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %13 = call %struct.panel_connector* @to_panel_connector(%struct.drm_connector* %12)
  store %struct.panel_connector* %13, %struct.panel_connector** %4, align 8
  %14 = load %struct.panel_connector*, %struct.panel_connector** %4, align 8
  %15 = getelementptr inbounds %struct.panel_connector, %struct.panel_connector* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.display_timings*, %struct.display_timings** %17, align 8
  store %struct.display_timings* %18, %struct.display_timings** %5, align 8
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %56, %1
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.display_timings*, %struct.display_timings** %5, align 8
  %22 = getelementptr inbounds %struct.display_timings, %struct.display_timings* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %59

25:                                               ; preds = %19
  %26 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %27 = call %struct.drm_display_mode* @drm_mode_create(%struct.drm_device* %26)
  store %struct.drm_display_mode* %27, %struct.drm_display_mode** %7, align 8
  %28 = load %struct.display_timings*, %struct.display_timings** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @videomode_from_timings(%struct.display_timings* %28, %struct.videomode* %8, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %59

33:                                               ; preds = %25
  %34 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %35 = call i32 @drm_display_mode_from_videomode(%struct.videomode* %8, %struct.drm_display_mode* %34)
  %36 = load i32, i32* @DRM_MODE_TYPE_DRIVER, align 4
  %37 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %38 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.display_timings*, %struct.display_timings** %5, align 8
  %40 = getelementptr inbounds %struct.display_timings, %struct.display_timings* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %33
  %45 = load i32, i32* @DRM_MODE_TYPE_PREFERRED, align 4
  %46 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %47 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %44, %33
  %51 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %52 = call i32 @drm_mode_set_name(%struct.drm_display_mode* %51)
  %53 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %54 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %55 = call i32 @drm_mode_probed_add(%struct.drm_connector* %53, %struct.drm_display_mode* %54)
  br label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %19

59:                                               ; preds = %32, %19
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local %struct.panel_connector* @to_panel_connector(%struct.drm_connector*) #1

declare dso_local %struct.drm_display_mode* @drm_mode_create(%struct.drm_device*) #1

declare dso_local i64 @videomode_from_timings(%struct.display_timings*, %struct.videomode*, i32) #1

declare dso_local i32 @drm_display_mode_from_videomode(%struct.videomode*, %struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_set_name(%struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
