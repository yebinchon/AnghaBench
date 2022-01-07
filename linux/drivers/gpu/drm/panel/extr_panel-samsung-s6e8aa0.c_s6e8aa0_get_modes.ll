; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6e8aa0.c_s6e8aa0_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6e8aa0.c_s6e8aa0_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { %struct.drm_connector* }
%struct.drm_connector = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.s6e8aa0 = type { i32, i32, i32 }
%struct.drm_display_mode = type { i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"failed to create a new display mode\0A\00", align 1
@DRM_MODE_TYPE_DRIVER = common dso_local global i32 0, align 4
@DRM_MODE_TYPE_PREFERRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @s6e8aa0_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s6e8aa0_get_modes(%struct.drm_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_panel*, align 8
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.s6e8aa0*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_panel* %0, %struct.drm_panel** %3, align 8
  %7 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %8 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %7, i32 0, i32 0
  %9 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  store %struct.drm_connector* %9, %struct.drm_connector** %4, align 8
  %10 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %11 = call %struct.s6e8aa0* @panel_to_s6e8aa0(%struct.drm_panel* %10)
  store %struct.s6e8aa0* %11, %struct.s6e8aa0** %5, align 8
  %12 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %13 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.drm_display_mode* @drm_mode_create(i32 %14)
  store %struct.drm_display_mode* %15, %struct.drm_display_mode** %6, align 8
  %16 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %17 = icmp ne %struct.drm_display_mode* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  %19 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %55

20:                                               ; preds = %1
  %21 = load %struct.s6e8aa0*, %struct.s6e8aa0** %5, align 8
  %22 = getelementptr inbounds %struct.s6e8aa0, %struct.s6e8aa0* %21, i32 0, i32 2
  %23 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %24 = call i32 @drm_display_mode_from_videomode(i32* %22, %struct.drm_display_mode* %23)
  %25 = load %struct.s6e8aa0*, %struct.s6e8aa0** %5, align 8
  %26 = getelementptr inbounds %struct.s6e8aa0, %struct.s6e8aa0* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %29 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.s6e8aa0*, %struct.s6e8aa0** %5, align 8
  %31 = getelementptr inbounds %struct.s6e8aa0, %struct.s6e8aa0* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %34 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %36 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %39 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %42 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %45 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* @DRM_MODE_TYPE_DRIVER, align 4
  %48 = load i32, i32* @DRM_MODE_TYPE_PREFERRED, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %51 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %53 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %54 = call i32 @drm_mode_probed_add(%struct.drm_connector* %52, %struct.drm_display_mode* %53)
  store i32 1, i32* %2, align 4
  br label %55

55:                                               ; preds = %20, %18
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.s6e8aa0* @panel_to_s6e8aa0(%struct.drm_panel*) #1

declare dso_local %struct.drm_display_mode* @drm_mode_create(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @drm_display_mode_from_videomode(i32*, %struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
