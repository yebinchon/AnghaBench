; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-simple.c_panel_simple_get_timings_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-simple.c_panel_simple_get_timings_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panel_simple = type { %struct.TYPE_8__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, %struct.display_timing* }
%struct.display_timing = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.drm_device*, %struct.drm_connector* }
%struct.drm_device = type { i32 }
%struct.drm_connector = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.videomode = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"failed to add mode %ux%u\0A\00", align 1
@DRM_MODE_TYPE_DRIVER = common dso_local global i32 0, align 4
@DRM_MODE_TYPE_PREFERRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.panel_simple*)* @panel_simple_get_timings_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @panel_simple_get_timings_modes(%struct.panel_simple* %0) #0 {
  %2 = alloca %struct.panel_simple*, align 8
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.display_timing*, align 8
  %9 = alloca %struct.videomode, align 4
  store %struct.panel_simple* %0, %struct.panel_simple** %2, align 8
  %10 = load %struct.panel_simple*, %struct.panel_simple** %2, align 8
  %11 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load %struct.drm_connector*, %struct.drm_connector** %12, align 8
  store %struct.drm_connector* %13, %struct.drm_connector** %3, align 8
  %14 = load %struct.panel_simple*, %struct.panel_simple** %2, align 8
  %15 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.drm_device*, %struct.drm_device** %16, align 8
  store %struct.drm_device* %17, %struct.drm_device** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %80, %1
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.panel_simple*, %struct.panel_simple** %2, align 8
  %21 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ult i32 %19, %24
  br i1 %25, label %26, label %83

26:                                               ; preds = %18
  %27 = load %struct.panel_simple*, %struct.panel_simple** %2, align 8
  %28 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load %struct.display_timing*, %struct.display_timing** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %31, i64 %33
  store %struct.display_timing* %34, %struct.display_timing** %8, align 8
  %35 = load %struct.display_timing*, %struct.display_timing** %8, align 8
  %36 = call i32 @videomode_from_timing(%struct.display_timing* %35, %struct.videomode* %9)
  %37 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %38 = call %struct.drm_display_mode* @drm_mode_create(%struct.drm_device* %37)
  store %struct.drm_display_mode* %38, %struct.drm_display_mode** %5, align 8
  %39 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %40 = icmp ne %struct.drm_display_mode* %39, null
  br i1 %40, label %54, label %41

41:                                               ; preds = %26
  %42 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %43 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.display_timing*, %struct.display_timing** %8, align 8
  %46 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.display_timing*, %struct.display_timing** %8, align 8
  %50 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_err(i32 %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %52)
  br label %80

54:                                               ; preds = %26
  %55 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %56 = call i32 @drm_display_mode_from_videomode(%struct.videomode* %9, %struct.drm_display_mode* %55)
  %57 = load i32, i32* @DRM_MODE_TYPE_DRIVER, align 4
  %58 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %59 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load %struct.panel_simple*, %struct.panel_simple** %2, align 8
  %63 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %62, i32 0, i32 0
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %74

68:                                               ; preds = %54
  %69 = load i32, i32* @DRM_MODE_TYPE_PREFERRED, align 4
  %70 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %71 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %68, %54
  %75 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %76 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %77 = call i32 @drm_mode_probed_add(%struct.drm_connector* %75, %struct.drm_display_mode* %76)
  %78 = load i32, i32* %7, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %74, %41
  %81 = load i32, i32* %6, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %18

83:                                               ; preds = %18
  %84 = load i32, i32* %7, align 4
  ret i32 %84
}

declare dso_local i32 @videomode_from_timing(%struct.display_timing*, %struct.videomode*) #1

declare dso_local %struct.drm_display_mode* @drm_mode_create(%struct.drm_device*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @drm_display_mode_from_videomode(%struct.videomode*, %struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
