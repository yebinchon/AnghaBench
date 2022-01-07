; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_acpi.c_radeon_atif_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_acpi.c_radeon_atif_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_6__*, i64, %struct.TYPE_5__*, %struct.radeon_atif }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.radeon_atif = type { %struct.radeon_encoder*, %struct.TYPE_4__ }
%struct.radeon_encoder = type { %struct.radeon_encoder_lvds* }
%struct.radeon_encoder_lvds = type { i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.acpi_bus_event = type { i64, i32 }
%struct.atif_sbios_requests = type { i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"event, device_class = %s, type = %#x\0A\00", align 1
@ACPI_VIDEO_CLASS = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"ATIF: %d pending SBIOS requests\0A\00", align 1
@ATIF_PANEL_BRIGHTNESS_CHANGE_REQUEST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Changing brightness to %d\0A\00", align 1
@ATIF_DGPU_DISPLAY_EVENT = common dso_local global i32 0, align 4
@RADEON_IS_PX = common dso_local global i32 0, align 4
@NOTIFY_BAD = common dso_local global i32 0, align 4
@BACKLIGHT_UPDATE_HOTKEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.acpi_bus_event*)* @radeon_atif_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_atif_handler(%struct.radeon_device* %0, %struct.acpi_bus_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.acpi_bus_event*, align 8
  %6 = alloca %struct.radeon_atif*, align 8
  %7 = alloca %struct.atif_sbios_requests, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.radeon_encoder*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.acpi_bus_event* %1, %struct.acpi_bus_event** %5, align 8
  %11 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %12 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %11, i32 0, i32 4
  store %struct.radeon_atif* %12, %struct.radeon_atif** %6, align 8
  %13 = load %struct.acpi_bus_event*, %struct.acpi_bus_event** %5, align 8
  %14 = getelementptr inbounds %struct.acpi_bus_event, %struct.acpi_bus_event* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.acpi_bus_event*, %struct.acpi_bus_event** %5, align 8
  %17 = getelementptr inbounds %struct.acpi_bus_event, %struct.acpi_bus_event* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 (i8*, i32, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %15, i64 %18)
  %20 = load %struct.acpi_bus_event*, %struct.acpi_bus_event** %5, align 8
  %21 = getelementptr inbounds %struct.acpi_bus_event, %struct.acpi_bus_event* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @ACPI_VIDEO_CLASS, align 4
  %24 = call i64 @strcmp(i32 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %27, i32* %3, align 4
  br label %123

28:                                               ; preds = %2
  %29 = load %struct.radeon_atif*, %struct.radeon_atif** %6, align 8
  %30 = getelementptr inbounds %struct.radeon_atif, %struct.radeon_atif* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = load %struct.acpi_bus_event*, %struct.acpi_bus_event** %5, align 8
  %36 = getelementptr inbounds %struct.acpi_bus_event, %struct.acpi_bus_event* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.radeon_atif*, %struct.radeon_atif** %6, align 8
  %39 = getelementptr inbounds %struct.radeon_atif, %struct.radeon_atif* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %37, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %34, %28
  %44 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %44, i32* %3, align 4
  br label %123

45:                                               ; preds = %34
  %46 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %47 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %46, i32 0, i32 3
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = call i32 @ACPI_HANDLE(i32* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @radeon_atif_get_sbios_requests(i32 %51, %struct.atif_sbios_requests* %7)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp sle i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %56, i32* %3, align 4
  br label %123

57:                                               ; preds = %45
  %58 = load i32, i32* %9, align 4
  %59 = call i32 (i8*, i32, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = getelementptr inbounds %struct.atif_sbios_requests, %struct.atif_sbios_requests* %7, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @ATIF_PANEL_BRIGHTNESS_CHANGE_REQUEST, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %57
  %66 = load %struct.radeon_atif*, %struct.radeon_atif** %6, align 8
  %67 = getelementptr inbounds %struct.radeon_atif, %struct.radeon_atif* %66, i32 0, i32 0
  %68 = load %struct.radeon_encoder*, %struct.radeon_encoder** %67, align 8
  store %struct.radeon_encoder* %68, %struct.radeon_encoder** %10, align 8
  %69 = load %struct.radeon_encoder*, %struct.radeon_encoder** %10, align 8
  %70 = icmp ne %struct.radeon_encoder* %69, null
  br i1 %70, label %71, label %80

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.atif_sbios_requests, %struct.atif_sbios_requests* %7, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i8*, i32, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  %75 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %76 = load %struct.radeon_encoder*, %struct.radeon_encoder** %10, align 8
  %77 = getelementptr inbounds %struct.atif_sbios_requests, %struct.atif_sbios_requests* %7, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @radeon_set_backlight_level(%struct.radeon_device* %75, %struct.radeon_encoder* %76, i32 %78)
  br label %80

80:                                               ; preds = %71, %65
  br label %81

81:                                               ; preds = %80, %57
  %82 = getelementptr inbounds %struct.atif_sbios_requests, %struct.atif_sbios_requests* %7, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @ATIF_DGPU_DISPLAY_EVENT, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %121

87:                                               ; preds = %81
  %88 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %89 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @RADEON_IS_PX, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %120

94:                                               ; preds = %87
  %95 = call i64 (...) @radeon_atpx_dgpu_req_power_for_displays()
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %120

97:                                               ; preds = %94
  %98 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %99 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %98, i32 0, i32 1
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @pm_runtime_get_sync(i32 %102)
  %104 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %105 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %104, i32 0, i32 1
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = call i32 @drm_helper_hpd_irq_event(%struct.TYPE_6__* %106)
  %108 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %109 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %108, i32 0, i32 1
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @pm_runtime_mark_last_busy(i32 %112)
  %114 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %115 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %114, i32 0, i32 1
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @pm_runtime_put_autosuspend(i32 %118)
  br label %120

120:                                              ; preds = %97, %94, %87
  br label %121

121:                                              ; preds = %120, %81
  %122 = load i32, i32* @NOTIFY_BAD, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %121, %55, %43, %26
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, ...) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @ACPI_HANDLE(i32*) #1

declare dso_local i32 @radeon_atif_get_sbios_requests(i32, %struct.atif_sbios_requests*) #1

declare dso_local i32 @radeon_set_backlight_level(%struct.radeon_device*, %struct.radeon_encoder*, i32) #1

declare dso_local i64 @radeon_atpx_dgpu_req_power_for_displays(...) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @drm_helper_hpd_irq_event(%struct.TYPE_6__*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
