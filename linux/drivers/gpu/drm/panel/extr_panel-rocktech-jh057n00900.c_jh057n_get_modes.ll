; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-rocktech-jh057n00900.c_jh057n_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-rocktech-jh057n00900.c_jh057n_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.drm_panel = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.jh057n = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32 }

@default_mode = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to add mode %ux%u@%u\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@DRM_MODE_TYPE_DRIVER = common dso_local global i32 0, align 4
@DRM_MODE_TYPE_PREFERRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @jh057n_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jh057n_get_modes(%struct.drm_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_panel*, align 8
  %4 = alloca %struct.jh057n*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_panel* %0, %struct.drm_panel** %3, align 8
  %6 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %7 = call %struct.jh057n* @panel_to_jh057n(%struct.drm_panel* %6)
  store %struct.jh057n* %7, %struct.jh057n** %4, align 8
  %8 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %9 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.drm_display_mode* @drm_mode_duplicate(i32 %10, %struct.TYPE_7__* @default_mode)
  store %struct.drm_display_mode* %11, %struct.drm_display_mode** %5, align 8
  %12 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %13 = icmp ne %struct.drm_display_mode* %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %1
  %15 = load %struct.jh057n*, %struct.jh057n** %4, align 8
  %16 = getelementptr inbounds %struct.jh057n, %struct.jh057n* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @default_mode, i32 0, i32 2), align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @default_mode, i32 0, i32 1), align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @default_mode, i32 0, i32 0), align 4
  %21 = call i32 @DRM_DEV_ERROR(i32 %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19, i32 %20)
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %53

24:                                               ; preds = %1
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %26 = call i32 @drm_mode_set_name(%struct.drm_display_mode* %25)
  %27 = load i32, i32* @DRM_MODE_TYPE_DRIVER, align 4
  %28 = load i32, i32* @DRM_MODE_TYPE_PREFERRED, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %31 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %33 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %36 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  store i32 %34, i32* %39, align 4
  %40 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %41 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %44 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i32 %42, i32* %47, align 4
  %48 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %49 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %52 = call i32 @drm_mode_probed_add(%struct.TYPE_6__* %50, %struct.drm_display_mode* %51)
  store i32 1, i32* %2, align 4
  br label %53

53:                                               ; preds = %24, %14
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.jh057n* @panel_to_jh057n(%struct.drm_panel*) #1

declare dso_local %struct.drm_display_mode* @drm_mode_duplicate(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @drm_mode_set_name(%struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.TYPE_6__*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
