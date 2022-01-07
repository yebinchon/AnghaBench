; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-jdi-lt070me05000.c_jdi_panel_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-jdi-lt070me05000.c_jdi_panel_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.drm_panel = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.drm_display_mode = type { i32 }
%struct.jdi_panel = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.device }
%struct.device = type { i32 }

@default_mode = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to add mode %ux%ux@%u\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @jdi_panel_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jdi_panel_get_modes(%struct.drm_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_panel*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.jdi_panel*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.drm_panel* %0, %struct.drm_panel** %3, align 8
  %7 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %8 = call %struct.jdi_panel* @to_jdi_panel(%struct.drm_panel* %7)
  store %struct.jdi_panel* %8, %struct.jdi_panel** %5, align 8
  %9 = load %struct.jdi_panel*, %struct.jdi_panel** %5, align 8
  %10 = getelementptr inbounds %struct.jdi_panel, %struct.jdi_panel* %9, i32 0, i32 0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %14 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.drm_display_mode* @drm_mode_duplicate(i32 %15, %struct.TYPE_9__* @default_mode)
  store %struct.drm_display_mode* %16, %struct.drm_display_mode** %4, align 8
  %17 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %18 = icmp ne %struct.drm_display_mode* %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @default_mode, i32 0, i32 2), align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @default_mode, i32 0, i32 1), align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @default_mode, i32 0, i32 0), align 4
  %24 = call i32 @dev_err(%struct.device* %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %45

27:                                               ; preds = %1
  %28 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %29 = call i32 @drm_mode_set_name(%struct.drm_display_mode* %28)
  %30 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %31 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %34 = call i32 @drm_mode_probed_add(%struct.TYPE_8__* %32, %struct.drm_display_mode* %33)
  %35 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %36 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i32 95, i32* %39, align 4
  %40 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %41 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  store i32 151, i32* %44, align 4
  store i32 1, i32* %2, align 4
  br label %45

45:                                               ; preds = %27, %19
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.jdi_panel* @to_jdi_panel(%struct.drm_panel*) #1

declare dso_local %struct.drm_display_mode* @drm_mode_duplicate(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32, i32) #1

declare dso_local i32 @drm_mode_set_name(%struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.TYPE_8__*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
