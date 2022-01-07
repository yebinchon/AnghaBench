; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6e8aa0.c_s6e8aa0_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6e8aa0.c_s6e8aa0_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_device = type { i32, i32, i32, %struct.device }
%struct.device = type { i32 }
%struct.s6e8aa0 = type { %struct.TYPE_6__, i64, i32, %struct.TYPE_7__*, %struct.device* }
%struct.TYPE_6__ = type { i32*, %struct.device* }
%struct.TYPE_7__ = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MIPI_DSI_FMT_RGB888 = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_VIDEO = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_VIDEO_BURST = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_VIDEO_HFP = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_VIDEO_HBP = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_VIDEO_HSA = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_EOT_PACKET = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_VSYNC_FLUSH = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_VIDEO_AUTO_VERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"vdd3\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"vci\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to get regulators: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"cannot get reset-gpios %ld\0A\00", align 1
@GAMMA_LEVEL_NUM = common dso_local global i64 0, align 8
@s6e8aa0_drm_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipi_dsi_device*)* @s6e8aa0_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s6e8aa0_probe(%struct.mipi_dsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mipi_dsi_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.s6e8aa0*, align 8
  %6 = alloca i32, align 4
  store %struct.mipi_dsi_device* %0, %struct.mipi_dsi_device** %3, align 8
  %7 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %8 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %7, i32 0, i32 3
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.s6e8aa0* @devm_kzalloc(%struct.device* %9, i32 48, i32 %10)
  store %struct.s6e8aa0* %11, %struct.s6e8aa0** %5, align 8
  %12 = load %struct.s6e8aa0*, %struct.s6e8aa0** %5, align 8
  %13 = icmp ne %struct.s6e8aa0* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %134

17:                                               ; preds = %1
  %18 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %19 = load %struct.s6e8aa0*, %struct.s6e8aa0** %5, align 8
  %20 = call i32 @mipi_dsi_set_drvdata(%struct.mipi_dsi_device* %18, %struct.s6e8aa0* %19)
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load %struct.s6e8aa0*, %struct.s6e8aa0** %5, align 8
  %23 = getelementptr inbounds %struct.s6e8aa0, %struct.s6e8aa0* %22, i32 0, i32 4
  store %struct.device* %21, %struct.device** %23, align 8
  %24 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %25 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %24, i32 0, i32 0
  store i32 4, i32* %25, align 4
  %26 = load i32, i32* @MIPI_DSI_FMT_RGB888, align 4
  %27 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %28 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @MIPI_DSI_MODE_VIDEO, align 4
  %30 = load i32, i32* @MIPI_DSI_MODE_VIDEO_BURST, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @MIPI_DSI_MODE_VIDEO_HFP, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @MIPI_DSI_MODE_VIDEO_HBP, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @MIPI_DSI_MODE_VIDEO_HSA, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @MIPI_DSI_MODE_EOT_PACKET, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @MIPI_DSI_MODE_VSYNC_FLUSH, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @MIPI_DSI_MODE_VIDEO_AUTO_VERT, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %45 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.s6e8aa0*, %struct.s6e8aa0** %5, align 8
  %47 = call i32 @s6e8aa0_parse_dt(%struct.s6e8aa0* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %17
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %2, align 4
  br label %134

52:                                               ; preds = %17
  %53 = load %struct.s6e8aa0*, %struct.s6e8aa0** %5, align 8
  %54 = getelementptr inbounds %struct.s6e8aa0, %struct.s6e8aa0* %53, i32 0, i32 3
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %57, align 8
  %58 = load %struct.s6e8aa0*, %struct.s6e8aa0** %5, align 8
  %59 = getelementptr inbounds %struct.s6e8aa0, %struct.s6e8aa0* %58, i32 0, i32 3
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i64 1
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %62, align 8
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = load %struct.s6e8aa0*, %struct.s6e8aa0** %5, align 8
  %65 = getelementptr inbounds %struct.s6e8aa0, %struct.s6e8aa0* %64, i32 0, i32 3
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %66)
  %68 = load %struct.s6e8aa0*, %struct.s6e8aa0** %5, align 8
  %69 = getelementptr inbounds %struct.s6e8aa0, %struct.s6e8aa0* %68, i32 0, i32 3
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = call i32 @devm_regulator_bulk_get(%struct.device* %63, i32 %67, %struct.TYPE_7__* %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %52
  %75 = load %struct.device*, %struct.device** %4, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @dev_err(%struct.device* %75, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %2, align 4
  br label %134

79:                                               ; preds = %52
  %80 = load %struct.device*, %struct.device** %4, align 8
  %81 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %82 = call i32 @devm_gpiod_get(%struct.device* %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %81)
  %83 = load %struct.s6e8aa0*, %struct.s6e8aa0** %5, align 8
  %84 = getelementptr inbounds %struct.s6e8aa0, %struct.s6e8aa0* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  %85 = load %struct.s6e8aa0*, %struct.s6e8aa0** %5, align 8
  %86 = getelementptr inbounds %struct.s6e8aa0, %struct.s6e8aa0* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @IS_ERR(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %79
  %91 = load %struct.device*, %struct.device** %4, align 8
  %92 = load %struct.s6e8aa0*, %struct.s6e8aa0** %5, align 8
  %93 = getelementptr inbounds %struct.s6e8aa0, %struct.s6e8aa0* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @PTR_ERR(i32 %94)
  %96 = call i32 @dev_err(%struct.device* %91, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %95)
  %97 = load %struct.s6e8aa0*, %struct.s6e8aa0** %5, align 8
  %98 = getelementptr inbounds %struct.s6e8aa0, %struct.s6e8aa0* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @PTR_ERR(i32 %99)
  store i32 %100, i32* %2, align 4
  br label %134

101:                                              ; preds = %79
  %102 = load i64, i64* @GAMMA_LEVEL_NUM, align 8
  %103 = sub nsw i64 %102, 1
  %104 = load %struct.s6e8aa0*, %struct.s6e8aa0** %5, align 8
  %105 = getelementptr inbounds %struct.s6e8aa0, %struct.s6e8aa0* %104, i32 0, i32 1
  store i64 %103, i64* %105, align 8
  %106 = load %struct.s6e8aa0*, %struct.s6e8aa0** %5, align 8
  %107 = getelementptr inbounds %struct.s6e8aa0, %struct.s6e8aa0* %106, i32 0, i32 0
  %108 = call i32 @drm_panel_init(%struct.TYPE_6__* %107)
  %109 = load %struct.device*, %struct.device** %4, align 8
  %110 = load %struct.s6e8aa0*, %struct.s6e8aa0** %5, align 8
  %111 = getelementptr inbounds %struct.s6e8aa0, %struct.s6e8aa0* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  store %struct.device* %109, %struct.device** %112, align 8
  %113 = load %struct.s6e8aa0*, %struct.s6e8aa0** %5, align 8
  %114 = getelementptr inbounds %struct.s6e8aa0, %struct.s6e8aa0* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  store i32* @s6e8aa0_drm_funcs, i32** %115, align 8
  %116 = load %struct.s6e8aa0*, %struct.s6e8aa0** %5, align 8
  %117 = getelementptr inbounds %struct.s6e8aa0, %struct.s6e8aa0* %116, i32 0, i32 0
  %118 = call i32 @drm_panel_add(%struct.TYPE_6__* %117)
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %6, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %101
  %122 = load i32, i32* %6, align 4
  store i32 %122, i32* %2, align 4
  br label %134

123:                                              ; preds = %101
  %124 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %125 = call i32 @mipi_dsi_attach(%struct.mipi_dsi_device* %124)
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %6, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  %129 = load %struct.s6e8aa0*, %struct.s6e8aa0** %5, align 8
  %130 = getelementptr inbounds %struct.s6e8aa0, %struct.s6e8aa0* %129, i32 0, i32 0
  %131 = call i32 @drm_panel_remove(%struct.TYPE_6__* %130)
  br label %132

132:                                              ; preds = %128, %123
  %133 = load i32, i32* %6, align 4
  store i32 %133, i32* %2, align 4
  br label %134

134:                                              ; preds = %132, %121, %90, %74, %50, %14
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local %struct.s6e8aa0* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mipi_dsi_set_drvdata(%struct.mipi_dsi_device*, %struct.s6e8aa0*) #1

declare dso_local i32 @s6e8aa0_parse_dt(%struct.s6e8aa0*) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.device*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @drm_panel_init(%struct.TYPE_6__*) #1

declare dso_local i32 @drm_panel_add(%struct.TYPE_6__*) #1

declare dso_local i32 @mipi_dsi_attach(%struct.mipi_dsi_device*) #1

declare dso_local i32 @drm_panel_remove(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
