; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-novatek-nt39016.c_nt39016_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-novatek-nt39016.c_nt39016_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { i32, %struct.drm_connector* }
%struct.drm_connector = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.nt39016 = type { %struct.nt39016_panel_info* }
%struct.nt39016_panel_info = type { i32, i32, i32, i32, i32 }
%struct.drm_display_mode = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@DRM_MODE_TYPE_DRIVER = common dso_local global i32 0, align 4
@DRM_MODE_TYPE_PREFERRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @nt39016_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nt39016_get_modes(%struct.drm_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_panel*, align 8
  %4 = alloca %struct.nt39016*, align 8
  %5 = alloca %struct.nt39016_panel_info*, align 8
  %6 = alloca %struct.drm_connector*, align 8
  %7 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_panel* %0, %struct.drm_panel** %3, align 8
  %8 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %9 = call %struct.nt39016* @to_nt39016(%struct.drm_panel* %8)
  store %struct.nt39016* %9, %struct.nt39016** %4, align 8
  %10 = load %struct.nt39016*, %struct.nt39016** %4, align 8
  %11 = getelementptr inbounds %struct.nt39016, %struct.nt39016* %10, i32 0, i32 0
  %12 = load %struct.nt39016_panel_info*, %struct.nt39016_panel_info** %11, align 8
  store %struct.nt39016_panel_info* %12, %struct.nt39016_panel_info** %5, align 8
  %13 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %14 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %13, i32 0, i32 1
  %15 = load %struct.drm_connector*, %struct.drm_connector** %14, align 8
  store %struct.drm_connector* %15, %struct.drm_connector** %6, align 8
  %16 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %17 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.nt39016_panel_info*, %struct.nt39016_panel_info** %5, align 8
  %20 = getelementptr inbounds %struct.nt39016_panel_info, %struct.nt39016_panel_info* %19, i32 0, i32 4
  %21 = call %struct.drm_display_mode* @drm_mode_duplicate(i32 %18, i32* %20)
  store %struct.drm_display_mode* %21, %struct.drm_display_mode** %7, align 8
  %22 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %23 = icmp ne %struct.drm_display_mode* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %64

27:                                               ; preds = %1
  %28 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %29 = call i32 @drm_mode_set_name(%struct.drm_display_mode* %28)
  %30 = load i32, i32* @DRM_MODE_TYPE_DRIVER, align 4
  %31 = load i32, i32* @DRM_MODE_TYPE_PREFERRED, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %34 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %36 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %37 = call i32 @drm_mode_probed_add(%struct.drm_connector* %35, %struct.drm_display_mode* %36)
  %38 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %39 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 8, i32* %40, align 4
  %41 = load %struct.nt39016_panel_info*, %struct.nt39016_panel_info** %5, align 8
  %42 = getelementptr inbounds %struct.nt39016_panel_info, %struct.nt39016_panel_info* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %45 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 3
  store i32 %43, i32* %46, align 4
  %47 = load %struct.nt39016_panel_info*, %struct.nt39016_panel_info** %5, align 8
  %48 = getelementptr inbounds %struct.nt39016_panel_info, %struct.nt39016_panel_info* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %51 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  store i32 %49, i32* %52, align 4
  %53 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %54 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %53, i32 0, i32 0
  %55 = load %struct.nt39016_panel_info*, %struct.nt39016_panel_info** %5, align 8
  %56 = getelementptr inbounds %struct.nt39016_panel_info, %struct.nt39016_panel_info* %55, i32 0, i32 1
  %57 = call i32 @drm_display_info_set_bus_formats(%struct.TYPE_2__* %54, i32* %56, i32 1)
  %58 = load %struct.nt39016_panel_info*, %struct.nt39016_panel_info** %5, align 8
  %59 = getelementptr inbounds %struct.nt39016_panel_info, %struct.nt39016_panel_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %62 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 4
  store i32 1, i32* %2, align 4
  br label %64

64:                                               ; preds = %27, %24
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.nt39016* @to_nt39016(%struct.drm_panel*) #1

declare dso_local %struct.drm_display_mode* @drm_mode_duplicate(i32, i32*) #1

declare dso_local i32 @drm_mode_set_name(%struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

declare dso_local i32 @drm_display_info_set_bus_formats(%struct.TYPE_2__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
