; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-ilitek-ili9881c.c_ili9881c_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-ilitek-ili9881c.c_ili9881c_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.drm_panel = type { %struct.drm_connector*, i32 }
%struct.drm_connector = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ili9881c = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.drm_display_mode = type { i32 }

@bananapi_default_mode = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to add mode %ux%ux@%u\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@DRM_MODE_TYPE_DRIVER = common dso_local global i32 0, align 4
@DRM_MODE_TYPE_PREFERRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @ili9881c_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ili9881c_get_modes(%struct.drm_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_panel*, align 8
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.ili9881c*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_panel* %0, %struct.drm_panel** %3, align 8
  %7 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %8 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %7, i32 0, i32 0
  %9 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  store %struct.drm_connector* %9, %struct.drm_connector** %4, align 8
  %10 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %11 = call %struct.ili9881c* @panel_to_ili9881c(%struct.drm_panel* %10)
  store %struct.ili9881c* %11, %struct.ili9881c** %5, align 8
  %12 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %13 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.drm_display_mode* @drm_mode_duplicate(i32 %14, %struct.TYPE_7__* @bananapi_default_mode)
  store %struct.drm_display_mode* %15, %struct.drm_display_mode** %6, align 8
  %16 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %17 = icmp ne %struct.drm_display_mode* %16, null
  br i1 %17, label %29, label %18

18:                                               ; preds = %1
  %19 = load %struct.ili9881c*, %struct.ili9881c** %5, align 8
  %20 = getelementptr inbounds %struct.ili9881c, %struct.ili9881c* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @bananapi_default_mode, i32 0, i32 2), align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @bananapi_default_mode, i32 0, i32 1), align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @bananapi_default_mode, i32 0, i32 0), align 4
  %26 = call i32 @dev_err(i32* %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24, i32 %25)
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %50

29:                                               ; preds = %1
  %30 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %31 = call i32 @drm_mode_set_name(%struct.drm_display_mode* %30)
  %32 = load i32, i32* @DRM_MODE_TYPE_DRIVER, align 4
  %33 = load i32, i32* @DRM_MODE_TYPE_PREFERRED, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %36 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %38 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %39 = call i32 @drm_mode_probed_add(%struct.drm_connector* %37, %struct.drm_display_mode* %38)
  %40 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %41 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %40, i32 0, i32 0
  %42 = load %struct.drm_connector*, %struct.drm_connector** %41, align 8
  %43 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i32 62, i32* %44, align 4
  %45 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %46 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %45, i32 0, i32 0
  %47 = load %struct.drm_connector*, %struct.drm_connector** %46, align 8
  %48 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  store i32 110, i32* %49, align 4
  store i32 1, i32* %2, align 4
  br label %50

50:                                               ; preds = %29, %18
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.ili9881c* @panel_to_ili9881c(%struct.drm_panel*) #1

declare dso_local %struct.drm_display_mode* @drm_mode_duplicate(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @drm_mode_set_name(%struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
