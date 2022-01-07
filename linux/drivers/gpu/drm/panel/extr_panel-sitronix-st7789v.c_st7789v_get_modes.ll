; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sitronix-st7789v.c_st7789v_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sitronix-st7789v.c_st7789v_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.drm_panel = type { %struct.drm_connector*, %struct.TYPE_6__* }
%struct.drm_connector = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.drm_display_mode = type { i32 }

@default_mode = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to add mode %ux%ux@%u\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@DRM_MODE_TYPE_DRIVER = common dso_local global i32 0, align 4
@DRM_MODE_TYPE_PREFERRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @st7789v_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st7789v_get_modes(%struct.drm_panel* %0) #0 {
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
  %10 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %9, i32 0, i32 1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = call %struct.drm_display_mode* @drm_mode_duplicate(%struct.TYPE_6__* %11, %struct.TYPE_7__* @default_mode)
  store %struct.drm_display_mode* %12, %struct.drm_display_mode** %5, align 8
  %13 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %14 = icmp ne %struct.drm_display_mode* %13, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %1
  %16 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %17 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %16, i32 0, i32 1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @default_mode, i32 0, i32 2), align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @default_mode, i32 0, i32 1), align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @default_mode, i32 0, i32 0), align 4
  %24 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %48

27:                                               ; preds = %1
  %28 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %29 = call i32 @drm_mode_set_name(%struct.drm_display_mode* %28)
  %30 = load i32, i32* @DRM_MODE_TYPE_DRIVER, align 4
  %31 = load i32, i32* @DRM_MODE_TYPE_PREFERRED, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %34 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %36 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %37 = call i32 @drm_mode_probed_add(%struct.drm_connector* %35, %struct.drm_display_mode* %36)
  %38 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %39 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %38, i32 0, i32 0
  %40 = load %struct.drm_connector*, %struct.drm_connector** %39, align 8
  %41 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i32 61, i32* %42, align 4
  %43 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %44 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %43, i32 0, i32 0
  %45 = load %struct.drm_connector*, %struct.drm_connector** %44, align 8
  %46 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  store i32 103, i32* %47, align 4
  store i32 1, i32* %2, align 4
  br label %48

48:                                               ; preds = %27, %15
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.drm_display_mode* @drm_mode_duplicate(%struct.TYPE_6__*, %struct.TYPE_7__*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @drm_mode_set_name(%struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
