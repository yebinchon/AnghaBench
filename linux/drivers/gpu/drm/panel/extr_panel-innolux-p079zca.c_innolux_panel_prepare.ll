; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-innolux-p079zca.c_innolux_panel_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-innolux-p079zca.c_innolux_panel_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { i32 }
%struct.innolux_panel = type { i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.panel_init_cmd* }
%struct.panel_init_cmd = type { i64, i32 }

@.str = private unnamed_addr constant [28 x i8] c"failed to write command %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to send DCS nop: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to exit sleep mode: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"failed to set display on: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @innolux_panel_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @innolux_panel_prepare(%struct.drm_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_panel*, align 8
  %4 = alloca %struct.innolux_panel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.panel_init_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.panel_init_cmd*, align 8
  store %struct.drm_panel* %0, %struct.drm_panel** %3, align 8
  %9 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %10 = call %struct.innolux_panel* @to_innolux_panel(%struct.drm_panel* %9)
  store %struct.innolux_panel* %10, %struct.innolux_panel** %4, align 8
  %11 = load %struct.innolux_panel*, %struct.innolux_panel** %4, align 8
  %12 = getelementptr inbounds %struct.innolux_panel, %struct.innolux_panel* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %148

16:                                               ; preds = %1
  %17 = load %struct.innolux_panel*, %struct.innolux_panel** %4, align 8
  %18 = getelementptr inbounds %struct.innolux_panel, %struct.innolux_panel* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @gpiod_set_value_cansleep(i32 %19, i32 0)
  %21 = load %struct.innolux_panel*, %struct.innolux_panel** %4, align 8
  %22 = getelementptr inbounds %struct.innolux_panel, %struct.innolux_panel* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.innolux_panel*, %struct.innolux_panel** %4, align 8
  %27 = getelementptr inbounds %struct.innolux_panel, %struct.innolux_panel* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @regulator_bulk_enable(i32 %25, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %16
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %148

34:                                               ; preds = %16
  %35 = call i32 @usleep_range(i32 20000, i32 21000)
  %36 = load %struct.innolux_panel*, %struct.innolux_panel** %4, align 8
  %37 = getelementptr inbounds %struct.innolux_panel, %struct.innolux_panel* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @gpiod_set_value_cansleep(i32 %38, i32 1)
  %40 = call i32 @usleep_range(i32 20000, i32 21000)
  %41 = load %struct.innolux_panel*, %struct.innolux_panel** %4, align 8
  %42 = getelementptr inbounds %struct.innolux_panel, %struct.innolux_panel* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load %struct.panel_init_cmd*, %struct.panel_init_cmd** %44, align 8
  %46 = icmp ne %struct.panel_init_cmd* %45, null
  br i1 %46, label %47, label %102

47:                                               ; preds = %34
  %48 = load %struct.innolux_panel*, %struct.innolux_panel** %4, align 8
  %49 = getelementptr inbounds %struct.innolux_panel, %struct.innolux_panel* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load %struct.panel_init_cmd*, %struct.panel_init_cmd** %51, align 8
  store %struct.panel_init_cmd* %52, %struct.panel_init_cmd** %6, align 8
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %98, %47
  %54 = load %struct.panel_init_cmd*, %struct.panel_init_cmd** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.panel_init_cmd, %struct.panel_init_cmd* %54, i64 %56
  %58 = getelementptr inbounds %struct.panel_init_cmd, %struct.panel_init_cmd* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %101

61:                                               ; preds = %53
  %62 = load %struct.panel_init_cmd*, %struct.panel_init_cmd** %6, align 8
  %63 = load i32, i32* %7, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.panel_init_cmd, %struct.panel_init_cmd* %62, i64 %64
  store %struct.panel_init_cmd* %65, %struct.panel_init_cmd** %8, align 8
  %66 = load %struct.innolux_panel*, %struct.innolux_panel** %4, align 8
  %67 = getelementptr inbounds %struct.innolux_panel, %struct.innolux_panel* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.panel_init_cmd*, %struct.panel_init_cmd** %8, align 8
  %70 = getelementptr inbounds %struct.panel_init_cmd, %struct.panel_init_cmd* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.panel_init_cmd*, %struct.panel_init_cmd** %8, align 8
  %73 = getelementptr inbounds %struct.panel_init_cmd, %struct.panel_init_cmd* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @mipi_dsi_generic_write(i32 %68, i32 %71, i64 %74)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %61
  %79 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %80 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @dev_err(i32 %81, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %82)
  br label %133

84:                                               ; preds = %61
  %85 = load %struct.innolux_panel*, %struct.innolux_panel** %4, align 8
  %86 = getelementptr inbounds %struct.innolux_panel, %struct.innolux_panel* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @mipi_dsi_dcs_nop(i32 %87)
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %84
  %92 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %93 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @dev_err(i32 %94, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  br label %133

97:                                               ; preds = %84
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %7, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %53

101:                                              ; preds = %53
  br label %102

102:                                              ; preds = %101, %34
  %103 = load %struct.innolux_panel*, %struct.innolux_panel** %4, align 8
  %104 = getelementptr inbounds %struct.innolux_panel, %struct.innolux_panel* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @mipi_dsi_dcs_exit_sleep_mode(i32 %105)
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* %5, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %102
  %110 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %111 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @DRM_DEV_ERROR(i32 %112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %113)
  br label %133

115:                                              ; preds = %102
  %116 = call i32 @msleep(i32 120)
  %117 = load %struct.innolux_panel*, %struct.innolux_panel** %4, align 8
  %118 = getelementptr inbounds %struct.innolux_panel, %struct.innolux_panel* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @mipi_dsi_dcs_set_display_on(i32 %119)
  store i32 %120, i32* %5, align 4
  %121 = load i32, i32* %5, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %115
  %124 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %125 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %5, align 4
  %128 = call i32 @DRM_DEV_ERROR(i32 %126, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %127)
  br label %133

129:                                              ; preds = %115
  %130 = call i32 @usleep_range(i32 5000, i32 6000)
  %131 = load %struct.innolux_panel*, %struct.innolux_panel** %4, align 8
  %132 = getelementptr inbounds %struct.innolux_panel, %struct.innolux_panel* %131, i32 0, i32 0
  store i32 1, i32* %132, align 8
  store i32 0, i32* %2, align 4
  br label %148

133:                                              ; preds = %123, %109, %91, %78
  %134 = load %struct.innolux_panel*, %struct.innolux_panel** %4, align 8
  %135 = getelementptr inbounds %struct.innolux_panel, %struct.innolux_panel* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @gpiod_set_value_cansleep(i32 %136, i32 0)
  %138 = load %struct.innolux_panel*, %struct.innolux_panel** %4, align 8
  %139 = getelementptr inbounds %struct.innolux_panel, %struct.innolux_panel* %138, i32 0, i32 2
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.innolux_panel*, %struct.innolux_panel** %4, align 8
  %144 = getelementptr inbounds %struct.innolux_panel, %struct.innolux_panel* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @regulator_bulk_disable(i32 %142, i32 %145)
  %147 = load i32, i32* %5, align 4
  store i32 %147, i32* %2, align 4
  br label %148

148:                                              ; preds = %133, %129, %32, %15
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local %struct.innolux_panel* @to_innolux_panel(%struct.drm_panel*) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @mipi_dsi_generic_write(i32, i32, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mipi_dsi_dcs_nop(i32) #1

declare dso_local i32 @mipi_dsi_dcs_exit_sleep_mode(i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mipi_dsi_dcs_set_display_on(i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
