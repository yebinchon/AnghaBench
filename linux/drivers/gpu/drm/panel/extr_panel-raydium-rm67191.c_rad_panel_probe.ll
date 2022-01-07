; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-raydium-rm67191.c_rad_panel_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-raydium-rm67191.c_rad_panel_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_device = type { i32, i32, i32, %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.rad_panel = type { %struct.TYPE_4__, i32, i32, %struct.mipi_dsi_device* }
%struct.TYPE_4__ = type { %struct.device*, i32* }
%struct.backlight_properties = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MIPI_DSI_FMT_RGB888 = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_VIDEO_HSE = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_VIDEO = common dso_local global i32 0, align 4
@MIPI_DSI_CLOCK_NON_CONTINUOUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"video-mode\00", align 1
@MIPI_DSI_MODE_VIDEO_BURST = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_VIDEO_SYNC_PULSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid video mode %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"dsi-lanes\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Failed to get dsi-lanes property (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@BACKLIGHT_RAW = common dso_local global i32 0, align 4
@rad_bl_ops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"Failed to register backlight (%d)\0A\00", align 1
@rad_panel_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipi_dsi_device*)* @rad_panel_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rad_panel_probe(%struct.mipi_dsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mipi_dsi_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.rad_panel*, align 8
  %7 = alloca %struct.backlight_properties, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mipi_dsi_device* %0, %struct.mipi_dsi_device** %3, align 8
  %10 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %11 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %10, i32 0, i32 3
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %5, align 8
  %15 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %16 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %15, i32 0, i32 3
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.rad_panel* @devm_kzalloc(%struct.device* %16, i32 32, i32 %17)
  store %struct.rad_panel* %18, %struct.rad_panel** %6, align 8
  %19 = load %struct.rad_panel*, %struct.rad_panel** %6, align 8
  %20 = icmp ne %struct.rad_panel* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %160

24:                                               ; preds = %1
  %25 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %26 = load %struct.rad_panel*, %struct.rad_panel** %6, align 8
  %27 = call i32 @mipi_dsi_set_drvdata(%struct.mipi_dsi_device* %25, %struct.rad_panel* %26)
  %28 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %29 = load %struct.rad_panel*, %struct.rad_panel** %6, align 8
  %30 = getelementptr inbounds %struct.rad_panel, %struct.rad_panel* %29, i32 0, i32 3
  store %struct.mipi_dsi_device* %28, %struct.mipi_dsi_device** %30, align 8
  %31 = load i32, i32* @MIPI_DSI_FMT_RGB888, align 4
  %32 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %33 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @MIPI_DSI_MODE_VIDEO_HSE, align 4
  %35 = load i32, i32* @MIPI_DSI_MODE_VIDEO, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @MIPI_DSI_CLOCK_NON_CONTINUOUS, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %40 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.device_node*, %struct.device_node** %5, align 8
  %42 = call i32 @of_property_read_u32(%struct.device_node* %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %9)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %65, label %45

45:                                               ; preds = %24
  %46 = load i32, i32* %9, align 4
  switch i32 %46, label %60 [
    i32 0, label %47
    i32 1, label %53
    i32 2, label %54
  ]

47:                                               ; preds = %45
  %48 = load i32, i32* @MIPI_DSI_MODE_VIDEO_BURST, align 4
  %49 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %50 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  br label %64

53:                                               ; preds = %45
  br label %64

54:                                               ; preds = %45
  %55 = load i32, i32* @MIPI_DSI_MODE_VIDEO_SYNC_PULSE, align 4
  %56 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %57 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  br label %64

60:                                               ; preds = %45
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @dev_warn(%struct.device* %61, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %60, %54, %53, %47
  br label %65

65:                                               ; preds = %64, %24
  %66 = load %struct.device_node*, %struct.device_node** %5, align 8
  %67 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %68 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %67, i32 0, i32 1
  %69 = call i32 @of_property_read_u32(%struct.device_node* %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %65
  %73 = load %struct.device*, %struct.device** %4, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @dev_err(%struct.device* %73, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %2, align 4
  br label %160

77:                                               ; preds = %65
  %78 = load %struct.device*, %struct.device** %4, align 8
  %79 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %80 = call i32 @devm_gpiod_get_optional(%struct.device* %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %79)
  %81 = load %struct.rad_panel*, %struct.rad_panel** %6, align 8
  %82 = getelementptr inbounds %struct.rad_panel, %struct.rad_panel* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 4
  %83 = load %struct.rad_panel*, %struct.rad_panel** %6, align 8
  %84 = getelementptr inbounds %struct.rad_panel, %struct.rad_panel* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @IS_ERR(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %77
  %89 = load %struct.rad_panel*, %struct.rad_panel** %6, align 8
  %90 = getelementptr inbounds %struct.rad_panel, %struct.rad_panel* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @PTR_ERR(i32 %91)
  store i32 %92, i32* %2, align 4
  br label %160

93:                                               ; preds = %77
  %94 = call i32 @memset(%struct.backlight_properties* %7, i32 0, i32 12)
  %95 = load i32, i32* @BACKLIGHT_RAW, align 4
  %96 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %7, i32 0, i32 2
  store i32 %95, i32* %96, align 4
  %97 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %7, i32 0, i32 0
  store i32 255, i32* %97, align 4
  %98 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %7, i32 0, i32 1
  store i32 255, i32* %98, align 4
  %99 = load %struct.device*, %struct.device** %4, align 8
  %100 = load %struct.device*, %struct.device** %4, align 8
  %101 = call i32 @dev_name(%struct.device* %100)
  %102 = load %struct.device*, %struct.device** %4, align 8
  %103 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %104 = call i32 @devm_backlight_device_register(%struct.device* %99, i32 %101, %struct.device* %102, %struct.mipi_dsi_device* %103, i32* @rad_bl_ops, %struct.backlight_properties* %7)
  %105 = load %struct.rad_panel*, %struct.rad_panel** %6, align 8
  %106 = getelementptr inbounds %struct.rad_panel, %struct.rad_panel* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 8
  %107 = load %struct.rad_panel*, %struct.rad_panel** %6, align 8
  %108 = getelementptr inbounds %struct.rad_panel, %struct.rad_panel* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @IS_ERR(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %93
  %113 = load %struct.rad_panel*, %struct.rad_panel** %6, align 8
  %114 = getelementptr inbounds %struct.rad_panel, %struct.rad_panel* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @PTR_ERR(i32 %115)
  store i32 %116, i32* %8, align 4
  %117 = load %struct.device*, %struct.device** %4, align 8
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @dev_err(%struct.device* %117, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* %8, align 4
  store i32 %120, i32* %2, align 4
  br label %160

121:                                              ; preds = %93
  %122 = load %struct.rad_panel*, %struct.rad_panel** %6, align 8
  %123 = call i32 @rad_init_regulators(%struct.rad_panel* %122)
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %121
  %127 = load i32, i32* %8, align 4
  store i32 %127, i32* %2, align 4
  br label %160

128:                                              ; preds = %121
  %129 = load %struct.rad_panel*, %struct.rad_panel** %6, align 8
  %130 = getelementptr inbounds %struct.rad_panel, %struct.rad_panel* %129, i32 0, i32 0
  %131 = call i32 @drm_panel_init(%struct.TYPE_4__* %130)
  %132 = load %struct.rad_panel*, %struct.rad_panel** %6, align 8
  %133 = getelementptr inbounds %struct.rad_panel, %struct.rad_panel* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  store i32* @rad_panel_funcs, i32** %134, align 8
  %135 = load %struct.device*, %struct.device** %4, align 8
  %136 = load %struct.rad_panel*, %struct.rad_panel** %6, align 8
  %137 = getelementptr inbounds %struct.rad_panel, %struct.rad_panel* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  store %struct.device* %135, %struct.device** %138, align 8
  %139 = load %struct.device*, %struct.device** %4, align 8
  %140 = load %struct.rad_panel*, %struct.rad_panel** %6, align 8
  %141 = call i32 @dev_set_drvdata(%struct.device* %139, %struct.rad_panel* %140)
  %142 = load %struct.rad_panel*, %struct.rad_panel** %6, align 8
  %143 = getelementptr inbounds %struct.rad_panel, %struct.rad_panel* %142, i32 0, i32 0
  %144 = call i32 @drm_panel_add(%struct.TYPE_4__* %143)
  store i32 %144, i32* %8, align 4
  %145 = load i32, i32* %8, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %128
  %148 = load i32, i32* %8, align 4
  store i32 %148, i32* %2, align 4
  br label %160

149:                                              ; preds = %128
  %150 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %151 = call i32 @mipi_dsi_attach(%struct.mipi_dsi_device* %150)
  store i32 %151, i32* %8, align 4
  %152 = load i32, i32* %8, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %149
  %155 = load %struct.rad_panel*, %struct.rad_panel** %6, align 8
  %156 = getelementptr inbounds %struct.rad_panel, %struct.rad_panel* %155, i32 0, i32 0
  %157 = call i32 @drm_panel_remove(%struct.TYPE_4__* %156)
  br label %158

158:                                              ; preds = %154, %149
  %159 = load i32, i32* %8, align 4
  store i32 %159, i32* %2, align 4
  br label %160

160:                                              ; preds = %158, %147, %126, %112, %88, %72, %21
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local %struct.rad_panel* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mipi_dsi_set_drvdata(%struct.mipi_dsi_device*, %struct.rad_panel*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @memset(%struct.backlight_properties*, i32, i32) #1

declare dso_local i32 @devm_backlight_device_register(%struct.device*, i32, %struct.device*, %struct.mipi_dsi_device*, i32*, %struct.backlight_properties*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @rad_init_regulators(%struct.rad_panel*) #1

declare dso_local i32 @drm_panel_init(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.rad_panel*) #1

declare dso_local i32 @drm_panel_add(%struct.TYPE_4__*) #1

declare dso_local i32 @mipi_dsi_attach(%struct.mipi_dsi_device*) #1

declare dso_local i32 @drm_panel_remove(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
