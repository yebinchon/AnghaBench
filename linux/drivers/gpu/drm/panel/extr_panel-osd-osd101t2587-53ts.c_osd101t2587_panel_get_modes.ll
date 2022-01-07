; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-osd-osd101t2587-53ts.c_osd101t2587_panel_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-osd-osd101t2587-53ts.c_osd101t2587_panel_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.osd101t2587_panel = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.drm_display_mode = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"failed to add mode %ux%ux@%u\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @osd101t2587_panel_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @osd101t2587_panel_get_modes(%struct.drm_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_panel*, align 8
  %4 = alloca %struct.osd101t2587_panel*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_panel* %0, %struct.drm_panel** %3, align 8
  %6 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %7 = call %struct.osd101t2587_panel* @ti_osd_panel(%struct.drm_panel* %6)
  store %struct.osd101t2587_panel* %7, %struct.osd101t2587_panel** %4, align 8
  %8 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %9 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %8, i32 0, i32 1
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = load %struct.osd101t2587_panel*, %struct.osd101t2587_panel** %4, align 8
  %12 = getelementptr inbounds %struct.osd101t2587_panel, %struct.osd101t2587_panel* %11, i32 0, i32 0
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = call %struct.drm_display_mode* @drm_mode_duplicate(%struct.TYPE_7__* %10, %struct.TYPE_8__* %13)
  store %struct.drm_display_mode* %14, %struct.drm_display_mode** %5, align 8
  %15 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %16 = icmp ne %struct.drm_display_mode* %15, null
  br i1 %16, label %41, label %17

17:                                               ; preds = %1
  %18 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %19 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %18, i32 0, i32 1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.osd101t2587_panel*, %struct.osd101t2587_panel** %4, align 8
  %24 = getelementptr inbounds %struct.osd101t2587_panel, %struct.osd101t2587_panel* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.osd101t2587_panel*, %struct.osd101t2587_panel** %4, align 8
  %29 = getelementptr inbounds %struct.osd101t2587_panel, %struct.osd101t2587_panel* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.osd101t2587_panel*, %struct.osd101t2587_panel** %4, align 8
  %34 = getelementptr inbounds %struct.osd101t2587_panel, %struct.osd101t2587_panel* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %32, i32 %37)
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %59

41:                                               ; preds = %1
  %42 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %43 = call i32 @drm_mode_set_name(%struct.drm_display_mode* %42)
  %44 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %45 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %48 = call i32 @drm_mode_probed_add(%struct.TYPE_6__* %46, %struct.drm_display_mode* %47)
  %49 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %50 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i32 217, i32* %53, align 4
  %54 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %55 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  store i32 136, i32* %58, align 4
  store i32 1, i32* %2, align 4
  br label %59

59:                                               ; preds = %41, %17
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.osd101t2587_panel* @ti_osd_panel(%struct.drm_panel*) #1

declare dso_local %struct.drm_display_mode* @drm_mode_duplicate(%struct.TYPE_7__*, %struct.TYPE_8__*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @drm_mode_set_name(%struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.TYPE_6__*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
