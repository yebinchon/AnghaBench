; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6d16d0.c_s6d16d0_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6d16d0.c_s6d16d0_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { i32, %struct.drm_connector* }
%struct.drm_connector = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.drm_display_mode = type { i32, i32, i32 }

@samsung_s6d16d0_mode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"bad mode or failed to add mode\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DRM_MODE_TYPE_DRIVER = common dso_local global i32 0, align 4
@DRM_MODE_TYPE_PREFERRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @s6d16d0_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s6d16d0_get_modes(%struct.drm_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_panel*, align 8
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_panel* %0, %struct.drm_panel** %3, align 8
  %6 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %7 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %6, i32 0, i32 1
  %8 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  store %struct.drm_connector* %8, %struct.drm_connector** %4, align 8
  %9 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %10 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.drm_display_mode* @drm_mode_duplicate(i32 %11, i32* @samsung_s6d16d0_mode)
  store %struct.drm_display_mode* %12, %struct.drm_display_mode** %5, align 8
  %13 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %14 = icmp ne %struct.drm_display_mode* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %42

19:                                               ; preds = %1
  %20 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %21 = call i32 @drm_mode_set_name(%struct.drm_display_mode* %20)
  %22 = load i32, i32* @DRM_MODE_TYPE_DRIVER, align 4
  %23 = load i32, i32* @DRM_MODE_TYPE_PREFERRED, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %26 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %28 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %31 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 4
  %33 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %34 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %37 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  %39 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %40 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %41 = call i32 @drm_mode_probed_add(%struct.drm_connector* %39, %struct.drm_display_mode* %40)
  store i32 1, i32* %2, align 4
  br label %42

42:                                               ; preds = %19, %15
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.drm_display_mode* @drm_mode_duplicate(i32, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @drm_mode_set_name(%struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
