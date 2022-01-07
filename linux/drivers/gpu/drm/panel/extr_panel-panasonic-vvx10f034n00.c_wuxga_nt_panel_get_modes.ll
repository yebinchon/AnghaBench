; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-panasonic-vvx10f034n00.c_wuxga_nt_panel_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-panasonic-vvx10f034n00.c_wuxga_nt_panel_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.drm_panel = type { %struct.TYPE_7__*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.drm_display_mode = type { i32 }

@default_mode = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to add mode %ux%ux@%u\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @wuxga_nt_panel_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wuxga_nt_panel_get_modes(%struct.drm_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_panel*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_panel* %0, %struct.drm_panel** %3, align 8
  %5 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %6 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %5, i32 0, i32 1
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %8 = call %struct.drm_display_mode* @drm_mode_duplicate(%struct.TYPE_8__* %7, %struct.TYPE_9__* @default_mode)
  store %struct.drm_display_mode* %8, %struct.drm_display_mode** %4, align 8
  %9 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %10 = icmp ne %struct.drm_display_mode* %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %1
  %12 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %13 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %12, i32 0, i32 1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @default_mode, i32 0, i32 2), align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @default_mode, i32 0, i32 1), align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @default_mode, i32 0, i32 0), align 4
  %20 = call i32 @dev_err(i32 %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %41

23:                                               ; preds = %1
  %24 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %25 = call i32 @drm_mode_set_name(%struct.drm_display_mode* %24)
  %26 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %27 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %30 = call i32 @drm_mode_probed_add(%struct.TYPE_7__* %28, %struct.drm_display_mode* %29)
  %31 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %32 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i32 217, i32* %35, align 4
  %36 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %37 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  store i32 136, i32* %40, align 4
  store i32 1, i32* %2, align 4
  br label %41

41:                                               ; preds = %23, %11
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.drm_display_mode* @drm_mode_duplicate(%struct.TYPE_8__*, %struct.TYPE_9__*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @drm_mode_set_name(%struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.TYPE_7__*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
