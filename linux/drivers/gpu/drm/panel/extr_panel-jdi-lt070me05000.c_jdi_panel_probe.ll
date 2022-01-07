; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-jdi-lt070me05000.c_jdi_panel_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-jdi-lt070me05000.c_jdi_panel_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_device = type { i32, i32, i32, i32 }
%struct.jdi_panel = type { %struct.mipi_dsi_device* }

@MIPI_DSI_FMT_RGB888 = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_VIDEO_HSE = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_VIDEO = common dso_local global i32 0, align 4
@MIPI_DSI_CLOCK_NON_CONTINUOUS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipi_dsi_device*)* @jdi_panel_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jdi_panel_probe(%struct.mipi_dsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mipi_dsi_device*, align 8
  %4 = alloca %struct.jdi_panel*, align 8
  %5 = alloca i32, align 4
  store %struct.mipi_dsi_device* %0, %struct.mipi_dsi_device** %3, align 8
  %6 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %7 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %6, i32 0, i32 0
  store i32 4, i32* %7, align 4
  %8 = load i32, i32* @MIPI_DSI_FMT_RGB888, align 4
  %9 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %10 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @MIPI_DSI_MODE_VIDEO_HSE, align 4
  %12 = load i32, i32* @MIPI_DSI_MODE_VIDEO, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @MIPI_DSI_CLOCK_NON_CONTINUOUS, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %17 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %19 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %18, i32 0, i32 2
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.jdi_panel* @devm_kzalloc(i32* %19, i32 8, i32 %20)
  store %struct.jdi_panel* %21, %struct.jdi_panel** %4, align 8
  %22 = load %struct.jdi_panel*, %struct.jdi_panel** %4, align 8
  %23 = icmp ne %struct.jdi_panel* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %43

27:                                               ; preds = %1
  %28 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %29 = load %struct.jdi_panel*, %struct.jdi_panel** %4, align 8
  %30 = call i32 @mipi_dsi_set_drvdata(%struct.mipi_dsi_device* %28, %struct.jdi_panel* %29)
  %31 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %32 = load %struct.jdi_panel*, %struct.jdi_panel** %4, align 8
  %33 = getelementptr inbounds %struct.jdi_panel, %struct.jdi_panel* %32, i32 0, i32 0
  store %struct.mipi_dsi_device* %31, %struct.mipi_dsi_device** %33, align 8
  %34 = load %struct.jdi_panel*, %struct.jdi_panel** %4, align 8
  %35 = call i32 @jdi_panel_add(%struct.jdi_panel* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %43

40:                                               ; preds = %27
  %41 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %42 = call i32 @mipi_dsi_attach(%struct.mipi_dsi_device* %41)
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %40, %38, %24
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.jdi_panel* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @mipi_dsi_set_drvdata(%struct.mipi_dsi_device*, %struct.jdi_panel*) #1

declare dso_local i32 @jdi_panel_add(%struct.jdi_panel*) #1

declare dso_local i32 @mipi_dsi_attach(%struct.mipi_dsi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
