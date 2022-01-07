; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-truly-nt35597.c_truly_nt35597_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-truly-nt35597.c_truly_nt35597_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { i32 }
%struct.truly_nt35597 = type { i32, i32, %struct.nt35597_config*, %struct.TYPE_2__** }
%struct.nt35597_config = type { i32, %struct.cmd_set* }
%struct.cmd_set = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@MIPI_DSI_MODE_LPM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"cmd set tx failed i = %d ret = %d\0A\00", align 1
@MIPI_DCS_EXIT_SLEEP_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"exit_sleep_mode cmd failed ret = %d\0A\00", align 1
@MIPI_DCS_SET_DISPLAY_ON = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"set_display_on cmd failed ret = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"power_off failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @truly_nt35597_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @truly_nt35597_prepare(%struct.drm_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_panel*, align 8
  %4 = alloca %struct.truly_nt35597*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cmd_set*, align 8
  %8 = alloca %struct.nt35597_config*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_panel* %0, %struct.drm_panel** %3, align 8
  %10 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %11 = call %struct.truly_nt35597* @panel_to_ctx(%struct.drm_panel* %10)
  store %struct.truly_nt35597* %11, %struct.truly_nt35597** %4, align 8
  %12 = load %struct.truly_nt35597*, %struct.truly_nt35597** %4, align 8
  %13 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %124

17:                                               ; preds = %1
  %18 = load %struct.truly_nt35597*, %struct.truly_nt35597** %4, align 8
  %19 = call i32 @truly_35597_power_on(%struct.truly_nt35597* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %124

24:                                               ; preds = %17
  %25 = load i32, i32* @MIPI_DSI_MODE_LPM, align 4
  %26 = load %struct.truly_nt35597*, %struct.truly_nt35597** %4, align 8
  %27 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %26, i32 0, i32 3
  %28 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %28, i64 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %25
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* @MIPI_DSI_MODE_LPM, align 4
  %35 = load %struct.truly_nt35597*, %struct.truly_nt35597** %4, align 8
  %36 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %35, i32 0, i32 3
  %37 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %37, i64 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %34
  store i32 %42, i32* %40, align 4
  %43 = load %struct.truly_nt35597*, %struct.truly_nt35597** %4, align 8
  %44 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %43, i32 0, i32 2
  %45 = load %struct.nt35597_config*, %struct.nt35597_config** %44, align 8
  store %struct.nt35597_config* %45, %struct.nt35597_config** %8, align 8
  %46 = load %struct.nt35597_config*, %struct.nt35597_config** %8, align 8
  %47 = getelementptr inbounds %struct.nt35597_config, %struct.nt35597_config* %46, i32 0, i32 1
  %48 = load %struct.cmd_set*, %struct.cmd_set** %47, align 8
  store %struct.cmd_set* %48, %struct.cmd_set** %7, align 8
  %49 = load %struct.nt35597_config*, %struct.nt35597_config** %8, align 8
  %50 = getelementptr inbounds %struct.nt35597_config, %struct.nt35597_config* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %81, %24
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %84

56:                                               ; preds = %52
  %57 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %58 = load %struct.cmd_set*, %struct.cmd_set** %7, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.cmd_set, %struct.cmd_set* %58, i64 %60
  %62 = getelementptr inbounds %struct.cmd_set, %struct.cmd_set* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.cmd_set*, %struct.cmd_set** %7, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.cmd_set, %struct.cmd_set* %64, i64 %66
  %68 = getelementptr inbounds %struct.cmd_set, %struct.cmd_set* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @truly_dcs_write_buf(%struct.drm_panel* %57, i32 %63, i32 %69)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %56
  %74 = load %struct.truly_nt35597*, %struct.truly_nt35597** %4, align 8
  %75 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %76, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %78)
  br label %113

80:                                               ; preds = %56
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %52

84:                                               ; preds = %52
  %85 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %86 = load i32, i32* @MIPI_DCS_EXIT_SLEEP_MODE, align 4
  %87 = call i32 @truly_dcs_write(%struct.drm_panel* %85, i32 %86)
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %84
  %91 = load %struct.truly_nt35597*, %struct.truly_nt35597** %4, align 8
  %92 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %5, align 4
  %95 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %93, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  br label %113

96:                                               ; preds = %84
  %97 = call i32 @msleep(i32 120)
  %98 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %99 = load i32, i32* @MIPI_DCS_SET_DISPLAY_ON, align 4
  %100 = call i32 @truly_dcs_write(%struct.drm_panel* %98, i32 %99)
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %96
  %104 = load %struct.truly_nt35597*, %struct.truly_nt35597** %4, align 8
  %105 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %5, align 4
  %108 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %106, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %107)
  br label %113

109:                                              ; preds = %96
  %110 = call i32 @msleep(i32 120)
  %111 = load %struct.truly_nt35597*, %struct.truly_nt35597** %4, align 8
  %112 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %111, i32 0, i32 0
  store i32 1, i32* %112, align 8
  store i32 0, i32* %2, align 4
  br label %124

113:                                              ; preds = %103, %90, %73
  %114 = load %struct.truly_nt35597*, %struct.truly_nt35597** %4, align 8
  %115 = call i64 @truly_nt35597_power_off(%struct.truly_nt35597* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %113
  %118 = load %struct.truly_nt35597*, %struct.truly_nt35597** %4, align 8
  %119 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %120, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %122

122:                                              ; preds = %117, %113
  %123 = load i32, i32* %5, align 4
  store i32 %123, i32* %2, align 4
  br label %124

124:                                              ; preds = %122, %109, %22, %16
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local %struct.truly_nt35597* @panel_to_ctx(%struct.drm_panel*) #1

declare dso_local i32 @truly_35597_power_on(%struct.truly_nt35597*) #1

declare dso_local i32 @truly_dcs_write_buf(%struct.drm_panel*, i32, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, ...) #1

declare dso_local i32 @truly_dcs_write(%struct.drm_panel*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @truly_nt35597_power_off(%struct.truly_nt35597*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
