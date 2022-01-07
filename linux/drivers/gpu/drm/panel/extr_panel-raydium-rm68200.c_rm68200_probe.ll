; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-raydium-rm68200.c_rm68200_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-raydium-rm68200.c_rm68200_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_device = type { i32, i32, i32, %struct.device }
%struct.device = type { i32 }
%struct.rm68200 = type { %struct.TYPE_4__, %struct.device*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32*, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"cannot get reset GPIO: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"power\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"cannot get regulator: %d\0A\00", align 1
@MIPI_DSI_FMT_RGB888 = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_VIDEO = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_VIDEO_BURST = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_LPM = common dso_local global i32 0, align 4
@rm68200_drm_funcs = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"mipi_dsi_attach() failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipi_dsi_device*)* @rm68200_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rm68200_probe(%struct.mipi_dsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mipi_dsi_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rm68200*, align 8
  %6 = alloca i32, align 4
  store %struct.mipi_dsi_device* %0, %struct.mipi_dsi_device** %3, align 8
  %7 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %8 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %7, i32 0, i32 3
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.rm68200* @devm_kzalloc(%struct.device* %9, i32 40, i32 %10)
  store %struct.rm68200* %11, %struct.rm68200** %5, align 8
  %12 = load %struct.rm68200*, %struct.rm68200** %5, align 8
  %13 = icmp ne %struct.rm68200* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %122

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %20 = call i32 @devm_gpiod_get_optional(%struct.device* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.rm68200*, %struct.rm68200** %5, align 8
  %22 = getelementptr inbounds %struct.rm68200, %struct.rm68200* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 8
  %23 = load %struct.rm68200*, %struct.rm68200** %5, align 8
  %24 = getelementptr inbounds %struct.rm68200, %struct.rm68200* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @IS_ERR(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %17
  %29 = load %struct.rm68200*, %struct.rm68200** %5, align 8
  %30 = getelementptr inbounds %struct.rm68200, %struct.rm68200* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @PTR_ERR(i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @dev_err(%struct.device* %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %2, align 4
  br label %122

37:                                               ; preds = %17
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = call i32 @devm_regulator_get(%struct.device* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %40 = load %struct.rm68200*, %struct.rm68200** %5, align 8
  %41 = getelementptr inbounds %struct.rm68200, %struct.rm68200* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.rm68200*, %struct.rm68200** %5, align 8
  %43 = getelementptr inbounds %struct.rm68200, %struct.rm68200* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @IS_ERR(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %37
  %48 = load %struct.rm68200*, %struct.rm68200** %5, align 8
  %49 = getelementptr inbounds %struct.rm68200, %struct.rm68200* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @PTR_ERR(i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @EPROBE_DEFER, align 4
  %54 = sub nsw i32 0, %53
  %55 = icmp ne i32 %52, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %47
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @dev_err(%struct.device* %57, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %56, %47
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %2, align 4
  br label %122

62:                                               ; preds = %37
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = call i32 @devm_of_find_backlight(%struct.device* %63)
  %65 = load %struct.rm68200*, %struct.rm68200** %5, align 8
  %66 = getelementptr inbounds %struct.rm68200, %struct.rm68200* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load %struct.rm68200*, %struct.rm68200** %5, align 8
  %68 = getelementptr inbounds %struct.rm68200, %struct.rm68200* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @IS_ERR(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %62
  %73 = load %struct.rm68200*, %struct.rm68200** %5, align 8
  %74 = getelementptr inbounds %struct.rm68200, %struct.rm68200* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @PTR_ERR(i32 %75)
  store i32 %76, i32* %2, align 4
  br label %122

77:                                               ; preds = %62
  %78 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %79 = load %struct.rm68200*, %struct.rm68200** %5, align 8
  %80 = call i32 @mipi_dsi_set_drvdata(%struct.mipi_dsi_device* %78, %struct.rm68200* %79)
  %81 = load %struct.device*, %struct.device** %4, align 8
  %82 = load %struct.rm68200*, %struct.rm68200** %5, align 8
  %83 = getelementptr inbounds %struct.rm68200, %struct.rm68200* %82, i32 0, i32 1
  store %struct.device* %81, %struct.device** %83, align 8
  %84 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %85 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %84, i32 0, i32 0
  store i32 2, i32* %85, align 4
  %86 = load i32, i32* @MIPI_DSI_FMT_RGB888, align 4
  %87 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %88 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* @MIPI_DSI_MODE_VIDEO, align 4
  %90 = load i32, i32* @MIPI_DSI_MODE_VIDEO_BURST, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @MIPI_DSI_MODE_LPM, align 4
  %93 = or i32 %91, %92
  %94 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %95 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load %struct.rm68200*, %struct.rm68200** %5, align 8
  %97 = getelementptr inbounds %struct.rm68200, %struct.rm68200* %96, i32 0, i32 0
  %98 = call i32 @drm_panel_init(%struct.TYPE_4__* %97)
  %99 = load %struct.device*, %struct.device** %4, align 8
  %100 = load %struct.rm68200*, %struct.rm68200** %5, align 8
  %101 = getelementptr inbounds %struct.rm68200, %struct.rm68200* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  store %struct.device* %99, %struct.device** %102, align 8
  %103 = load %struct.rm68200*, %struct.rm68200** %5, align 8
  %104 = getelementptr inbounds %struct.rm68200, %struct.rm68200* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  store i32* @rm68200_drm_funcs, i32** %105, align 8
  %106 = load %struct.rm68200*, %struct.rm68200** %5, align 8
  %107 = getelementptr inbounds %struct.rm68200, %struct.rm68200* %106, i32 0, i32 0
  %108 = call i32 @drm_panel_add(%struct.TYPE_4__* %107)
  %109 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %110 = call i32 @mipi_dsi_attach(%struct.mipi_dsi_device* %109)
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %6, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %77
  %114 = load %struct.device*, %struct.device** %4, align 8
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @dev_err(%struct.device* %114, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %115)
  %117 = load %struct.rm68200*, %struct.rm68200** %5, align 8
  %118 = getelementptr inbounds %struct.rm68200, %struct.rm68200* %117, i32 0, i32 0
  %119 = call i32 @drm_panel_remove(%struct.TYPE_4__* %118)
  %120 = load i32, i32* %6, align 4
  store i32 %120, i32* %2, align 4
  br label %122

121:                                              ; preds = %77
  store i32 0, i32* %2, align 4
  br label %122

122:                                              ; preds = %121, %113, %72, %60, %28, %14
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local %struct.rm68200* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i32 @devm_of_find_backlight(%struct.device*) #1

declare dso_local i32 @mipi_dsi_set_drvdata(%struct.mipi_dsi_device*, %struct.rm68200*) #1

declare dso_local i32 @drm_panel_init(%struct.TYPE_4__*) #1

declare dso_local i32 @drm_panel_add(%struct.TYPE_4__*) #1

declare dso_local i32 @mipi_dsi_attach(%struct.mipi_dsi_device*) #1

declare dso_local i32 @drm_panel_remove(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
