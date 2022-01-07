; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6d16d0.c_s6d16d0_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6d16d0.c_s6d16d0_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_device = type { i32, i32, i32, i32, i32, %struct.device }
%struct.device = type { i32 }
%struct.s6d16d0 = type { %struct.TYPE_4__, i32, i32, %struct.device* }
%struct.TYPE_4__ = type { i32*, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MIPI_DSI_FMT_RGB888 = common dso_local global i32 0, align 4
@MIPI_DSI_CLOCK_NON_CONTINUOUS = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_EOT_PACKET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"vdd1\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to request GPIO (%d)\0A\00", align 1
@s6d16d0_drm_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipi_dsi_device*)* @s6d16d0_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s6d16d0_probe(%struct.mipi_dsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mipi_dsi_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.s6d16d0*, align 8
  %6 = alloca i32, align 4
  store %struct.mipi_dsi_device* %0, %struct.mipi_dsi_device** %3, align 8
  %7 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %8 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %7, i32 0, i32 5
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.s6d16d0* @devm_kzalloc(%struct.device* %9, i32 32, i32 %10)
  store %struct.s6d16d0* %11, %struct.s6d16d0** %5, align 8
  %12 = load %struct.s6d16d0*, %struct.s6d16d0** %5, align 8
  %13 = icmp ne %struct.s6d16d0* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %107

17:                                               ; preds = %1
  %18 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %19 = load %struct.s6d16d0*, %struct.s6d16d0** %5, align 8
  %20 = call i32 @mipi_dsi_set_drvdata(%struct.mipi_dsi_device* %18, %struct.s6d16d0* %19)
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load %struct.s6d16d0*, %struct.s6d16d0** %5, align 8
  %23 = getelementptr inbounds %struct.s6d16d0, %struct.s6d16d0* %22, i32 0, i32 3
  store %struct.device* %21, %struct.device** %23, align 8
  %24 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %25 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %24, i32 0, i32 0
  store i32 2, i32* %25, align 4
  %26 = load i32, i32* @MIPI_DSI_FMT_RGB888, align 4
  %27 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %28 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 4
  %29 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %30 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %29, i32 0, i32 1
  store i32 420160000, i32* %30, align 4
  %31 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %32 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %31, i32 0, i32 2
  store i32 19200000, i32* %32, align 4
  %33 = load i32, i32* @MIPI_DSI_CLOCK_NON_CONTINUOUS, align 4
  %34 = load i32, i32* @MIPI_DSI_MODE_EOT_PACKET, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %37 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = call i32 @devm_regulator_get(%struct.device* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.s6d16d0*, %struct.s6d16d0** %5, align 8
  %41 = getelementptr inbounds %struct.s6d16d0, %struct.s6d16d0* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load %struct.s6d16d0*, %struct.s6d16d0** %5, align 8
  %43 = getelementptr inbounds %struct.s6d16d0, %struct.s6d16d0* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @IS_ERR(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %17
  %48 = load %struct.s6d16d0*, %struct.s6d16d0** %5, align 8
  %49 = getelementptr inbounds %struct.s6d16d0, %struct.s6d16d0* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @PTR_ERR(i32 %50)
  store i32 %51, i32* %2, align 4
  br label %107

52:                                               ; preds = %17
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %55 = call i32 @devm_gpiod_get_optional(%struct.device* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load %struct.s6d16d0*, %struct.s6d16d0** %5, align 8
  %57 = getelementptr inbounds %struct.s6d16d0, %struct.s6d16d0* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load %struct.s6d16d0*, %struct.s6d16d0** %5, align 8
  %59 = getelementptr inbounds %struct.s6d16d0, %struct.s6d16d0* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @IS_ERR(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %52
  %64 = load %struct.s6d16d0*, %struct.s6d16d0** %5, align 8
  %65 = getelementptr inbounds %struct.s6d16d0, %struct.s6d16d0* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @PTR_ERR(i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @EPROBE_DEFER, align 4
  %70 = sub nsw i32 0, %69
  %71 = icmp ne i32 %68, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %63
  %73 = load %struct.device*, %struct.device** %4, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @DRM_DEV_ERROR(%struct.device* %73, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %72, %63
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %2, align 4
  br label %107

78:                                               ; preds = %52
  %79 = load %struct.s6d16d0*, %struct.s6d16d0** %5, align 8
  %80 = getelementptr inbounds %struct.s6d16d0, %struct.s6d16d0* %79, i32 0, i32 0
  %81 = call i32 @drm_panel_init(%struct.TYPE_4__* %80)
  %82 = load %struct.device*, %struct.device** %4, align 8
  %83 = load %struct.s6d16d0*, %struct.s6d16d0** %5, align 8
  %84 = getelementptr inbounds %struct.s6d16d0, %struct.s6d16d0* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  store %struct.device* %82, %struct.device** %85, align 8
  %86 = load %struct.s6d16d0*, %struct.s6d16d0** %5, align 8
  %87 = getelementptr inbounds %struct.s6d16d0, %struct.s6d16d0* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  store i32* @s6d16d0_drm_funcs, i32** %88, align 8
  %89 = load %struct.s6d16d0*, %struct.s6d16d0** %5, align 8
  %90 = getelementptr inbounds %struct.s6d16d0, %struct.s6d16d0* %89, i32 0, i32 0
  %91 = call i32 @drm_panel_add(%struct.TYPE_4__* %90)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %78
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* %2, align 4
  br label %107

96:                                               ; preds = %78
  %97 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %98 = call i32 @mipi_dsi_attach(%struct.mipi_dsi_device* %97)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load %struct.s6d16d0*, %struct.s6d16d0** %5, align 8
  %103 = getelementptr inbounds %struct.s6d16d0, %struct.s6d16d0* %102, i32 0, i32 0
  %104 = call i32 @drm_panel_remove(%struct.TYPE_4__* %103)
  br label %105

105:                                              ; preds = %101, %96
  %106 = load i32, i32* %6, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %105, %94, %76, %47, %14
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local %struct.s6d16d0* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mipi_dsi_set_drvdata(%struct.mipi_dsi_device*, %struct.s6d16d0*) #1

declare dso_local i32 @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*, i32) #1

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
