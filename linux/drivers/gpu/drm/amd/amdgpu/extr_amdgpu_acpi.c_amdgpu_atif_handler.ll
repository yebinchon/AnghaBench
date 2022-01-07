; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_acpi.c_amdgpu_atif_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_acpi.c_amdgpu_atif_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_6__*, %struct.amdgpu_atif* }
%struct.TYPE_6__ = type { i32 }
%struct.amdgpu_atif = type { %struct.amdgpu_encoder*, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.amdgpu_encoder = type { %struct.amdgpu_encoder_atom_dig* }
%struct.amdgpu_encoder_atom_dig = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.acpi_bus_event = type { i64, i32 }
%struct.atif_sbios_requests = type { i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"event, device_class = %s, type = %#x\0A\00", align 1
@ACPI_VIDEO_CLASS = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@ACPI_VIDEO_NOTIFY_PROBE = common dso_local global i64 0, align 8
@NOTIFY_BAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"ATIF: %d pending SBIOS requests\0A\00", align 1
@ATIF_PANEL_BRIGHTNESS_CHANGE_REQUEST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Changing brightness to %d\0A\00", align 1
@ATIF_DGPU_DISPLAY_EVENT = common dso_local global i32 0, align 4
@AMD_IS_PX = common dso_local global i32 0, align 4
@BACKLIGHT_UPDATE_HOTKEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.acpi_bus_event*)* @amdgpu_atif_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_atif_handler(%struct.amdgpu_device* %0, %struct.acpi_bus_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.acpi_bus_event*, align 8
  %6 = alloca %struct.amdgpu_atif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.atif_sbios_requests, align 4
  %9 = alloca %struct.amdgpu_encoder*, align 8
  %10 = alloca %struct.amdgpu_encoder_atom_dig*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store %struct.acpi_bus_event* %1, %struct.acpi_bus_event** %5, align 8
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 2
  %13 = load %struct.amdgpu_atif*, %struct.amdgpu_atif** %12, align 8
  store %struct.amdgpu_atif* %13, %struct.amdgpu_atif** %6, align 8
  %14 = load %struct.acpi_bus_event*, %struct.acpi_bus_event** %5, align 8
  %15 = getelementptr inbounds %struct.acpi_bus_event, %struct.acpi_bus_event* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.acpi_bus_event*, %struct.acpi_bus_event** %5, align 8
  %18 = getelementptr inbounds %struct.acpi_bus_event, %struct.acpi_bus_event* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 (i8*, i32, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %16, i64 %19)
  %21 = load %struct.acpi_bus_event*, %struct.acpi_bus_event** %5, align 8
  %22 = getelementptr inbounds %struct.acpi_bus_event, %struct.acpi_bus_event* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @ACPI_VIDEO_CLASS, align 4
  %25 = call i64 @strcmp(i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %28, i32* %3, align 4
  br label %141

29:                                               ; preds = %2
  %30 = load %struct.amdgpu_atif*, %struct.amdgpu_atif** %6, align 8
  %31 = icmp ne %struct.amdgpu_atif* %30, null
  br i1 %31, label %32, label %47

32:                                               ; preds = %29
  %33 = load %struct.amdgpu_atif*, %struct.amdgpu_atif** %6, align 8
  %34 = getelementptr inbounds %struct.amdgpu_atif, %struct.amdgpu_atif* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %32
  %39 = load %struct.acpi_bus_event*, %struct.acpi_bus_event** %5, align 8
  %40 = getelementptr inbounds %struct.acpi_bus_event, %struct.acpi_bus_event* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.amdgpu_atif*, %struct.amdgpu_atif** %6, align 8
  %43 = getelementptr inbounds %struct.amdgpu_atif, %struct.amdgpu_atif* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %41, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %38, %32, %29
  %48 = load %struct.acpi_bus_event*, %struct.acpi_bus_event** %5, align 8
  %49 = getelementptr inbounds %struct.acpi_bus_event, %struct.acpi_bus_event* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @ACPI_VIDEO_NOTIFY_PROBE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @NOTIFY_BAD, align 4
  store i32 %54, i32* %3, align 4
  br label %141

55:                                               ; preds = %47
  %56 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %56, i32* %3, align 4
  br label %141

57:                                               ; preds = %38
  %58 = load %struct.amdgpu_atif*, %struct.amdgpu_atif** %6, align 8
  %59 = getelementptr inbounds %struct.amdgpu_atif, %struct.amdgpu_atif* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %139

63:                                               ; preds = %57
  %64 = load %struct.amdgpu_atif*, %struct.amdgpu_atif** %6, align 8
  %65 = call i32 @amdgpu_atif_get_sbios_requests(%struct.amdgpu_atif* %64, %struct.atif_sbios_requests* %8)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp sle i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* @NOTIFY_BAD, align 4
  store i32 %69, i32* %3, align 4
  br label %141

70:                                               ; preds = %63
  %71 = load i32, i32* %7, align 4
  %72 = call i32 (i8*, i32, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = getelementptr inbounds %struct.atif_sbios_requests, %struct.atif_sbios_requests* %8, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @ATIF_PANEL_BRIGHTNESS_CHANGE_REQUEST, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %101

78:                                               ; preds = %70
  %79 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %80 = call i32 @amdgpu_device_has_dc_support(%struct.amdgpu_device* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %101, label %82

82:                                               ; preds = %78
  %83 = load %struct.amdgpu_atif*, %struct.amdgpu_atif** %6, align 8
  %84 = getelementptr inbounds %struct.amdgpu_atif, %struct.amdgpu_atif* %83, i32 0, i32 0
  %85 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %84, align 8
  store %struct.amdgpu_encoder* %85, %struct.amdgpu_encoder** %9, align 8
  %86 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %9, align 8
  %87 = icmp ne %struct.amdgpu_encoder* %86, null
  br i1 %87, label %88, label %100

88:                                               ; preds = %82
  %89 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %9, align 8
  %90 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %89, i32 0, i32 0
  %91 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %90, align 8
  store %struct.amdgpu_encoder_atom_dig* %91, %struct.amdgpu_encoder_atom_dig** %10, align 8
  %92 = getelementptr inbounds %struct.atif_sbios_requests, %struct.atif_sbios_requests* %8, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (i8*, i32, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  %95 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %96 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %9, align 8
  %97 = getelementptr inbounds %struct.atif_sbios_requests, %struct.atif_sbios_requests* %8, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @amdgpu_display_backlight_set_level(%struct.amdgpu_device* %95, %struct.amdgpu_encoder* %96, i32 %98)
  br label %100

100:                                              ; preds = %88, %82
  br label %101

101:                                              ; preds = %100, %78, %70
  %102 = getelementptr inbounds %struct.atif_sbios_requests, %struct.atif_sbios_requests* %8, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @ATIF_DGPU_DISPLAY_EVENT, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %138

107:                                              ; preds = %101
  %108 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %109 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @AMD_IS_PX, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %137

114:                                              ; preds = %107
  %115 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %116 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %115, i32 0, i32 1
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @pm_runtime_get_sync(i32 %119)
  %121 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %122 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %121, i32 0, i32 1
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = call i32 @drm_helper_hpd_irq_event(%struct.TYPE_6__* %123)
  %125 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %126 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %125, i32 0, i32 1
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @pm_runtime_mark_last_busy(i32 %129)
  %131 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %132 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %131, i32 0, i32 1
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @pm_runtime_put_autosuspend(i32 %135)
  br label %137

137:                                              ; preds = %114, %107
  br label %138

138:                                              ; preds = %137, %101
  br label %139

139:                                              ; preds = %138, %57
  %140 = load i32, i32* @NOTIFY_BAD, align 4
  store i32 %140, i32* %3, align 4
  br label %141

141:                                              ; preds = %139, %68, %55, %53, %27
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, ...) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @amdgpu_atif_get_sbios_requests(%struct.amdgpu_atif*, %struct.atif_sbios_requests*) #1

declare dso_local i32 @amdgpu_device_has_dc_support(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_display_backlight_set_level(%struct.amdgpu_device*, %struct.amdgpu_encoder*, i32) #1

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
