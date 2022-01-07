; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-feiyang-fy07024di26a30d.c_feiyang_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-feiyang-fy07024di26a30d.c_feiyang_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.drm_panel = type { i32, %struct.drm_connector* }
%struct.drm_connector = type { i32 }
%struct.feiyang = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.drm_display_mode = type { i32 }

@feiyang_default_mode = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to add mode %ux%ux@%u\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @feiyang_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @feiyang_get_modes(%struct.drm_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_panel*, align 8
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.feiyang*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_panel* %0, %struct.drm_panel** %3, align 8
  %7 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %8 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %7, i32 0, i32 1
  %9 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  store %struct.drm_connector* %9, %struct.drm_connector** %4, align 8
  %10 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %11 = call %struct.feiyang* @panel_to_feiyang(%struct.drm_panel* %10)
  store %struct.feiyang* %11, %struct.feiyang** %5, align 8
  %12 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %13 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.drm_display_mode* @drm_mode_duplicate(i32 %14, %struct.TYPE_5__* @feiyang_default_mode)
  store %struct.drm_display_mode* %15, %struct.drm_display_mode** %6, align 8
  %16 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %17 = icmp ne %struct.drm_display_mode* %16, null
  br i1 %17, label %29, label %18

18:                                               ; preds = %1
  %19 = load %struct.feiyang*, %struct.feiyang** %5, align 8
  %20 = getelementptr inbounds %struct.feiyang, %struct.feiyang* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @feiyang_default_mode, i32 0, i32 2), align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @feiyang_default_mode, i32 0, i32 1), align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @feiyang_default_mode, i32 0, i32 0), align 4
  %26 = call i32 @DRM_DEV_ERROR(i32* %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24, i32 %25)
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %35

29:                                               ; preds = %1
  %30 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %31 = call i32 @drm_mode_set_name(%struct.drm_display_mode* %30)
  %32 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %33 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %34 = call i32 @drm_mode_probed_add(%struct.drm_connector* %32, %struct.drm_display_mode* %33)
  store i32 1, i32* %2, align 4
  br label %35

35:                                               ; preds = %29, %18
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.feiyang* @panel_to_feiyang(%struct.drm_panel*) #1

declare dso_local %struct.drm_display_mode* @drm_mode_duplicate(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @drm_mode_set_name(%struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
