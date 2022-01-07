; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-rocktech-jh057n00900.c_jh057n_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-rocktech-jh057n00900.c_jh057n_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.mipi_dsi_device = type { i32, i32, i32, %struct.device }
%struct.device = type { i32 }
%struct.jh057n = type { %struct.TYPE_5__, i8*, i8*, i8*, %struct.device*, i8* }
%struct.TYPE_5__ = type { i32*, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"cannot get reset gpio\0A\00", align 1
@MIPI_DSI_FMT_RGB888 = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_VIDEO = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_VIDEO_BURST = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_VIDEO_SYNC_PULSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"vcc\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Failed to request vcc regulator: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"iovcc\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Failed to request iovcc regulator: %d\0A\00", align 1
@jh057n_drm_funcs = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"mipi_dsi_attach failed (%d). Is host ready?\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"%ux%u@%u %ubpp dsi %udl - ready\0A\00", align 1
@default_mode = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipi_dsi_device*)* @jh057n_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jh057n_probe(%struct.mipi_dsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mipi_dsi_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.jh057n*, align 8
  %6 = alloca i32, align 4
  store %struct.mipi_dsi_device* %0, %struct.mipi_dsi_device** %3, align 8
  %7 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %8 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %7, i32 0, i32 3
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.jh057n* @devm_kzalloc(%struct.device* %9, i32 56, i32 %10)
  store %struct.jh057n* %11, %struct.jh057n** %5, align 8
  %12 = load %struct.jh057n*, %struct.jh057n** %5, align 8
  %13 = icmp ne %struct.jh057n* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %159

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %20 = call i8* @devm_gpiod_get(%struct.device* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.jh057n*, %struct.jh057n** %5, align 8
  %22 = getelementptr inbounds %struct.jh057n, %struct.jh057n* %21, i32 0, i32 5
  store i8* %20, i8** %22, align 8
  %23 = load %struct.jh057n*, %struct.jh057n** %5, align 8
  %24 = getelementptr inbounds %struct.jh057n, %struct.jh057n* %23, i32 0, i32 5
  %25 = load i8*, i8** %24, align 8
  %26 = call i64 @IS_ERR(i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %17
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.jh057n*, %struct.jh057n** %5, align 8
  %32 = getelementptr inbounds %struct.jh057n, %struct.jh057n* %31, i32 0, i32 5
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @PTR_ERR(i8* %33)
  store i32 %34, i32* %2, align 4
  br label %159

35:                                               ; preds = %17
  %36 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %37 = load %struct.jh057n*, %struct.jh057n** %5, align 8
  %38 = call i32 @mipi_dsi_set_drvdata(%struct.mipi_dsi_device* %36, %struct.jh057n* %37)
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = load %struct.jh057n*, %struct.jh057n** %5, align 8
  %41 = getelementptr inbounds %struct.jh057n, %struct.jh057n* %40, i32 0, i32 4
  store %struct.device* %39, %struct.device** %41, align 8
  %42 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %43 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %42, i32 0, i32 0
  store i32 4, i32* %43, align 4
  %44 = load i32, i32* @MIPI_DSI_FMT_RGB888, align 4
  %45 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %46 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @MIPI_DSI_MODE_VIDEO, align 4
  %48 = load i32, i32* @MIPI_DSI_MODE_VIDEO_BURST, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @MIPI_DSI_MODE_VIDEO_SYNC_PULSE, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %53 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = call i8* @devm_of_find_backlight(%struct.device* %54)
  %56 = load %struct.jh057n*, %struct.jh057n** %5, align 8
  %57 = getelementptr inbounds %struct.jh057n, %struct.jh057n* %56, i32 0, i32 3
  store i8* %55, i8** %57, align 8
  %58 = load %struct.jh057n*, %struct.jh057n** %5, align 8
  %59 = getelementptr inbounds %struct.jh057n, %struct.jh057n* %58, i32 0, i32 3
  %60 = load i8*, i8** %59, align 8
  %61 = call i64 @IS_ERR(i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %35
  %64 = load %struct.jh057n*, %struct.jh057n** %5, align 8
  %65 = getelementptr inbounds %struct.jh057n, %struct.jh057n* %64, i32 0, i32 3
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @PTR_ERR(i8* %66)
  store i32 %67, i32* %2, align 4
  br label %159

68:                                               ; preds = %35
  %69 = load %struct.device*, %struct.device** %4, align 8
  %70 = call i8* @devm_regulator_get(%struct.device* %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %71 = load %struct.jh057n*, %struct.jh057n** %5, align 8
  %72 = getelementptr inbounds %struct.jh057n, %struct.jh057n* %71, i32 0, i32 2
  store i8* %70, i8** %72, align 8
  %73 = load %struct.jh057n*, %struct.jh057n** %5, align 8
  %74 = getelementptr inbounds %struct.jh057n, %struct.jh057n* %73, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  %76 = call i64 @IS_ERR(i8* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %68
  %79 = load %struct.jh057n*, %struct.jh057n** %5, align 8
  %80 = getelementptr inbounds %struct.jh057n, %struct.jh057n* %79, i32 0, i32 2
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @PTR_ERR(i8* %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @EPROBE_DEFER, align 4
  %85 = sub nsw i32 0, %84
  %86 = icmp ne i32 %83, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %78
  %88 = load %struct.device*, %struct.device** %4, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %88, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %87, %78
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %2, align 4
  br label %159

93:                                               ; preds = %68
  %94 = load %struct.device*, %struct.device** %4, align 8
  %95 = call i8* @devm_regulator_get(%struct.device* %94, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %96 = load %struct.jh057n*, %struct.jh057n** %5, align 8
  %97 = getelementptr inbounds %struct.jh057n, %struct.jh057n* %96, i32 0, i32 1
  store i8* %95, i8** %97, align 8
  %98 = load %struct.jh057n*, %struct.jh057n** %5, align 8
  %99 = getelementptr inbounds %struct.jh057n, %struct.jh057n* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = call i64 @IS_ERR(i8* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %118

103:                                              ; preds = %93
  %104 = load %struct.jh057n*, %struct.jh057n** %5, align 8
  %105 = getelementptr inbounds %struct.jh057n, %struct.jh057n* %104, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @PTR_ERR(i8* %106)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @EPROBE_DEFER, align 4
  %110 = sub nsw i32 0, %109
  %111 = icmp ne i32 %108, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %103
  %113 = load %struct.device*, %struct.device** %4, align 8
  %114 = load i32, i32* %6, align 4
  %115 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %113, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %112, %103
  %117 = load i32, i32* %6, align 4
  store i32 %117, i32* %2, align 4
  br label %159

118:                                              ; preds = %93
  %119 = load %struct.jh057n*, %struct.jh057n** %5, align 8
  %120 = getelementptr inbounds %struct.jh057n, %struct.jh057n* %119, i32 0, i32 0
  %121 = call i32 @drm_panel_init(%struct.TYPE_5__* %120)
  %122 = load %struct.device*, %struct.device** %4, align 8
  %123 = load %struct.jh057n*, %struct.jh057n** %5, align 8
  %124 = getelementptr inbounds %struct.jh057n, %struct.jh057n* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 1
  store %struct.device* %122, %struct.device** %125, align 8
  %126 = load %struct.jh057n*, %struct.jh057n** %5, align 8
  %127 = getelementptr inbounds %struct.jh057n, %struct.jh057n* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  store i32* @jh057n_drm_funcs, i32** %128, align 8
  %129 = load %struct.jh057n*, %struct.jh057n** %5, align 8
  %130 = getelementptr inbounds %struct.jh057n, %struct.jh057n* %129, i32 0, i32 0
  %131 = call i32 @drm_panel_add(%struct.TYPE_5__* %130)
  %132 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %133 = call i32 @mipi_dsi_attach(%struct.mipi_dsi_device* %132)
  store i32 %133, i32* %6, align 4
  %134 = load i32, i32* %6, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %118
  %137 = load %struct.device*, %struct.device** %4, align 8
  %138 = load i32, i32* %6, align 4
  %139 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %137, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %138)
  %140 = load %struct.jh057n*, %struct.jh057n** %5, align 8
  %141 = getelementptr inbounds %struct.jh057n, %struct.jh057n* %140, i32 0, i32 0
  %142 = call i32 @drm_panel_remove(%struct.TYPE_5__* %141)
  %143 = load i32, i32* %6, align 4
  store i32 %143, i32* %2, align 4
  br label %159

144:                                              ; preds = %118
  %145 = load %struct.device*, %struct.device** %4, align 8
  %146 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @default_mode, i32 0, i32 2), align 4
  %147 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @default_mode, i32 0, i32 1), align 4
  %148 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @default_mode, i32 0, i32 0), align 4
  %149 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %150 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @mipi_dsi_pixel_format_to_bpp(i32 %151)
  %153 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %154 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @DRM_DEV_INFO(%struct.device* %145, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %146, i32 %147, i32 %148, i32 %152, i32 %155)
  %157 = load %struct.jh057n*, %struct.jh057n** %5, align 8
  %158 = call i32 @jh057n_debugfs_init(%struct.jh057n* %157)
  store i32 0, i32* %2, align 4
  br label %159

159:                                              ; preds = %144, %136, %116, %91, %63, %28, %14
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local %struct.jh057n* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i8* @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @mipi_dsi_set_drvdata(%struct.mipi_dsi_device*, %struct.jh057n*) #1

declare dso_local i8* @devm_of_find_backlight(%struct.device*) #1

declare dso_local i8* @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i32 @drm_panel_init(%struct.TYPE_5__*) #1

declare dso_local i32 @drm_panel_add(%struct.TYPE_5__*) #1

declare dso_local i32 @mipi_dsi_attach(%struct.mipi_dsi_device*) #1

declare dso_local i32 @drm_panel_remove(%struct.TYPE_5__*) #1

declare dso_local i32 @DRM_DEV_INFO(%struct.device*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mipi_dsi_pixel_format_to_bpp(i32) #1

declare dso_local i32 @jh057n_debugfs_init(%struct.jh057n*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
