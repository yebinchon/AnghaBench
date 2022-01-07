; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-raydium-rm67191.c_rad_panel_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-raydium-rm67191.c_rad_panel_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.drm_panel = type { %struct.drm_connector*, i32, i32 }
%struct.drm_connector = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.drm_display_mode = type { i32, i32, i32 }

@default_mode = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to add mode %ux%ux@%u\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@DRM_MODE_TYPE_DRIVER = common dso_local global i32 0, align 4
@DRM_MODE_TYPE_PREFERRED = common dso_local global i32 0, align 4
@rad_bus_flags = common dso_local global i32 0, align 4
@rad_bus_formats = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @rad_panel_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rad_panel_get_modes(%struct.drm_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_panel*, align 8
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_panel* %0, %struct.drm_panel** %3, align 8
  %6 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %7 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %6, i32 0, i32 0
  %8 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  store %struct.drm_connector* %8, %struct.drm_connector** %4, align 8
  %9 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %10 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.drm_display_mode* @drm_mode_duplicate(i32 %11, %struct.TYPE_4__* @default_mode)
  store %struct.drm_display_mode* %12, %struct.drm_display_mode** %5, align 8
  %13 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %14 = icmp ne %struct.drm_display_mode* %13, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %1
  %16 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %17 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @default_mode, i32 0, i32 2), align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @default_mode, i32 0, i32 1), align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @default_mode, i32 0, i32 0), align 4
  %22 = call i32 @DRM_DEV_ERROR(i32 %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20, i32 %21)
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %60

25:                                               ; preds = %1
  %26 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %27 = call i32 @drm_mode_set_name(%struct.drm_display_mode* %26)
  %28 = load i32, i32* @DRM_MODE_TYPE_DRIVER, align 4
  %29 = load i32, i32* @DRM_MODE_TYPE_PREFERRED, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %32 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %34 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %33, i32 0, i32 0
  %35 = load %struct.drm_connector*, %struct.drm_connector** %34, align 8
  %36 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %37 = call i32 @drm_mode_probed_add(%struct.drm_connector* %35, %struct.drm_display_mode* %36)
  %38 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %39 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %42 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  store i32 %40, i32* %43, align 4
  %44 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %45 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %48 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* @rad_bus_flags, align 4
  %51 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %52 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 4
  %54 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %55 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %54, i32 0, i32 0
  %56 = load i32, i32* @rad_bus_formats, align 4
  %57 = load i32, i32* @rad_bus_formats, align 4
  %58 = call i32 @ARRAY_SIZE(i32 %57)
  %59 = call i32 @drm_display_info_set_bus_formats(%struct.TYPE_5__* %55, i32 %56, i32 %58)
  store i32 1, i32* %2, align 4
  br label %60

60:                                               ; preds = %25, %15
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.drm_display_mode* @drm_mode_duplicate(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @drm_mode_set_name(%struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

declare dso_local i32 @drm_display_info_set_bus_formats(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
