; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-kingdisplay-kd097d04.c_kingdisplay_panel_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-kingdisplay-kd097d04.c_kingdisplay_panel_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { i32 }
%struct.kingdisplay_panel = type { i32, i32, i32, i32 }

@init_code = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"failed write init cmds: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to exit sleep mode: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to set display on: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"failed to disable regulator: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @kingdisplay_panel_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kingdisplay_panel_prepare(%struct.drm_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_panel*, align 8
  %4 = alloca %struct.kingdisplay_panel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_panel* %0, %struct.drm_panel** %3, align 8
  %8 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %9 = call %struct.kingdisplay_panel* @to_kingdisplay_panel(%struct.drm_panel* %8)
  store %struct.kingdisplay_panel* %9, %struct.kingdisplay_panel** %4, align 8
  %10 = load %struct.kingdisplay_panel*, %struct.kingdisplay_panel** %4, align 8
  %11 = getelementptr inbounds %struct.kingdisplay_panel, %struct.kingdisplay_panel* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %111

15:                                               ; preds = %1
  %16 = load %struct.kingdisplay_panel*, %struct.kingdisplay_panel** %4, align 8
  %17 = getelementptr inbounds %struct.kingdisplay_panel, %struct.kingdisplay_panel* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @gpiod_set_value_cansleep(i32 %18, i32 0)
  %20 = load %struct.kingdisplay_panel*, %struct.kingdisplay_panel** %4, align 8
  %21 = getelementptr inbounds %struct.kingdisplay_panel, %struct.kingdisplay_panel* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @regulator_enable(i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %15
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %2, align 4
  br label %111

28:                                               ; preds = %15
  %29 = call i32 @usleep_range(i32 15000, i32 16000)
  %30 = load %struct.kingdisplay_panel*, %struct.kingdisplay_panel** %4, align 8
  %31 = getelementptr inbounds %struct.kingdisplay_panel, %struct.kingdisplay_panel* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @gpiod_set_value_cansleep(i32 %32, i32 1)
  %34 = call i32 @usleep_range(i32 15000, i32 16000)
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %58, %28
  %36 = load i32, i32* %7, align 4
  %37 = load i32*, i32** @init_code, align 8
  %38 = call i32 @ARRAY_SIZE(i32* %37)
  %39 = icmp ult i32 %36, %38
  br i1 %39, label %40, label %61

40:                                               ; preds = %35
  %41 = load %struct.kingdisplay_panel*, %struct.kingdisplay_panel** %4, align 8
  %42 = getelementptr inbounds %struct.kingdisplay_panel, %struct.kingdisplay_panel* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** @init_code, align 8
  %45 = load i32, i32* %7, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = call i32 @mipi_dsi_generic_write(i32 %43, i32* %47, i32 4)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %40
  %52 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %53 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @DRM_DEV_ERROR(i32 %54, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %92

57:                                               ; preds = %40
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %7, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %35

61:                                               ; preds = %35
  %62 = load %struct.kingdisplay_panel*, %struct.kingdisplay_panel** %4, align 8
  %63 = getelementptr inbounds %struct.kingdisplay_panel, %struct.kingdisplay_panel* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @mipi_dsi_dcs_exit_sleep_mode(i32 %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %61
  %69 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %70 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @DRM_DEV_ERROR(i32 %71, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  br label %92

74:                                               ; preds = %61
  %75 = call i32 @msleep(i32 120)
  %76 = load %struct.kingdisplay_panel*, %struct.kingdisplay_panel** %4, align 8
  %77 = getelementptr inbounds %struct.kingdisplay_panel, %struct.kingdisplay_panel* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @mipi_dsi_dcs_set_display_on(i32 %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %74
  %83 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %84 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @DRM_DEV_ERROR(i32 %85, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  br label %92

88:                                               ; preds = %74
  %89 = call i32 @usleep_range(i32 10000, i32 11000)
  %90 = load %struct.kingdisplay_panel*, %struct.kingdisplay_panel** %4, align 8
  %91 = getelementptr inbounds %struct.kingdisplay_panel, %struct.kingdisplay_panel* %90, i32 0, i32 0
  store i32 1, i32* %91, align 4
  store i32 0, i32* %2, align 4
  br label %111

92:                                               ; preds = %82, %68, %51
  %93 = load %struct.kingdisplay_panel*, %struct.kingdisplay_panel** %4, align 8
  %94 = getelementptr inbounds %struct.kingdisplay_panel, %struct.kingdisplay_panel* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @gpiod_set_value_cansleep(i32 %95, i32 0)
  %97 = load %struct.kingdisplay_panel*, %struct.kingdisplay_panel** %4, align 8
  %98 = getelementptr inbounds %struct.kingdisplay_panel, %struct.kingdisplay_panel* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @regulator_disable(i32 %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %92
  %104 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %105 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @DRM_DEV_ERROR(i32 %106, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %103, %92
  %110 = load i32, i32* %5, align 4
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %109, %88, %26, %14
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local %struct.kingdisplay_panel* @to_kingdisplay_panel(%struct.drm_panel*) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @mipi_dsi_generic_write(i32, i32*, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

declare dso_local i32 @mipi_dsi_dcs_exit_sleep_mode(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mipi_dsi_dcs_set_display_on(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
