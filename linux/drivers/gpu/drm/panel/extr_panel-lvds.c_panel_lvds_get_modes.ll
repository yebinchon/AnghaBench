; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-lvds.c_panel_lvds_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-lvds.c_panel_lvds_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { i32 }
%struct.panel_lvds = type { i64, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.drm_connector* }
%struct.drm_connector = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.drm_display_mode = type { i32 }

@DRM_MODE_TYPE_DRIVER = common dso_local global i32 0, align 4
@DRM_MODE_TYPE_PREFERRED = common dso_local global i32 0, align 4
@DRM_BUS_FLAG_DATA_LSB_TO_MSB = common dso_local global i32 0, align 4
@DRM_BUS_FLAG_DATA_MSB_TO_LSB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @panel_lvds_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @panel_lvds_get_modes(%struct.drm_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_panel*, align 8
  %4 = alloca %struct.panel_lvds*, align 8
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_panel* %0, %struct.drm_panel** %3, align 8
  %7 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %8 = call %struct.panel_lvds* @to_panel_lvds(%struct.drm_panel* %7)
  store %struct.panel_lvds* %8, %struct.panel_lvds** %4, align 8
  %9 = load %struct.panel_lvds*, %struct.panel_lvds** %4, align 8
  %10 = getelementptr inbounds %struct.panel_lvds, %struct.panel_lvds* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load %struct.drm_connector*, %struct.drm_connector** %11, align 8
  store %struct.drm_connector* %12, %struct.drm_connector** %5, align 8
  %13 = load %struct.panel_lvds*, %struct.panel_lvds** %4, align 8
  %14 = getelementptr inbounds %struct.panel_lvds, %struct.panel_lvds* %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.drm_display_mode* @drm_mode_create(i32 %16)
  store %struct.drm_display_mode* %17, %struct.drm_display_mode** %6, align 8
  %18 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %19 = icmp ne %struct.drm_display_mode* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %66

21:                                               ; preds = %1
  %22 = load %struct.panel_lvds*, %struct.panel_lvds** %4, align 8
  %23 = getelementptr inbounds %struct.panel_lvds, %struct.panel_lvds* %22, i32 0, i32 4
  %24 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %25 = call i32 @drm_display_mode_from_videomode(i32* %23, %struct.drm_display_mode* %24)
  %26 = load i32, i32* @DRM_MODE_TYPE_DRIVER, align 4
  %27 = load i32, i32* @DRM_MODE_TYPE_PREFERRED, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %30 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %34 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %35 = call i32 @drm_mode_probed_add(%struct.drm_connector* %33, %struct.drm_display_mode* %34)
  %36 = load %struct.panel_lvds*, %struct.panel_lvds** %4, align 8
  %37 = getelementptr inbounds %struct.panel_lvds, %struct.panel_lvds* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %40 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  store i32 %38, i32* %41, align 4
  %42 = load %struct.panel_lvds*, %struct.panel_lvds** %4, align 8
  %43 = getelementptr inbounds %struct.panel_lvds, %struct.panel_lvds* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %46 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 4
  %48 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %49 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %48, i32 0, i32 0
  %50 = load %struct.panel_lvds*, %struct.panel_lvds** %4, align 8
  %51 = getelementptr inbounds %struct.panel_lvds, %struct.panel_lvds* %50, i32 0, i32 1
  %52 = call i32 @drm_display_info_set_bus_formats(%struct.TYPE_4__* %49, i32* %51, i32 1)
  %53 = load %struct.panel_lvds*, %struct.panel_lvds** %4, align 8
  %54 = getelementptr inbounds %struct.panel_lvds, %struct.panel_lvds* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %21
  %58 = load i32, i32* @DRM_BUS_FLAG_DATA_LSB_TO_MSB, align 4
  br label %61

59:                                               ; preds = %21
  %60 = load i32, i32* @DRM_BUS_FLAG_DATA_MSB_TO_LSB, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  %63 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %64 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 4
  store i32 1, i32* %2, align 4
  br label %66

66:                                               ; preds = %61, %20
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.panel_lvds* @to_panel_lvds(%struct.drm_panel*) #1

declare dso_local %struct.drm_display_mode* @drm_mode_create(i32) #1

declare dso_local i32 @drm_display_mode_from_videomode(i32*, %struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

declare dso_local i32 @drm_display_info_set_bus_formats(%struct.TYPE_4__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
