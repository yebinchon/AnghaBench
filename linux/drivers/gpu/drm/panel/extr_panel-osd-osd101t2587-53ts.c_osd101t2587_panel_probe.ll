; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-osd-osd101t2587-53ts.c_osd101t2587_panel_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-osd-osd101t2587-53ts.c_osd101t2587_panel_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_device = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.osd101t2587_panel = type { i32, i32, %struct.mipi_dsi_device* }
%struct.of_device_id = type { i32 }

@osd101t2587_of_match = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@MIPI_DSI_FMT_RGB888 = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_VIDEO = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_VIDEO_BURST = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_VIDEO_SYNC_PULSE = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_EOT_PACKET = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipi_dsi_device*)* @osd101t2587_panel_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @osd101t2587_panel_probe(%struct.mipi_dsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mipi_dsi_device*, align 8
  %4 = alloca %struct.osd101t2587_panel*, align 8
  %5 = alloca %struct.of_device_id*, align 8
  %6 = alloca i32, align 4
  store %struct.mipi_dsi_device* %0, %struct.mipi_dsi_device** %3, align 8
  %7 = load i32, i32* @osd101t2587_of_match, align 4
  %8 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %9 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.of_device_id* @of_match_node(i32 %7, i32 %11)
  store %struct.of_device_id* %12, %struct.of_device_id** %5, align 8
  %13 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %14 = icmp ne %struct.of_device_id* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %71

18:                                               ; preds = %1
  %19 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %20 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %19, i32 0, i32 0
  store i32 4, i32* %20, align 4
  %21 = load i32, i32* @MIPI_DSI_FMT_RGB888, align 4
  %22 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %23 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @MIPI_DSI_MODE_VIDEO, align 4
  %25 = load i32, i32* @MIPI_DSI_MODE_VIDEO_BURST, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @MIPI_DSI_MODE_VIDEO_SYNC_PULSE, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @MIPI_DSI_MODE_EOT_PACKET, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %32 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %34 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %33, i32 0, i32 2
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.osd101t2587_panel* @devm_kzalloc(%struct.TYPE_2__* %34, i32 16, i32 %35)
  store %struct.osd101t2587_panel* %36, %struct.osd101t2587_panel** %4, align 8
  %37 = load %struct.osd101t2587_panel*, %struct.osd101t2587_panel** %4, align 8
  %38 = icmp ne %struct.osd101t2587_panel* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %18
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %71

42:                                               ; preds = %18
  %43 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %44 = load %struct.osd101t2587_panel*, %struct.osd101t2587_panel** %4, align 8
  %45 = call i32 @mipi_dsi_set_drvdata(%struct.mipi_dsi_device* %43, %struct.osd101t2587_panel* %44)
  %46 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %47 = load %struct.osd101t2587_panel*, %struct.osd101t2587_panel** %4, align 8
  %48 = getelementptr inbounds %struct.osd101t2587_panel, %struct.osd101t2587_panel* %47, i32 0, i32 2
  store %struct.mipi_dsi_device* %46, %struct.mipi_dsi_device** %48, align 8
  %49 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %50 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.osd101t2587_panel*, %struct.osd101t2587_panel** %4, align 8
  %53 = getelementptr inbounds %struct.osd101t2587_panel, %struct.osd101t2587_panel* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.osd101t2587_panel*, %struct.osd101t2587_panel** %4, align 8
  %55 = call i32 @osd101t2587_panel_add(%struct.osd101t2587_panel* %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %42
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %2, align 4
  br label %71

60:                                               ; preds = %42
  %61 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %62 = call i32 @mipi_dsi_attach(%struct.mipi_dsi_device* %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load %struct.osd101t2587_panel*, %struct.osd101t2587_panel** %4, align 8
  %67 = getelementptr inbounds %struct.osd101t2587_panel, %struct.osd101t2587_panel* %66, i32 0, i32 0
  %68 = call i32 @drm_panel_remove(i32* %67)
  br label %69

69:                                               ; preds = %65, %60
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %69, %58, %39, %15
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.of_device_id* @of_match_node(i32, i32) #1

declare dso_local %struct.osd101t2587_panel* @devm_kzalloc(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @mipi_dsi_set_drvdata(%struct.mipi_dsi_device*, %struct.osd101t2587_panel*) #1

declare dso_local i32 @osd101t2587_panel_add(%struct.osd101t2587_panel*) #1

declare dso_local i32 @mipi_dsi_attach(%struct.mipi_dsi_device*) #1

declare dso_local i32 @drm_panel_remove(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
