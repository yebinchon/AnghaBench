; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-innolux-p079zca.c_innolux_panel_unprepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-innolux-p079zca.c_innolux_panel_unprepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { i32 }
%struct.innolux_panel = type { i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i64, i64 }

@.str = private unnamed_addr constant [31 x i8] c"failed to set display off: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to enter sleep mode: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @innolux_panel_unprepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @innolux_panel_unprepare(%struct.drm_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_panel*, align 8
  %4 = alloca %struct.innolux_panel*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_panel* %0, %struct.drm_panel** %3, align 8
  %6 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %7 = call %struct.innolux_panel* @to_innolux_panel(%struct.drm_panel* %6)
  store %struct.innolux_panel* %7, %struct.innolux_panel** %4, align 8
  %8 = load %struct.innolux_panel*, %struct.innolux_panel** %4, align 8
  %9 = getelementptr inbounds %struct.innolux_panel, %struct.innolux_panel* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %89

13:                                               ; preds = %1
  %14 = load %struct.innolux_panel*, %struct.innolux_panel** %4, align 8
  %15 = getelementptr inbounds %struct.innolux_panel, %struct.innolux_panel* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @mipi_dsi_dcs_set_display_off(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %13
  %21 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %22 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @DRM_DEV_ERROR(i32 %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %20, %13
  %27 = load %struct.innolux_panel*, %struct.innolux_panel** %4, align 8
  %28 = getelementptr inbounds %struct.innolux_panel, %struct.innolux_panel* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @mipi_dsi_dcs_enter_sleep_mode(i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %26
  %34 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %35 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @DRM_DEV_ERROR(i32 %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %89

40:                                               ; preds = %26
  %41 = load %struct.innolux_panel*, %struct.innolux_panel** %4, align 8
  %42 = getelementptr inbounds %struct.innolux_panel, %struct.innolux_panel* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %40
  %48 = load %struct.innolux_panel*, %struct.innolux_panel** %4, align 8
  %49 = getelementptr inbounds %struct.innolux_panel, %struct.innolux_panel* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @msleep(i64 %52)
  br label %54

54:                                               ; preds = %47, %40
  %55 = load %struct.innolux_panel*, %struct.innolux_panel** %4, align 8
  %56 = getelementptr inbounds %struct.innolux_panel, %struct.innolux_panel* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @gpiod_set_value_cansleep(i32 %57, i32 0)
  %59 = load %struct.innolux_panel*, %struct.innolux_panel** %4, align 8
  %60 = getelementptr inbounds %struct.innolux_panel, %struct.innolux_panel* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %54
  %66 = load %struct.innolux_panel*, %struct.innolux_panel** %4, align 8
  %67 = getelementptr inbounds %struct.innolux_panel, %struct.innolux_panel* %66, i32 0, i32 2
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @msleep(i64 %70)
  br label %72

72:                                               ; preds = %65, %54
  %73 = load %struct.innolux_panel*, %struct.innolux_panel** %4, align 8
  %74 = getelementptr inbounds %struct.innolux_panel, %struct.innolux_panel* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.innolux_panel*, %struct.innolux_panel** %4, align 8
  %79 = getelementptr inbounds %struct.innolux_panel, %struct.innolux_panel* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @regulator_bulk_disable(i32 %77, i32 %80)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %72
  %85 = load i32, i32* %5, align 4
  store i32 %85, i32* %2, align 4
  br label %89

86:                                               ; preds = %72
  %87 = load %struct.innolux_panel*, %struct.innolux_panel** %4, align 8
  %88 = getelementptr inbounds %struct.innolux_panel, %struct.innolux_panel* %87, i32 0, i32 0
  store i32 0, i32* %88, align 8
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %86, %84, %33, %12
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.innolux_panel* @to_innolux_panel(%struct.drm_panel*) #1

declare dso_local i32 @mipi_dsi_dcs_set_display_off(i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

declare dso_local i32 @mipi_dsi_dcs_enter_sleep_mode(i32) #1

declare dso_local i32 @msleep(i64) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
