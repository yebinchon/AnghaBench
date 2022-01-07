; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-truly-nt35597.c_truly_nt35597_unprepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-truly-nt35597.c_truly_nt35597_unprepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { i32 }
%struct.truly_nt35597 = type { i32, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64 }

@MIPI_DCS_SET_DISPLAY_OFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"set_display_off cmd failed ret = %d\0A\00", align 1
@MIPI_DCS_ENTER_SLEEP_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"enter_sleep cmd failed ret = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"power_off failed ret = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @truly_nt35597_unprepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @truly_nt35597_unprepare(%struct.drm_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_panel*, align 8
  %4 = alloca %struct.truly_nt35597*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_panel* %0, %struct.drm_panel** %3, align 8
  %6 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %7 = call %struct.truly_nt35597* @panel_to_ctx(%struct.drm_panel* %6)
  store %struct.truly_nt35597* %7, %struct.truly_nt35597** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.truly_nt35597*, %struct.truly_nt35597** %4, align 8
  %9 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %65

13:                                               ; preds = %1
  %14 = load %struct.truly_nt35597*, %struct.truly_nt35597** %4, align 8
  %15 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %16, i64 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load %struct.truly_nt35597*, %struct.truly_nt35597** %4, align 8
  %21 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %22, i64 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %27 = load i32, i32* @MIPI_DCS_SET_DISPLAY_OFF, align 4
  %28 = call i32 @truly_dcs_write(%struct.drm_panel* %26, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %13
  %32 = load %struct.truly_nt35597*, %struct.truly_nt35597** %4, align 8
  %33 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @DRM_DEV_ERROR(i32 %34, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %31, %13
  %38 = call i32 @msleep(i32 120)
  %39 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %40 = load i32, i32* @MIPI_DCS_ENTER_SLEEP_MODE, align 4
  %41 = call i32 @truly_dcs_write(%struct.drm_panel* %39, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = load %struct.truly_nt35597*, %struct.truly_nt35597** %4, align 8
  %46 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @DRM_DEV_ERROR(i32 %47, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %44, %37
  %51 = load %struct.truly_nt35597*, %struct.truly_nt35597** %4, align 8
  %52 = call i32 @truly_nt35597_power_off(%struct.truly_nt35597* %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load %struct.truly_nt35597*, %struct.truly_nt35597** %4, align 8
  %57 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @DRM_DEV_ERROR(i32 %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %55, %50
  %62 = load %struct.truly_nt35597*, %struct.truly_nt35597** %4, align 8
  %63 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %62, i32 0, i32 0
  store i32 0, i32* %63, align 8
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %61, %12
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.truly_nt35597* @panel_to_ctx(%struct.drm_panel*) #1

declare dso_local i32 @truly_dcs_write(%struct.drm_panel*, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @truly_nt35597_power_off(%struct.truly_nt35597*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
