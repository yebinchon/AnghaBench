; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-innolux-p079zca.c_innolux_panel_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-innolux-p079zca.c_innolux_panel_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { %struct.TYPE_9__*, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.innolux_panel = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__, %struct.drm_display_mode* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.drm_display_mode = type { i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"failed to add mode %ux%ux@%u\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @innolux_panel_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @innolux_panel_get_modes(%struct.drm_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_panel*, align 8
  %4 = alloca %struct.innolux_panel*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_panel* %0, %struct.drm_panel** %3, align 8
  %7 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %8 = call %struct.innolux_panel* @to_innolux_panel(%struct.drm_panel* %7)
  store %struct.innolux_panel* %8, %struct.innolux_panel** %4, align 8
  %9 = load %struct.innolux_panel*, %struct.innolux_panel** %4, align 8
  %10 = getelementptr inbounds %struct.innolux_panel, %struct.innolux_panel* %9, i32 0, i32 0
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  %13 = load %struct.drm_display_mode*, %struct.drm_display_mode** %12, align 8
  store %struct.drm_display_mode* %13, %struct.drm_display_mode** %5, align 8
  %14 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %15 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %14, i32 0, i32 1
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %18 = call %struct.drm_display_mode* @drm_mode_duplicate(%struct.TYPE_10__* %16, %struct.drm_display_mode* %17)
  store %struct.drm_display_mode* %18, %struct.drm_display_mode** %6, align 8
  %19 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %20 = icmp ne %struct.drm_display_mode* %19, null
  br i1 %20, label %39, label %21

21:                                               ; preds = %1
  %22 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %23 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %22, i32 0, i32 1
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %28 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %31 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %34 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @DRM_DEV_ERROR(i32 %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32, i32 %35)
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %79

39:                                               ; preds = %1
  %40 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %41 = call i32 @drm_mode_set_name(%struct.drm_display_mode* %40)
  %42 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %43 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %42, i32 0, i32 0
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %46 = call i32 @drm_mode_probed_add(%struct.TYPE_9__* %44, %struct.drm_display_mode* %45)
  %47 = load %struct.innolux_panel*, %struct.innolux_panel** %4, align 8
  %48 = getelementptr inbounds %struct.innolux_panel, %struct.innolux_panel* %47, i32 0, i32 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %54 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %53, i32 0, i32 0
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 2
  store i32 %52, i32* %57, align 4
  %58 = load %struct.innolux_panel*, %struct.innolux_panel** %4, align 8
  %59 = getelementptr inbounds %struct.innolux_panel, %struct.innolux_panel* %58, i32 0, i32 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %65 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %64, i32 0, i32 0
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  store i32 %63, i32* %68, align 4
  %69 = load %struct.innolux_panel*, %struct.innolux_panel** %4, align 8
  %70 = getelementptr inbounds %struct.innolux_panel, %struct.innolux_panel* %69, i32 0, i32 0
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %75 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %74, i32 0, i32 0
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  store i32 %73, i32* %78, align 4
  store i32 1, i32* %2, align 4
  br label %79

79:                                               ; preds = %39, %21
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.innolux_panel* @to_innolux_panel(%struct.drm_panel*) #1

declare dso_local %struct.drm_display_mode* @drm_mode_duplicate(%struct.TYPE_10__*, %struct.drm_display_mode*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @drm_mode_set_name(%struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.TYPE_9__*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
