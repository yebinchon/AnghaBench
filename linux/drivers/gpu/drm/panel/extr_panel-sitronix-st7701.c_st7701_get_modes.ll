; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sitronix-st7701.c_st7701_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sitronix-st7701.c_st7701_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.st7701 = type { %struct.TYPE_5__*, %struct.TYPE_7__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { %struct.drm_display_mode* }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"failed to add mode %ux%ux@%u\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @st7701_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st7701_get_modes(%struct.drm_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_panel*, align 8
  %4 = alloca %struct.st7701*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_panel* %0, %struct.drm_panel** %3, align 8
  %7 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %8 = call %struct.st7701* @panel_to_st7701(%struct.drm_panel* %7)
  store %struct.st7701* %8, %struct.st7701** %4, align 8
  %9 = load %struct.st7701*, %struct.st7701** %4, align 8
  %10 = getelementptr inbounds %struct.st7701, %struct.st7701* %9, i32 0, i32 1
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load %struct.drm_display_mode*, %struct.drm_display_mode** %12, align 8
  store %struct.drm_display_mode* %13, %struct.drm_display_mode** %5, align 8
  %14 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %15 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %18 = call %struct.drm_display_mode* @drm_mode_duplicate(i32 %16, %struct.drm_display_mode* %17)
  store %struct.drm_display_mode* %18, %struct.drm_display_mode** %6, align 8
  %19 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %20 = icmp ne %struct.drm_display_mode* %19, null
  br i1 %20, label %38, label %21

21:                                               ; preds = %1
  %22 = load %struct.st7701*, %struct.st7701** %4, align 8
  %23 = getelementptr inbounds %struct.st7701, %struct.st7701* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %27 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %30 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %33 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @DRM_DEV_ERROR(i32* %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %31, i32 %34)
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %62

38:                                               ; preds = %1
  %39 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %40 = call i32 @drm_mode_set_name(%struct.drm_display_mode* %39)
  %41 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %42 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %41, i32 0, i32 0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %45 = call i32 @drm_mode_probed_add(%struct.TYPE_8__* %43, %struct.drm_display_mode* %44)
  %46 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %47 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %50 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  store i32 %48, i32* %53, align 4
  %54 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %55 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %58 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %57, i32 0, i32 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store i32 %56, i32* %61, align 4
  store i32 1, i32* %2, align 4
  br label %62

62:                                               ; preds = %38, %21
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.st7701* @panel_to_st7701(%struct.drm_panel*) #1

declare dso_local %struct.drm_display_mode* @drm_mode_duplicate(i32, %struct.drm_display_mode*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @drm_mode_set_name(%struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.TYPE_8__*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
