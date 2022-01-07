; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sharp-lq101r1sx01.c_sharp_panel_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sharp-lq101r1sx01.c_sharp_panel_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { i32 }
%struct.sharp_panel = type { i32, i32, i32, i32, i32 }

@MIPI_DCS_PIXEL_FMT_24BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to exit sleep mode: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to set left-right mode: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"failed to enable command mode: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"failed to set pixel format: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"failed to set up symmetrical split: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"failed to set display on: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @sharp_panel_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sharp_panel_prepare(%struct.drm_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_panel*, align 8
  %4 = alloca %struct.sharp_panel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drm_panel* %0, %struct.drm_panel** %3, align 8
  %7 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %8 = call %struct.sharp_panel* @to_sharp_panel(%struct.drm_panel* %7)
  store %struct.sharp_panel* %8, %struct.sharp_panel** %4, align 8
  %9 = load i32, i32* @MIPI_DCS_PIXEL_FMT_24BIT, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.sharp_panel*, %struct.sharp_panel** %4, align 8
  %11 = getelementptr inbounds %struct.sharp_panel, %struct.sharp_panel* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %117

15:                                               ; preds = %1
  %16 = load %struct.sharp_panel*, %struct.sharp_panel** %4, align 8
  %17 = getelementptr inbounds %struct.sharp_panel, %struct.sharp_panel* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @regulator_enable(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %117

24:                                               ; preds = %15
  %25 = call i32 @msleep(i32 150)
  %26 = load %struct.sharp_panel*, %struct.sharp_panel** %4, align 8
  %27 = getelementptr inbounds %struct.sharp_panel, %struct.sharp_panel* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @mipi_dsi_dcs_exit_sleep_mode(i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %24
  %33 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %34 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %111

38:                                               ; preds = %24
  %39 = load %struct.sharp_panel*, %struct.sharp_panel** %4, align 8
  %40 = call i32 @sharp_panel_write(%struct.sharp_panel* %39, i32 4096, i32 42)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %45 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %111

49:                                               ; preds = %38
  %50 = load %struct.sharp_panel*, %struct.sharp_panel** %4, align 8
  %51 = call i32 @sharp_panel_write(%struct.sharp_panel* %50, i32 4097, i32 1)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %56 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @dev_err(i32 %57, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  br label %111

60:                                               ; preds = %49
  %61 = load %struct.sharp_panel*, %struct.sharp_panel** %4, align 8
  %62 = getelementptr inbounds %struct.sharp_panel, %struct.sharp_panel* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @mipi_dsi_dcs_set_pixel_format(i32 %63, i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %60
  %69 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %70 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @dev_err(i32 %71, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  br label %111

74:                                               ; preds = %60
  %75 = load %struct.sharp_panel*, %struct.sharp_panel** %4, align 8
  %76 = getelementptr inbounds %struct.sharp_panel, %struct.sharp_panel* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.sharp_panel*, %struct.sharp_panel** %4, align 8
  %79 = getelementptr inbounds %struct.sharp_panel, %struct.sharp_panel* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.sharp_panel*, %struct.sharp_panel** %4, align 8
  %82 = getelementptr inbounds %struct.sharp_panel, %struct.sharp_panel* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @sharp_setup_symmetrical_split(i32 %77, i32 %80, i32 %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %74
  %88 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %89 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @dev_err(i32 %90, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %91)
  br label %111

93:                                               ; preds = %74
  %94 = load %struct.sharp_panel*, %struct.sharp_panel** %4, align 8
  %95 = getelementptr inbounds %struct.sharp_panel, %struct.sharp_panel* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @mipi_dsi_dcs_set_display_on(i32 %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %93
  %101 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %102 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @dev_err(i32 %103, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %104)
  br label %111

106:                                              ; preds = %93
  %107 = load %struct.sharp_panel*, %struct.sharp_panel** %4, align 8
  %108 = getelementptr inbounds %struct.sharp_panel, %struct.sharp_panel* %107, i32 0, i32 0
  store i32 1, i32* %108, align 4
  %109 = load %struct.sharp_panel*, %struct.sharp_panel** %4, align 8
  %110 = call i32 @sharp_wait_frames(%struct.sharp_panel* %109, i32 6)
  store i32 0, i32* %2, align 4
  br label %117

111:                                              ; preds = %100, %87, %68, %54, %43, %32
  %112 = load %struct.sharp_panel*, %struct.sharp_panel** %4, align 8
  %113 = getelementptr inbounds %struct.sharp_panel, %struct.sharp_panel* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @regulator_disable(i32 %114)
  %116 = load i32, i32* %6, align 4
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %111, %106, %22, %14
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local %struct.sharp_panel* @to_sharp_panel(%struct.drm_panel*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mipi_dsi_dcs_exit_sleep_mode(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @sharp_panel_write(%struct.sharp_panel*, i32, i32) #1

declare dso_local i32 @mipi_dsi_dcs_set_pixel_format(i32, i32) #1

declare dso_local i32 @sharp_setup_symmetrical_split(i32, i32, i32) #1

declare dso_local i32 @mipi_dsi_dcs_set_display_on(i32) #1

declare dso_local i32 @sharp_wait_frames(%struct.sharp_panel*, i32) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
